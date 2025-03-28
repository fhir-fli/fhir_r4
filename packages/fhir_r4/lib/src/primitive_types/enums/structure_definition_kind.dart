// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines the type of structure that a definition is describing.
class StructureDefinitionKind extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  StructureDefinitionKind._({
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
  factory StructureDefinitionKind(
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
    return StructureDefinitionKind._(
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

  /// Create empty [StructureDefinitionKind] with element only
  factory StructureDefinitionKind.empty() =>
      StructureDefinitionKind._(validatedValue: '');

  /// Factory constructor to create [StructureDefinitionKind] from JSON.
  factory StructureDefinitionKind.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureDefinitionKind.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureDefinitionKind cannot be constructed from JSON.',
      );
    }
    return StructureDefinitionKind._(
      validatedValue: value,
      element: element,
    );
  }

  /// primitive_type
  static final StructureDefinitionKind primitive_type =
      StructureDefinitionKind._(
    validatedValue: 'primitive-type',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Primitive Data Type'.toFhirString,
  );

  /// complex_type
  static final StructureDefinitionKind complex_type = StructureDefinitionKind._(
    validatedValue: 'complex-type',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Complex Data Type'.toFhirString,
  );

  /// resource
  static final StructureDefinitionKind resource = StructureDefinitionKind._(
    validatedValue: 'resource',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resource'.toFhirString,
  );

  /// logical
  static final StructureDefinitionKind logical = StructureDefinitionKind._(
    validatedValue: 'logical',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Logical'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final StructureDefinitionKind elementOnly =
      StructureDefinitionKind._(validatedValue: '');

  /// List of all enum-like values
  static final List<StructureDefinitionKind> values = [
    primitive_type,
    complex_type,
    resource,
    logical,
  ];

  /// Clones the current instance
  @override
  StructureDefinitionKind clone() => StructureDefinitionKind._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureDefinitionKind withElement(Element? newElement) {
    return StructureDefinitionKind._(
        validatedValue: value, element: newElement,);
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
  StructureDefinitionKind copyWith({
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
    return StructureDefinitionKind._(
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
