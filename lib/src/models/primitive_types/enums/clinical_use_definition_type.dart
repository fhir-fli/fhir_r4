// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Overall defining type of this clinical use definition.
class ClinicalUseDefinitionType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ClinicalUseDefinitionType._({
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
  factory ClinicalUseDefinitionType(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return ClinicalUseDefinitionType._(
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

  /// Create empty [ClinicalUseDefinitionType] with element only
  factory ClinicalUseDefinitionType.empty() =>
      ClinicalUseDefinitionType._(validatedValue: '');

  /// Factory constructor to create [ClinicalUseDefinitionType] from JSON.
  factory ClinicalUseDefinitionType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalUseDefinitionType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalUseDefinitionType cannot be constructed from JSON.',
      );
    }
    return ClinicalUseDefinitionType._(validatedValue: value, element: element);
  }

  /// indication
  static final ClinicalUseDefinitionType indication =
      ClinicalUseDefinitionType._(
    validatedValue: 'indication',
    system:
        'http://hl7.org/fhir/ValueSet/clinical-use-definition-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Indication'.toFhirString,
  );

  /// contraindication
  static final ClinicalUseDefinitionType contraindication =
      ClinicalUseDefinitionType._(
    validatedValue: 'contraindication',
    system:
        'http://hl7.org/fhir/ValueSet/clinical-use-definition-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Contraindication'.toFhirString,
  );

  /// interaction
  static final ClinicalUseDefinitionType interaction =
      ClinicalUseDefinitionType._(
    validatedValue: 'interaction',
    system:
        'http://hl7.org/fhir/ValueSet/clinical-use-definition-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Interaction'.toFhirString,
  );

  /// undesirable_effect
  static final ClinicalUseDefinitionType undesirable_effect =
      ClinicalUseDefinitionType._(
    validatedValue: 'undesirable-effect',
    system:
        'http://hl7.org/fhir/ValueSet/clinical-use-definition-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Undesirable Effect'.toFhirString,
  );

  /// warning
  static final ClinicalUseDefinitionType warning = ClinicalUseDefinitionType._(
    validatedValue: 'warning',
    system:
        'http://hl7.org/fhir/ValueSet/clinical-use-definition-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Warning'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ClinicalUseDefinitionType elementOnly =
      ClinicalUseDefinitionType._(validatedValue: '');

  /// List of all enum-like values
  static final List<ClinicalUseDefinitionType> values = [
    indication,
    contraindication,
    interaction,
    undesirable_effect,
    warning,
  ];

  /// Clones the current instance
  @override
  ClinicalUseDefinitionType clone() => ClinicalUseDefinitionType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ClinicalUseDefinitionType withElement(Element? newElement) {
    return ClinicalUseDefinitionType._(
      validatedValue: value,
      element: newElement,
    );
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
  ClinicalUseDefinitionType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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
    return ClinicalUseDefinitionType._(
      validatedValue: newValue ?? value,
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
