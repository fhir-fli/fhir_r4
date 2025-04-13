// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for XPathUsageType
enum XPathUsageTypeBuilderEnum {
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
      case XPathUsageTypeBuilderEnum.normal:
        return 'normal';
      case XPathUsageTypeBuilderEnum.phonetic:
        return 'phonetic';
      case XPathUsageTypeBuilderEnum.nearby:
        return 'nearby';
      case XPathUsageTypeBuilderEnum.distance:
        return 'distance';
      case XPathUsageTypeBuilderEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static XPathUsageTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return XPathUsageTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static XPathUsageTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'normal':
        return XPathUsageTypeBuilderEnum.normal;
      case 'phonetic':
        return XPathUsageTypeBuilderEnum.phonetic;
      case 'nearby':
        return XPathUsageTypeBuilderEnum.nearby;
      case 'distance':
        return XPathUsageTypeBuilderEnum.distance;
      case 'other':
        return XPathUsageTypeBuilderEnum.other;
    }
    return null;
  }
}

/// How a search parameter relates to the set of elements returned by
/// evaluating its xpath query.
class XPathUsageTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  XPathUsageTypeBuilder._({
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
  factory XPathUsageTypeBuilder(
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
    final valueEnum = XPathUsageTypeBuilderEnum.fromString(
      valueString,
    );
    return XPathUsageTypeBuilder._(
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

  /// Create empty [XPathUsageTypeBuilder]
  /// with element only
  factory XPathUsageTypeBuilder.empty() =>
      XPathUsageTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [XPathUsageTypeBuilder] from JSON.
  factory XPathUsageTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return XPathUsageTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'XPathUsageTypeBuilder cannot be constructed from JSON.',
      );
    }
    return XPathUsageTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for XPathUsageTypeBuilder
  final XPathUsageTypeBuilderEnum? valueEnum;

  /// normal
  static XPathUsageTypeBuilder normal = XPathUsageTypeBuilder._(
    valueString: 'normal',
    valueEnum: XPathUsageTypeBuilderEnum.normal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-xpath-usage',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Normal',
    ),
  );

  /// phonetic
  static XPathUsageTypeBuilder phonetic = XPathUsageTypeBuilder._(
    valueString: 'phonetic',
    valueEnum: XPathUsageTypeBuilderEnum.phonetic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-xpath-usage',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Phonetic',
    ),
  );

  /// nearby
  static XPathUsageTypeBuilder nearby = XPathUsageTypeBuilder._(
    valueString: 'nearby',
    valueEnum: XPathUsageTypeBuilderEnum.nearby,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-xpath-usage',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Nearby',
    ),
  );

  /// distance
  static XPathUsageTypeBuilder distance = XPathUsageTypeBuilder._(
    valueString: 'distance',
    valueEnum: XPathUsageTypeBuilderEnum.distance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-xpath-usage',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Distance',
    ),
  );

  /// other
  static XPathUsageTypeBuilder other = XPathUsageTypeBuilder._(
    valueString: 'other',
    valueEnum: XPathUsageTypeBuilderEnum.other,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/search-xpath-usage',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Other',
    ),
  );

  /// For instances where an Element is present but not value
  static XPathUsageTypeBuilder elementOnly = XPathUsageTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<XPathUsageTypeBuilder> values = [
    normal,
    phonetic,
    nearby,
    distance,
    other,
  ];

  /// Returns the enum value with an element attached
  XPathUsageTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return XPathUsageTypeBuilder._(
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
