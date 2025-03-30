// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Overall defining type of this clinical use definition.
class ClinicalUseDefinitionTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ClinicalUseDefinitionTypeBuilder._({
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
  factory ClinicalUseDefinitionTypeBuilder(
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
    return ClinicalUseDefinitionTypeBuilder._(
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

  /// Create empty [ClinicalUseDefinitionTypeBuilder] with element only
  factory ClinicalUseDefinitionTypeBuilder.empty() =>
      ClinicalUseDefinitionTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [ClinicalUseDefinitionTypeBuilder]
  /// from JSON.
  factory ClinicalUseDefinitionTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalUseDefinitionTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ClinicalUseDefinitionTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// indication
  static ClinicalUseDefinitionTypeBuilder indication =
      ClinicalUseDefinitionTypeBuilder._(
    validatedValue: 'indication',
    system: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Indication'.toFhirStringBuilder,
  );

  /// contraindication
  static ClinicalUseDefinitionTypeBuilder contraindication =
      ClinicalUseDefinitionTypeBuilder._(
    validatedValue: 'contraindication',
    system: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Contraindication'.toFhirStringBuilder,
  );

  /// interaction
  static ClinicalUseDefinitionTypeBuilder interaction =
      ClinicalUseDefinitionTypeBuilder._(
    validatedValue: 'interaction',
    system: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Interaction'.toFhirStringBuilder,
  );

  /// undesirable_effect
  static ClinicalUseDefinitionTypeBuilder undesirable_effect =
      ClinicalUseDefinitionTypeBuilder._(
    validatedValue: 'undesirable-effect',
    system: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Undesirable Effect'.toFhirStringBuilder,
  );

  /// warning
  static ClinicalUseDefinitionTypeBuilder warning =
      ClinicalUseDefinitionTypeBuilder._(
    validatedValue: 'warning',
    system: 'http://hl7.org/fhir/ValueSet/clinical-use-definition-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Warning'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ClinicalUseDefinitionTypeBuilder elementOnly =
      ClinicalUseDefinitionTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ClinicalUseDefinitionTypeBuilder> values = [
    indication,
    contraindication,
    interaction,
    undesirable_effect,
    warning,
  ];

  /// Clones the current instance
  @override
  ClinicalUseDefinitionTypeBuilder clone() =>
      ClinicalUseDefinitionTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionTypeBuilder withElement(ElementBuilder? newElement) {
    return ClinicalUseDefinitionTypeBuilder._(
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
  ClinicalUseDefinitionTypeBuilder copyWith({
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
    return ClinicalUseDefinitionTypeBuilder._(
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
