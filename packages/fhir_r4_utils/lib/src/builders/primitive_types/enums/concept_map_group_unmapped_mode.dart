// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines which action to take if there is no match in the group.
class ConceptMapGroupUnmappedModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConceptMapGroupUnmappedModeBuilder._({
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
  factory ConceptMapGroupUnmappedModeBuilder(
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
    return ConceptMapGroupUnmappedModeBuilder._(
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

  /// Create empty [ConceptMapGroupUnmappedModeBuilder] with element only
  factory ConceptMapGroupUnmappedModeBuilder.empty() =>
      ConceptMapGroupUnmappedModeBuilder._(validatedValue: '');

  /// Factory constructor to create [ConceptMapGroupUnmappedModeBuilder]
  /// from JSON.
  factory ConceptMapGroupUnmappedModeBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapGroupUnmappedModeBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapGroupUnmappedModeBuilder cannot be constructed from JSON.',
      );
    }
    return ConceptMapGroupUnmappedModeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// provided
  static ConceptMapGroupUnmappedModeBuilder provided =
      ConceptMapGroupUnmappedModeBuilder._(
    validatedValue: 'provided',
    system: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Provided Code'.toFhirStringBuilder,
  );

  /// fixed
  static ConceptMapGroupUnmappedModeBuilder fixed =
      ConceptMapGroupUnmappedModeBuilder._(
    validatedValue: 'fixed',
    system: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fixed Code'.toFhirStringBuilder,
  );

  /// other_map
  static ConceptMapGroupUnmappedModeBuilder other_map =
      ConceptMapGroupUnmappedModeBuilder._(
    validatedValue: 'other-map',
    system: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Other Map'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ConceptMapGroupUnmappedModeBuilder elementOnly =
      ConceptMapGroupUnmappedModeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ConceptMapGroupUnmappedModeBuilder> values = [
    provided,
    fixed,
    other_map,
  ];

  /// Clones the current instance
  @override
  ConceptMapGroupUnmappedModeBuilder clone() =>
      ConceptMapGroupUnmappedModeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ConceptMapGroupUnmappedModeBuilder withElement(ElementBuilder? newElement) {
    return ConceptMapGroupUnmappedModeBuilder._(
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
  ConceptMapGroupUnmappedModeBuilder copyWith({
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
    return ConceptMapGroupUnmappedModeBuilder._(
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
