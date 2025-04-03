// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The lifecycle status of an artifact.
class PublicationStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PublicationStatusBuilder._({
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
  factory PublicationStatusBuilder(
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
    return PublicationStatusBuilder._(
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

  /// Create empty [PublicationStatusBuilder] with element only
  factory PublicationStatusBuilder.empty() =>
      PublicationStatusBuilder._(valueString: '');

  /// Factory constructor to create [PublicationStatusBuilder]
  /// from JSON.
  factory PublicationStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PublicationStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PublicationStatusBuilder cannot be constructed from JSON.',
      );
    }
    return PublicationStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// draft
  static PublicationStatusBuilder draft = PublicationStatusBuilder._(
    valueString: 'draft',
    system: 'http://hl7.org/fhir/ValueSet/publication-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Draft'.toFhirStringBuilder,
  );

  /// active
  static PublicationStatusBuilder active = PublicationStatusBuilder._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/publication-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// retired
  static PublicationStatusBuilder retired = PublicationStatusBuilder._(
    valueString: 'retired',
    system: 'http://hl7.org/fhir/ValueSet/publication-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Retired'.toFhirStringBuilder,
  );

  /// unknown
  static PublicationStatusBuilder unknown = PublicationStatusBuilder._(
    valueString: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/publication-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static PublicationStatusBuilder elementOnly =
      PublicationStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<PublicationStatusBuilder> values = [
    draft,
    active,
    retired,
    unknown,
  ];

  /// Clones the current instance
  @override
  PublicationStatusBuilder clone() => PublicationStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  PublicationStatusBuilder withElement(ElementBuilder? newElement) {
    return PublicationStatusBuilder._(
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
  PublicationStatusBuilder copyWith({
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
      throw ArgumentError('Invalid input for PublicationStatus: $newValue');
    }
    return PublicationStatusBuilder._(
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
