// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of contributor.
class ContributorTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContributorTypeBuilder._({
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
  factory ContributorTypeBuilder(
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
    return ContributorTypeBuilder._(
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

  /// Create empty [ContributorTypeBuilder] with element only
  factory ContributorTypeBuilder.empty() =>
      ContributorTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [ContributorTypeBuilder] from JSON.
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
      validatedValue: value,
      element: element,
    );
  }

  /// author
  static ContributorTypeBuilder author = ContributorTypeBuilder._(
    validatedValue: 'author',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Author'.toFhirStringBuilder,
  );

  /// editor
  static ContributorTypeBuilder editor = ContributorTypeBuilder._(
    validatedValue: 'editor',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Editor'.toFhirStringBuilder,
  );

  /// reviewer
  static ContributorTypeBuilder reviewer = ContributorTypeBuilder._(
    validatedValue: 'reviewer',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Reviewer'.toFhirStringBuilder,
  );

  /// endorser
  static ContributorTypeBuilder endorser = ContributorTypeBuilder._(
    validatedValue: 'endorser',
    system: 'http://hl7.org/fhir/ValueSet/contributor-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Endorser'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ContributorTypeBuilder elementOnly =
      ContributorTypeBuilder._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ContributorTypeBuilder withElement(ElementBuilder? newElement) {
    return ContributorTypeBuilder._(validatedValue: value, element: newElement);
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
  ContributorTypeBuilder copyWith({
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
    return ContributorTypeBuilder._(
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
