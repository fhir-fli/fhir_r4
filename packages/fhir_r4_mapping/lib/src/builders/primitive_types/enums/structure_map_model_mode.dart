// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for StructureMapModelMode
enum StructureMapModelModeBuilderEnum {
  /// source
  source,

  /// queried
  queried,

  /// target
  target,

  /// produced
  produced,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapModelModeBuilderEnum.source:
        return 'source';
      case StructureMapModelModeBuilderEnum.queried:
        return 'queried';
      case StructureMapModelModeBuilderEnum.target:
        return 'target';
      case StructureMapModelModeBuilderEnum.produced:
        return 'produced';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapModelModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapModelModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapModelModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'source':
        return StructureMapModelModeBuilderEnum.source;
      case 'queried':
        return StructureMapModelModeBuilderEnum.queried;
      case 'target':
        return StructureMapModelModeBuilderEnum.target;
      case 'produced':
        return StructureMapModelModeBuilderEnum.produced;
    }
    return null;
  }
}

/// How the referenced structure is used in this mapping.
class StructureMapModelModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapModelModeBuilder._({
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
  factory StructureMapModelModeBuilder(
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
    final valueEnum = StructureMapModelModeBuilderEnum.fromString(
      valueString,
    );
    return StructureMapModelModeBuilder._(
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

  /// Create empty [StructureMapModelModeBuilder]
  /// with element only
  factory StructureMapModelModeBuilder.empty() =>
      StructureMapModelModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [StructureMapModelModeBuilder] from JSON.
  factory StructureMapModelModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapModelModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapModelModeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapModelModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for StructureMapModelModeBuilder
  final StructureMapModelModeBuilderEnum? valueEnum;

  /// source
  static StructureMapModelModeBuilder source = StructureMapModelModeBuilder._(
    valueString: 'source',
    valueEnum: StructureMapModelModeBuilderEnum.source,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-model-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Source Structure Definition',
    ),
  );

  /// queried
  static StructureMapModelModeBuilder queried = StructureMapModelModeBuilder._(
    valueString: 'queried',
    valueEnum: StructureMapModelModeBuilderEnum.queried,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-model-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Queried Structure Definition',
    ),
  );

  /// target
  static StructureMapModelModeBuilder target = StructureMapModelModeBuilder._(
    valueString: 'target',
    valueEnum: StructureMapModelModeBuilderEnum.target,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-model-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Target Structure Definition',
    ),
  );

  /// produced
  static StructureMapModelModeBuilder produced = StructureMapModelModeBuilder._(
    valueString: 'produced',
    valueEnum: StructureMapModelModeBuilderEnum.produced,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-model-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Produced Structure Definition',
    ),
  );

  /// For instances where an Element is present but not value
  static StructureMapModelModeBuilder elementOnly =
      StructureMapModelModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<StructureMapModelModeBuilder> values = [
    source,
    queried,
    target,
    produced,
  ];

  /// Returns the enum value with an element attached
  StructureMapModelModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return StructureMapModelModeBuilder._(
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
