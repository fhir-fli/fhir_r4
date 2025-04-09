// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for XPathUsageType
enum XPathUsageTypeEnum {
  /// normal
  normal,

  /// phonetic
  phonetic,

  /// nearby
  nearby,

  /// distance
  distance,

  /// other
  other,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case XPathUsageTypeEnum.normal:
        return 'normal';
      case XPathUsageTypeEnum.phonetic:
        return 'phonetic';
      case XPathUsageTypeEnum.nearby:
        return 'nearby';
      case XPathUsageTypeEnum.distance:
        return 'distance';
      case XPathUsageTypeEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static XPathUsageTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return XPathUsageTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static XPathUsageTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'normal':
        return XPathUsageTypeEnum.normal;
      case 'phonetic':
        return XPathUsageTypeEnum.phonetic;
      case 'nearby':
        return XPathUsageTypeEnum.nearby;
      case 'distance':
        return XPathUsageTypeEnum.distance;
      case 'other':
        return XPathUsageTypeEnum.other;
    }
    return null;
  }
}

/// How a search parameter relates to the set of elements returned by
/// evaluating its xpath query.
class XPathUsageType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const XPathUsageType._({
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
  factory XPathUsageType(
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
    final valueEnum = XPathUsageTypeEnum.fromString(valueString);
    return XPathUsageType._(
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

  /// Factory constructor to create [XPathUsageType]
  /// from JSON.
  factory XPathUsageType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = XPathUsageTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return XPathUsageType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'XPathUsageType cannot be constructed from JSON.',
      );
    }
    return XPathUsageType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for XPathUsageType
  final XPathUsageTypeEnum? valueEnum;

  /// normal
  static const XPathUsageType normal = XPathUsageType._(
    valueString: 'normal',
    valueEnum: XPathUsageTypeEnum.normal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-xpath-usage',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Normal',
    ),
  );

  /// phonetic
  static const XPathUsageType phonetic = XPathUsageType._(
    valueString: 'phonetic',
    valueEnum: XPathUsageTypeEnum.phonetic,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-xpath-usage',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Phonetic',
    ),
  );

  /// nearby
  static const XPathUsageType nearby = XPathUsageType._(
    valueString: 'nearby',
    valueEnum: XPathUsageTypeEnum.nearby,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-xpath-usage',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Nearby',
    ),
  );

  /// distance
  static const XPathUsageType distance = XPathUsageType._(
    valueString: 'distance',
    valueEnum: XPathUsageTypeEnum.distance,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-xpath-usage',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Distance',
    ),
  );

  /// other
  static const XPathUsageType other = XPathUsageType._(
    valueString: 'other',
    valueEnum: XPathUsageTypeEnum.other,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-xpath-usage',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Other',
    ),
  );

  /// List of all enum-like values
  static final List<XPathUsageType> values = [
    normal,
    phonetic,
    nearby,
    distance,
    other,
  ];

  /// Returns the enum value with an element attached
  XPathUsageType withElement(Element? newElement) {
    return XPathUsageType._(
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
  XPathUsageType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  XPathUsageTypeCopyWithImpl<XPathUsageType> get copyWith =>
      XPathUsageTypeCopyWithImpl<XPathUsageType>(
        this,
        (v) => v as XPathUsageType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class XPathUsageTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  XPathUsageTypeCopyWithImpl(super._value, super._then);

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
      XPathUsageType(
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
