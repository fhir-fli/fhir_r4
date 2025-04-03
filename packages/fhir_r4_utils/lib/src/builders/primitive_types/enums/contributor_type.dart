// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of contributor.
class ContributorTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContributorTypeBuilder._({
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
  factory ContributorTypeBuilder(
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
    return ContributorTypeBuilder._(
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

  /// Create empty [ContributorTypeBuilder] with element only
  factory ContributorTypeBuilder.empty() =>
      ContributorTypeBuilder._(valueString: '');

  /// Factory constructor to create [ContributorTypeBuilder]
  /// from JSON.
  factory ContributorTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContributorTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ContributorTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// author
  static ContributorTypeBuilder author = ContributorTypeBuilder._(
    valueString: 'author',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Author'.toFhirStringBuilder,
  );

  /// editor
  static ContributorTypeBuilder editor = ContributorTypeBuilder._(
    valueString: 'editor',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Editor'.toFhirStringBuilder,
  );

  /// reviewer
  static ContributorTypeBuilder reviewer = ContributorTypeBuilder._(
    valueString: 'reviewer',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reviewer'.toFhirStringBuilder,
  );

  /// endorser
  static ContributorTypeBuilder endorser = ContributorTypeBuilder._(
    valueString: 'endorser',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Endorser'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ContributorTypeBuilder elementOnly =
      ContributorTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ContributorTypeBuilder> values = [
    author,
    editor,
    reviewer,
    endorser,
  ];

  /// Clones the current instance
  @override
  ContributorTypeBuilder clone() => ContributorTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ContributorTypeBuilder withElement(ElementBuilder? newElement) {
    return ContributorTypeBuilder._(
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
  ContributorTypeBuilder copyWith({
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
      throw ArgumentError('Invalid input for ContributorType: $newValue');
    }
    return ContributorTypeBuilder._(
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
