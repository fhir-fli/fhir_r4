part of '../primitive_types.dart';

/// Actual enum for PropertyRepresentation
enum PropertyRepresentationEnum {
  /// xmlAttr
  xmlAttr,

  /// xmlText
  xmlText,

  /// typeAttr
  typeAttr,

  /// cdaText
  cdaText,

  /// xhtml
  xhtml,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case PropertyRepresentationEnum.xmlAttr:
        return 'xmlAttr';
      case PropertyRepresentationEnum.xmlText:
        return 'xmlText';
      case PropertyRepresentationEnum.typeAttr:
        return 'typeAttr';
      case PropertyRepresentationEnum.cdaText:
        return 'cdaText';
      case PropertyRepresentationEnum.xhtml:
        return 'xhtml';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PropertyRepresentationEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return PropertyRepresentationEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PropertyRepresentationEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'xmlAttr':
        return PropertyRepresentationEnum.xmlAttr;
      case 'xmlText':
        return PropertyRepresentationEnum.xmlText;
      case 'typeAttr':
        return PropertyRepresentationEnum.typeAttr;
      case 'cdaText':
        return PropertyRepresentationEnum.cdaText;
      case 'xhtml':
        return PropertyRepresentationEnum.xhtml;
    }
    return null;
  }
}

/// How a property is represented when serialized.
class PropertyRepresentation extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const PropertyRepresentation._({
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
  factory PropertyRepresentation(
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
    final valueEnum = PropertyRepresentationEnum.fromString(valueString);
    return PropertyRepresentation._(
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

  /// Factory constructor to create [PropertyRepresentation]
  /// from JSON.
  factory PropertyRepresentation.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = PropertyRepresentationEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyRepresentation._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PropertyRepresentation cannot be constructed from JSON.',
      );
    }
    return PropertyRepresentation._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for PropertyRepresentation
  final PropertyRepresentationEnum? valueEnum;

  /// xmlAttr
  static const PropertyRepresentation xmlAttr = PropertyRepresentation._(
    valueString: 'xmlAttr',
    valueEnum: PropertyRepresentationEnum.xmlAttr,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/property-representation',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'XML Attribute',
    ),
  );

  /// xmlText
  static const PropertyRepresentation xmlText = PropertyRepresentation._(
    valueString: 'xmlText',
    valueEnum: PropertyRepresentationEnum.xmlText,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/property-representation',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'XML Text',
    ),
  );

  /// typeAttr
  static const PropertyRepresentation typeAttr = PropertyRepresentation._(
    valueString: 'typeAttr',
    valueEnum: PropertyRepresentationEnum.typeAttr,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/property-representation',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Type Attribute',
    ),
  );

  /// cdaText
  static const PropertyRepresentation cdaText = PropertyRepresentation._(
    valueString: 'cdaText',
    valueEnum: PropertyRepresentationEnum.cdaText,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/property-representation',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CDA Text Format',
    ),
  );

  /// xhtml
  static const PropertyRepresentation xhtml = PropertyRepresentation._(
    valueString: 'xhtml',
    valueEnum: PropertyRepresentationEnum.xhtml,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/property-representation',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'XHTML',
    ),
  );

  /// List of all enum-like values
  static final List<PropertyRepresentation> values = [
    xmlAttr,
    xmlText,
    typeAttr,
    cdaText,
    xhtml,
  ];

  /// Returns the enum value with an element attached
  PropertyRepresentation withElement(Element? newElement) {
    return PropertyRepresentation._(
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
  PropertyRepresentation clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  PropertyRepresentationCopyWithImpl<PropertyRepresentation> get copyWith =>
      PropertyRepresentationCopyWithImpl<PropertyRepresentation>(
        this,
        (v) => v as PropertyRepresentation,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class PropertyRepresentationCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  PropertyRepresentationCopyWithImpl(super._value, super._then);

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
      PropertyRepresentation(
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
