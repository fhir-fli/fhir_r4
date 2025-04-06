// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a search parameter relates to the set of elements returned by
/// evaluating its xpath query.
class XPathUsageTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  XPathUsageTypeBuilder._({
    required super.valueString,
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
    return XPathUsageTypeBuilder._(
      valueString: valueString,
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

  /// Create empty [XPathUsageTypeBuilder] with element only
  factory XPathUsageTypeBuilder.empty() =>
      XPathUsageTypeBuilder._(valueString: '');

  /// Factory constructor to create [XPathUsageTypeBuilder]
  /// from JSON.
  factory XPathUsageTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return XPathUsageTypeBuilder.elementOnly.withElement(element);
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

  /// normal
  static XPathUsageTypeBuilder normal = XPathUsageTypeBuilder._(
    valueString: 'normal',
    system: 'http://hl7.org/fhir/ValueSet/search-xpath-usage'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Normal'.toFhirStringBuilder,
  );

  /// phonetic
  static XPathUsageTypeBuilder phonetic = XPathUsageTypeBuilder._(
    valueString: 'phonetic',
    system: 'http://hl7.org/fhir/ValueSet/search-xpath-usage'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Phonetic'.toFhirStringBuilder,
  );

  /// nearby
  static XPathUsageTypeBuilder nearby = XPathUsageTypeBuilder._(
    valueString: 'nearby',
    system: 'http://hl7.org/fhir/ValueSet/search-xpath-usage'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Nearby'.toFhirStringBuilder,
  );

  /// distance
  static XPathUsageTypeBuilder distance = XPathUsageTypeBuilder._(
    valueString: 'distance',
    system: 'http://hl7.org/fhir/ValueSet/search-xpath-usage'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Distance'.toFhirStringBuilder,
  );

  /// other
  static XPathUsageTypeBuilder other = XPathUsageTypeBuilder._(
    valueString: 'other',
    system: 'http://hl7.org/fhir/ValueSet/search-xpath-usage'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Other'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static XPathUsageTypeBuilder elementOnly =
      XPathUsageTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<XPathUsageTypeBuilder> values = [
    normal,
    phonetic,
    nearby,
    distance,
    other,
  ];

  /// Clones the current instance
  @override
  XPathUsageTypeBuilder clone() => XPathUsageTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  XPathUsageTypeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for XPathUsageType: $newValue',
      );
    }
    return XPathUsageTypeBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
