// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of a property value.
class PropertyTypeEnumBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PropertyTypeEnumBuilder._({
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
  factory PropertyTypeEnumBuilder(
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
    return PropertyTypeEnumBuilder._(
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

  /// Create empty [PropertyTypeEnumBuilder] with element only
  factory PropertyTypeEnumBuilder.empty() =>
      PropertyTypeEnumBuilder._(valueString: '');

  /// Factory constructor to create [PropertyTypeEnumBuilder]
  /// from JSON.
  factory PropertyTypeEnumBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyTypeEnumBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PropertyTypeEnumBuilder cannot be constructed from JSON.',
      );
    }
    return PropertyTypeEnumBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// code
  static PropertyTypeEnumBuilder code = PropertyTypeEnumBuilder._(
    valueString: 'code',
    system:
        'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'code (internal reference)'.toFhirStringBuilder,
  );

  /// Coding
  static PropertyTypeEnumBuilder Coding = PropertyTypeEnumBuilder._(
    valueString: 'Coding',
    system:
        'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Coding (external reference)'.toFhirStringBuilder,
  );

  /// string
  static PropertyTypeEnumBuilder string = PropertyTypeEnumBuilder._(
    valueString: 'string',
    system:
        'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'string'.toFhirStringBuilder,
  );

  /// integer
  static PropertyTypeEnumBuilder integer = PropertyTypeEnumBuilder._(
    valueString: 'integer',
    system:
        'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'integer'.toFhirStringBuilder,
  );

  /// boolean
  static PropertyTypeEnumBuilder boolean = PropertyTypeEnumBuilder._(
    valueString: 'boolean',
    system:
        'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'boolean'.toFhirStringBuilder,
  );

  /// dateTime
  static PropertyTypeEnumBuilder dateTime = PropertyTypeEnumBuilder._(
    valueString: 'dateTime',
    system:
        'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'dateTime'.toFhirStringBuilder,
  );

  /// decimal
  static PropertyTypeEnumBuilder decimal = PropertyTypeEnumBuilder._(
    valueString: 'decimal',
    system:
        'http://hl7.org/fhir/ValueSet/concept-property-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'decimal'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static PropertyTypeEnumBuilder elementOnly =
      PropertyTypeEnumBuilder._(valueString: '');

  /// List of all enum-like values
  static List<PropertyTypeEnumBuilder> values = [
    code,
    Coding,
    string,
    integer,
    boolean,
    dateTime,
    decimal,
  ];

  /// Clones the current instance
  @override
  PropertyTypeEnumBuilder clone() => PropertyTypeEnumBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  PropertyTypeEnumBuilder withElement(ElementBuilder? newElement) {
    return PropertyTypeEnumBuilder._(
        valueString: valueString, element: newElement);
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
  PropertyTypeEnumBuilder copyWith({
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
      throw ArgumentError('Invalid input for PropertyTypeEnum: $newValue');
    }
    return PropertyTypeEnumBuilder._(
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
