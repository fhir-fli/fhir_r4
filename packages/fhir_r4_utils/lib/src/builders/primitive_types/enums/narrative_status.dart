// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of a resource narrative.
class NarrativeStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NarrativeStatusBuilder._({
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
  factory NarrativeStatusBuilder(
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
    return NarrativeStatusBuilder._(
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

  /// Create empty [NarrativeStatusBuilder] with element only
  factory NarrativeStatusBuilder.empty() =>
      NarrativeStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [NarrativeStatusBuilder] from JSON.
  factory NarrativeStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NarrativeStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NarrativeStatusBuilder cannot be constructed from JSON.',
      );
    }
    return NarrativeStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// generated
  static NarrativeStatusBuilder generated = NarrativeStatusBuilder._(
    validatedValue: 'generated',
    system: 'http://hl7.org/fhir/ValueSet/narrative-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Generated'.toFhirStringBuilder,
  );

  /// extensions
  static NarrativeStatusBuilder extensions = NarrativeStatusBuilder._(
    validatedValue: 'extensions',
    system: 'http://hl7.org/fhir/ValueSet/narrative-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Extensions'.toFhirStringBuilder,
  );

  /// additional
  static NarrativeStatusBuilder additional = NarrativeStatusBuilder._(
    validatedValue: 'additional',
    system: 'http://hl7.org/fhir/ValueSet/narrative-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Additional'.toFhirStringBuilder,
  );

  /// empty_
  static NarrativeStatusBuilder empty_ = NarrativeStatusBuilder._(
    validatedValue: 'empty',
    system: 'http://hl7.org/fhir/ValueSet/narrative-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Empty'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static NarrativeStatusBuilder elementOnly =
      NarrativeStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<NarrativeStatusBuilder> values = [
    generated,
    extensions,
    additional,
    empty_,
  ];

  /// Clones the current instance
  @override
  NarrativeStatusBuilder clone() => NarrativeStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  NarrativeStatusBuilder withElement(ElementBuilder? newElement) {
    return NarrativeStatusBuilder._(validatedValue: value, element: newElement);
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
  NarrativeStatusBuilder copyWith({
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
    return NarrativeStatusBuilder._(
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
