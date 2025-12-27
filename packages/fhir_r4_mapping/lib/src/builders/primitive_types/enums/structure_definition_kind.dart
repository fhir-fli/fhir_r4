part of '../primitive_types.dart';

/// Actual enum for StructureDefinitionKind
enum StructureDefinitionKindBuilderEnum {
  /// primitive-type
  primitiveType,

  /// complex-type
  complexType,

  /// resource
  resource,

  /// logical
  logical,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureDefinitionKindBuilderEnum.primitiveType:
        return 'primitive-type';
      case StructureDefinitionKindBuilderEnum.complexType:
        return 'complex-type';
      case StructureDefinitionKindBuilderEnum.resource:
        return 'resource';
      case StructureDefinitionKindBuilderEnum.logical:
        return 'logical';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureDefinitionKindBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureDefinitionKindBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureDefinitionKindBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'primitive-type':
        return StructureDefinitionKindBuilderEnum.primitiveType;
      case 'complex-type':
        return StructureDefinitionKindBuilderEnum.complexType;
      case 'resource':
        return StructureDefinitionKindBuilderEnum.resource;
      case 'logical':
        return StructureDefinitionKindBuilderEnum.logical;
    }
    return null;
  }
}

/// Defines the type of structure that a definition is describing.
class StructureDefinitionKindBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureDefinitionKindBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = StructureDefinitionKindBuilderEnum.fromString(
      valueString,
    );
    return StructureDefinitionKindBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [StructureDefinitionKindBuilder]
  /// with element only
  factory StructureDefinitionKindBuilder.empty() =>
      StructureDefinitionKindBuilder._(valueString: null);

  /// Factory constructor to create
  /// [StructureDefinitionKindBuilder] from JSON.
  factory StructureDefinitionKindBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureDefinitionKindBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for StructureDefinitionKindBuilder
  final StructureDefinitionKindBuilderEnum? valueEnum;

  /// primitive_type
  static StructureDefinitionKindBuilder primitiveType =
      StructureDefinitionKindBuilder._(
    valueString: 'primitive-type',
    valueEnum: StructureDefinitionKindBuilderEnum.primitiveType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/structure-definition-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Primitive Data Type',
    ),
  );

  /// complex_type
  static StructureDefinitionKindBuilder complexType =
      StructureDefinitionKindBuilder._(
    valueString: 'complex-type',
    valueEnum: StructureDefinitionKindBuilderEnum.complexType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/structure-definition-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Complex Data Type',
    ),
  );

  /// resource
  static StructureDefinitionKindBuilder resource =
      StructureDefinitionKindBuilder._(
    valueString: 'resource',
    valueEnum: StructureDefinitionKindBuilderEnum.resource,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/structure-definition-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Resource',
    ),
  );

  /// logical
  static StructureDefinitionKindBuilder logical =
      StructureDefinitionKindBuilder._(
    valueString: 'logical',
    valueEnum: StructureDefinitionKindBuilderEnum.logical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/structure-definition-kind',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Logical',
    ),
  );

  /// For instances where an Element is present but not value
  static StructureDefinitionKindBuilder elementOnly =
      StructureDefinitionKindBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<StructureDefinitionKindBuilder> values = [
    primitiveType,
    complexType,
    resource,
    logical,
  ];

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
}
