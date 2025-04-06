// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How a resource reference is interpreted when testing consent
/// restrictions.
class ConsentDataMeaningBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConsentDataMeaningBuilder._({
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
  factory ConsentDataMeaningBuilder(
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
    return ConsentDataMeaningBuilder._(
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

  /// Create empty [ConsentDataMeaningBuilder] with element only
  factory ConsentDataMeaningBuilder.empty() =>
      ConsentDataMeaningBuilder._(valueString: '');

  /// Factory constructor to create [ConsentDataMeaningBuilder]
  /// from JSON.
  factory ConsentDataMeaningBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentDataMeaningBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentDataMeaningBuilder cannot be constructed from JSON.',
      );
    }
    return ConsentDataMeaningBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// instance
  static ConsentDataMeaningBuilder instance = ConsentDataMeaningBuilder._(
    valueString: 'instance',
    system:
        'http://hl7.org/fhir/ValueSet/consent-data-meaning'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Instance'.toFhirStringBuilder,
  );

  /// related
  static ConsentDataMeaningBuilder related = ConsentDataMeaningBuilder._(
    valueString: 'related',
    system:
        'http://hl7.org/fhir/ValueSet/consent-data-meaning'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Related'.toFhirStringBuilder,
  );

  /// dependents
  static ConsentDataMeaningBuilder dependents = ConsentDataMeaningBuilder._(
    valueString: 'dependents',
    system:
        'http://hl7.org/fhir/ValueSet/consent-data-meaning'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Dependents'.toFhirStringBuilder,
  );

  /// authoredby
  static ConsentDataMeaningBuilder authoredby = ConsentDataMeaningBuilder._(
    valueString: 'authoredby',
    system:
        'http://hl7.org/fhir/ValueSet/consent-data-meaning'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AuthoredBy'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ConsentDataMeaningBuilder elementOnly =
      ConsentDataMeaningBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ConsentDataMeaningBuilder> values = [
    instance,
    related,
    dependents,
    authoredby,
  ];

  /// Clones the current instance
  @override
  ConsentDataMeaningBuilder clone() => ConsentDataMeaningBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ConsentDataMeaningBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConsentDataMeaningBuilder._(
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
  ConsentDataMeaningBuilder copyWith({
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
        'Invalid input for ConsentDataMeaning: $newValue',
      );
    }
    return ConsentDataMeaningBuilder._(
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
