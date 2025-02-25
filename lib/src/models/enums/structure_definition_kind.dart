// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Defines the type of structure that a definition is describing.
class StructureDefinitionKind extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  StructureDefinitionKind._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [StructureDefinitionKind] with element only
  factory StructureDefinitionKind.empty() => StructureDefinitionKind._('');

  /// Factory constructor to create [StructureDefinitionKind] from JSON.
  factory StructureDefinitionKind.fromJson(
    Map<String, dynamic> json,
  ) {
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
      value,
      element: element,
    );
  }

  /// primitive_type
  static final StructureDefinitionKind primitive_type =
      StructureDefinitionKind._(
    'primitive-type',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Primitive Data Type'.toFhirString,
  );

  /// complex_type
  static final StructureDefinitionKind complex_type = StructureDefinitionKind._(
    'complex-type',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Complex Data Type'.toFhirString,
  );

  /// resource
  static final StructureDefinitionKind resource = StructureDefinitionKind._(
    'resource',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Resource'.toFhirString,
  );

  /// logical
  static final StructureDefinitionKind logical = StructureDefinitionKind._(
    'logical',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Logical'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final StructureDefinitionKind elementOnly =
      StructureDefinitionKind._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureDefinitionKind withElement(Element? newElement) {
    return StructureDefinitionKind._(
      value,
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
      newValue ?? value,
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
