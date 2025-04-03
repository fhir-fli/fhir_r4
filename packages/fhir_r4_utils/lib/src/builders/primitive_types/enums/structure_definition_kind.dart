// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Defines the type of structure that a definition is describing.
class StructureDefinitionKindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureDefinitionKindBuilder._({
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
  factory StructureDefinitionKindBuilder(
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
    return StructureDefinitionKindBuilder._(
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

  /// Create empty [StructureDefinitionKindBuilder] with element only
  factory StructureDefinitionKindBuilder.empty() =>
      StructureDefinitionKindBuilder._(valueString: '');

  /// Factory constructor to create [StructureDefinitionKindBuilder]
  /// from JSON.
  factory StructureDefinitionKindBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureDefinitionKindBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureDefinitionKindBuilder cannot be constructed from JSON.',
      );
    }
    return StructureDefinitionKindBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// primitive_type
  static StructureDefinitionKindBuilder primitive_type =
      StructureDefinitionKindBuilder._(
    valueString: 'primitive-type',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Primitive Data Type'.toFhirStringBuilder,
  );

  /// complex_type
  static StructureDefinitionKindBuilder complex_type =
      StructureDefinitionKindBuilder._(
    valueString: 'complex-type',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Complex Data Type'.toFhirStringBuilder,
  );

  /// resource
  static StructureDefinitionKindBuilder resource =
      StructureDefinitionKindBuilder._(
    valueString: 'resource',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Resource'.toFhirStringBuilder,
  );

  /// logical
  static StructureDefinitionKindBuilder logical =
      StructureDefinitionKindBuilder._(
    valueString: 'logical',
    system: 'http://hl7.org/fhir/ValueSet/structure-definition-kind'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Logical'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static StructureDefinitionKindBuilder elementOnly =
      StructureDefinitionKindBuilder._(valueString: '');

  /// List of all enum-like values
  static List<StructureDefinitionKindBuilder> values = [
    primitive_type,
    complex_type,
    resource,
    logical,
  ];

  /// Clones the current instance
  @override
  StructureDefinitionKindBuilder clone() => StructureDefinitionKindBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  StructureDefinitionKindBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return StructureDefinitionKindBuilder._(
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
  StructureDefinitionKindBuilder copyWith({
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
        'Invalid input for StructureDefinitionKind: $newValue',
      );
    }
    return StructureDefinitionKindBuilder._(
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
