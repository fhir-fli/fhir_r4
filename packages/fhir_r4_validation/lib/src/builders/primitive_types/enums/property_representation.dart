// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PropertyRepresentation
enum PropertyRepresentationBuilderEnum {
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
      case PropertyRepresentationBuilderEnum.xmlAttr:
        return 'xmlAttr';
      case PropertyRepresentationBuilderEnum.xmlText:
        return 'xmlText';
      case PropertyRepresentationBuilderEnum.typeAttr:
        return 'typeAttr';
      case PropertyRepresentationBuilderEnum.cdaText:
        return 'cdaText';
      case PropertyRepresentationBuilderEnum.xhtml:
        return 'xhtml';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PropertyRepresentationBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return PropertyRepresentationBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PropertyRepresentationBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'xmlAttr':
        return PropertyRepresentationBuilderEnum.xmlAttr;
      case 'xmlText':
        return PropertyRepresentationBuilderEnum.xmlText;
      case 'typeAttr':
        return PropertyRepresentationBuilderEnum.typeAttr;
      case 'cdaText':
        return PropertyRepresentationBuilderEnum.cdaText;
      case 'xhtml':
        return PropertyRepresentationBuilderEnum.xhtml;
    }
    return null;
  }
}

/// How a property is represented when serialized.
class PropertyRepresentationBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PropertyRepresentationBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory PropertyRepresentationBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = PropertyRepresentationBuilderEnum.fromString(
      valueString,
    );
    return PropertyRepresentationBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [PropertyRepresentationBuilder]
  /// with element only
  factory PropertyRepresentationBuilder.empty() =>
      PropertyRepresentationBuilder._(valueString: null);

  /// Factory constructor to create
  /// [PropertyRepresentationBuilder] from JSON.
  factory PropertyRepresentationBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyRepresentationBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PropertyRepresentationBuilder cannot be constructed from JSON.',
      );
    }
    return PropertyRepresentationBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for PropertyRepresentationBuilder
  final PropertyRepresentationBuilderEnum? valueEnum;

  /// xmlAttr
  static PropertyRepresentationBuilder xmlAttr =
      PropertyRepresentationBuilder._(
    valueString: 'xmlAttr',
    valueEnum: PropertyRepresentationBuilderEnum.xmlAttr,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/property-representation',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'XML Attribute',
    ),
  );

  /// xmlText
  static PropertyRepresentationBuilder xmlText =
      PropertyRepresentationBuilder._(
    valueString: 'xmlText',
    valueEnum: PropertyRepresentationBuilderEnum.xmlText,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/property-representation',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'XML Text',
    ),
  );

  /// typeAttr
  static PropertyRepresentationBuilder typeAttr =
      PropertyRepresentationBuilder._(
    valueString: 'typeAttr',
    valueEnum: PropertyRepresentationBuilderEnum.typeAttr,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/property-representation',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Type Attribute',
    ),
  );

  /// cdaText
  static PropertyRepresentationBuilder cdaText =
      PropertyRepresentationBuilder._(
    valueString: 'cdaText',
    valueEnum: PropertyRepresentationBuilderEnum.cdaText,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/property-representation',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CDA Text Format',
    ),
  );

  /// xhtml
  static PropertyRepresentationBuilder xhtml = PropertyRepresentationBuilder._(
    valueString: 'xhtml',
    valueEnum: PropertyRepresentationBuilderEnum.xhtml,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/property-representation',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'XHTML',
    ),
  );

  /// For instances where an Element is present but not value
  static PropertyRepresentationBuilder elementOnly =
      PropertyRepresentationBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<PropertyRepresentationBuilder> values = [
    xmlAttr,
    xmlText,
    typeAttr,
    cdaText,
    xhtml,
  ];

  /// Returns the enum value with an element attached
  PropertyRepresentationBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return PropertyRepresentationBuilder._(
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
}
