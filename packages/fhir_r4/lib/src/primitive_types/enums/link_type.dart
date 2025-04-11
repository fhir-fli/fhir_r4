// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for LinkType
enum LinkTypeEnum {
  /// replaced-by
  replacedBy,

  /// replaces
  replaces,

  /// refer
  refer,

  /// seealso
  seealso,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case LinkTypeEnum.replacedBy:
        return 'replaced-by';
      case LinkTypeEnum.replaces:
        return 'replaces';
      case LinkTypeEnum.refer:
        return 'refer';
      case LinkTypeEnum.seealso:
        return 'seealso';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static LinkTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return LinkTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static LinkTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'replaced-by':
        return LinkTypeEnum.replacedBy;
      case 'replaces':
        return LinkTypeEnum.replaces;
      case 'refer':
        return LinkTypeEnum.refer;
      case 'seealso':
        return LinkTypeEnum.seealso;
    }
    return null;
  }
}

/// The type of link between this patient resource and another patient
/// resource.
class LinkType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const LinkType._({
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
  factory LinkType(
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
    final valueEnum = LinkTypeEnum.fromString(valueString);
    return LinkType._(
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

  /// Factory constructor to create [LinkType]
  /// from JSON.
  factory LinkType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = LinkTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LinkType cannot be constructed from JSON.',
      );
    }
    return LinkType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for LinkType
  final LinkTypeEnum? valueEnum;

  /// replaced_by
  static const LinkType replacedBy = LinkType._(
    valueString: 'replaced-by',
    valueEnum: LinkTypeEnum.replacedBy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/link-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Replaced-by',
    ),
  );

  /// replaces
  static const LinkType replaces = LinkType._(
    valueString: 'replaces',
    valueEnum: LinkTypeEnum.replaces,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/link-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Replaces',
    ),
  );

  /// refer
  static const LinkType refer = LinkType._(
    valueString: 'refer',
    valueEnum: LinkTypeEnum.refer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/link-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Refer',
    ),
  );

  /// seealso
  static const LinkType seealso = LinkType._(
    valueString: 'seealso',
    valueEnum: LinkTypeEnum.seealso,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/link-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'See also',
    ),
  );

  /// List of all enum-like values
  static final List<LinkType> values = [
    replacedBy,
    replaces,
    refer,
    seealso,
  ];

  /// Returns the enum value with an element attached
  LinkType withElement(Element? newElement) {
    return LinkType._(
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
  LinkType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  LinkTypeCopyWithImpl<LinkType> get copyWith => LinkTypeCopyWithImpl<LinkType>(
        this,
        (v) => v as LinkType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class LinkTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  LinkTypeCopyWithImpl(super._value, super._then);

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
      LinkType(
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
