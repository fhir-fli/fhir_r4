// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for StructureMapContextType
enum StructureMapContextTypeBuilderEnum {
  /// type
  type,

  /// variable
  variable,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapContextTypeBuilderEnum.type:
        return 'type';
      case StructureMapContextTypeBuilderEnum.variable:
        return 'variable';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapContextTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapContextTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapContextTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'type':
        return StructureMapContextTypeBuilderEnum.type;
      case 'variable':
        return StructureMapContextTypeBuilderEnum.variable;
    }
    return null;
  }
}

/// How to interpret the context.
class StructureMapContextTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapContextTypeBuilder._({
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
  factory StructureMapContextTypeBuilder(
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
    final valueEnum = StructureMapContextTypeBuilderEnum.fromString(
      valueString,
    );
    return StructureMapContextTypeBuilder._(
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

  /// Create empty [StructureMapContextTypeBuilder]
  /// with element only
  factory StructureMapContextTypeBuilder.empty() =>
      StructureMapContextTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [StructureMapContextTypeBuilder] from JSON.
  factory StructureMapContextTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapContextTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapContextTypeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapContextTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for StructureMapContextTypeBuilder
  final StructureMapContextTypeBuilderEnum? valueEnum;

  /// type
  static StructureMapContextTypeBuilder type = StructureMapContextTypeBuilder._(
    valueString: 'type',
    valueEnum: StructureMapContextTypeBuilderEnum.type,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-context-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Type',
    ),
  );

  /// variable
  static StructureMapContextTypeBuilder variable =
      StructureMapContextTypeBuilder._(
    valueString: 'variable',
    valueEnum: StructureMapContextTypeBuilderEnum.variable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-context-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Variable',
    ),
  );

  /// For instances where an Element is present but not value
  static StructureMapContextTypeBuilder elementOnly =
      StructureMapContextTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<StructureMapContextTypeBuilder> values = [
    type,
    variable,
  ];

  /// Returns the enum value with an element attached
  StructureMapContextTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return StructureMapContextTypeBuilder._(
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
