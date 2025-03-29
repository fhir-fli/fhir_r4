// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a property is represented when serialized.
class PropertyRepresentationBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PropertyRepresentationBuilder._({
    required super.validatedValue,
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
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return PropertyRepresentationBuilder._(
      validatedValue: validated,
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

  /// Create empty [PropertyRepresentationBuilder] with element only
  factory PropertyRepresentationBuilder.empty() =>
      PropertyRepresentationBuilder._(validatedValue: '');

  /// Factory constructor to create [PropertyRepresentationBuilder] from JSON.
  factory PropertyRepresentationBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyRepresentationBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PropertyRepresentationBuilder cannot be constructed from JSON.',
      );
    }
    return PropertyRepresentationBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// xmlAttr
  static PropertyRepresentationBuilder xmlAttr =
      PropertyRepresentationBuilder._(
    validatedValue: 'xmlAttr',
    system:
        'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'XML Attribute'.toFhirStringBuilder,
  );

  /// xmlText
  static PropertyRepresentationBuilder xmlText =
      PropertyRepresentationBuilder._(
    validatedValue: 'xmlText',
    system:
        'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'XML Text'.toFhirStringBuilder,
  );

  /// typeAttr
  static PropertyRepresentationBuilder typeAttr =
      PropertyRepresentationBuilder._(
    validatedValue: 'typeAttr',
    system:
        'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Type Attribute'.toFhirStringBuilder,
  );

  /// cdaText
  static PropertyRepresentationBuilder cdaText =
      PropertyRepresentationBuilder._(
    validatedValue: 'cdaText',
    system:
        'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'CDA Text Format'.toFhirStringBuilder,
  );

  /// xhtml
  static PropertyRepresentationBuilder xhtml = PropertyRepresentationBuilder._(
    validatedValue: 'xhtml',
    system:
        'http://hl7.org/fhir/ValueSet/property-representation'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'XHTML'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static PropertyRepresentationBuilder elementOnly =
      PropertyRepresentationBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<PropertyRepresentationBuilder> values = [
    xmlAttr,
    xmlText,
    typeAttr,
    cdaText,
    xhtml,
  ];

  /// Clones the current instance
  @override
  PropertyRepresentationBuilder clone() => PropertyRepresentationBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  PropertyRepresentationBuilder withElement(ElementBuilder? newElement) {
    return PropertyRepresentationBuilder._(
        validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  PropertyRepresentationBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return PropertyRepresentationBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
