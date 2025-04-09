// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for LinkageType
enum LinkageTypeEnum {
  /// source
  source,

  /// alternate
  alternate,

  /// historical
  historical,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case LinkageTypeEnum.source:
        return 'source';
      case LinkageTypeEnum.alternate:
        return 'alternate';
      case LinkageTypeEnum.historical:
        return 'historical';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static LinkageTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return LinkageTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static LinkageTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'source':
        return LinkageTypeEnum.source;
      case 'alternate':
        return LinkageTypeEnum.alternate;
      case 'historical':
        return LinkageTypeEnum.historical;
    }
    return null;
  }
}

/// Used to distinguish different roles a resource can play within a set of
/// linked resources.
class LinkageType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const LinkageType._({
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
  factory LinkageType(
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
    final valueEnum = LinkageTypeEnum.fromString(valueString);
    return LinkageType._(
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

  /// Factory constructor to create [LinkageType]
  /// from JSON.
  factory LinkageType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = LinkageTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkageType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LinkageType cannot be constructed from JSON.',
      );
    }
    return LinkageType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for LinkageType
  final LinkageTypeEnum? valueEnum;

  /// source
  static const LinkageType source = LinkageType._(
    valueString: 'source',
    valueEnum: LinkageTypeEnum.source,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/linkage-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Source of Truth',
    ),
  );

  /// alternate
  static const LinkageType alternate = LinkageType._(
    valueString: 'alternate',
    valueEnum: LinkageTypeEnum.alternate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/linkage-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Alternate Record',
    ),
  );

  /// historical
  static const LinkageType historical = LinkageType._(
    valueString: 'historical',
    valueEnum: LinkageTypeEnum.historical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/linkage-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Historical/Obsolete Record',
    ),
  );

  /// List of all enum-like values
  static final List<LinkageType> values = [
    source,
    alternate,
    historical,
  ];

  /// Returns the enum value with an element attached
  LinkageType withElement(Element? newElement) {
    return LinkageType._(
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
  LinkageType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  LinkageTypeCopyWithImpl<LinkageType> get copyWith =>
      LinkageTypeCopyWithImpl<LinkageType>(
        this,
        (v) => v as LinkageType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class LinkageTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  LinkageTypeCopyWithImpl(super._value, super._then);

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
      LinkageType(
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
