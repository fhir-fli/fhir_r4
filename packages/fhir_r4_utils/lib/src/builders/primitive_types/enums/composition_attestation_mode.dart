// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The way in which a person authenticated a composition.
class CompositionAttestationModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CompositionAttestationModeBuilder._({
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
  factory CompositionAttestationModeBuilder(
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
    return CompositionAttestationModeBuilder._(
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

  /// Create empty [CompositionAttestationModeBuilder] with element only
  factory CompositionAttestationModeBuilder.empty() =>
      CompositionAttestationModeBuilder._(validatedValue: '');

  /// Factory constructor to create [CompositionAttestationModeBuilder] from JSON.
  factory CompositionAttestationModeBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionAttestationModeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompositionAttestationModeBuilder cannot be constructed from JSON.',
      );
    }
    return CompositionAttestationModeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// personal
  static CompositionAttestationModeBuilder personal =
      CompositionAttestationModeBuilder._(
    validatedValue: 'personal',
    system: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Personal'.toFhirStringBuilder,
  );

  /// professional
  static CompositionAttestationModeBuilder professional =
      CompositionAttestationModeBuilder._(
    validatedValue: 'professional',
    system: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Professional'.toFhirStringBuilder,
  );

  /// legal
  static CompositionAttestationModeBuilder legal =
      CompositionAttestationModeBuilder._(
    validatedValue: 'legal',
    system: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Legal'.toFhirStringBuilder,
  );

  /// official
  static CompositionAttestationModeBuilder official =
      CompositionAttestationModeBuilder._(
    validatedValue: 'official',
    system: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Official'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CompositionAttestationModeBuilder elementOnly =
      CompositionAttestationModeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<CompositionAttestationModeBuilder> values = [
    personal,
    professional,
    legal,
    official,
  ];

  /// Clones the current instance
  @override
  CompositionAttestationModeBuilder clone() =>
      CompositionAttestationModeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CompositionAttestationModeBuilder withElement(ElementBuilder? newElement) {
    return CompositionAttestationModeBuilder._(
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
  CompositionAttestationModeBuilder copyWith({
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
    return CompositionAttestationModeBuilder._(
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
