part of '../primitive_types.dart';

/// Actual enum for StructureMapGroupTypeMode
enum StructureMapGroupTypeModeBuilderEnum {
  /// none
  none,

  /// types
  types,

  /// type-and-types
  typeAndTypes,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapGroupTypeModeBuilderEnum.none:
        return 'none';
      case StructureMapGroupTypeModeBuilderEnum.types:
        return 'types';
      case StructureMapGroupTypeModeBuilderEnum.typeAndTypes:
        return 'type-and-types';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapGroupTypeModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapGroupTypeModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapGroupTypeModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'none':
        return StructureMapGroupTypeModeBuilderEnum.none;
      case 'types':
        return StructureMapGroupTypeModeBuilderEnum.types;
      case 'type-and-types':
        return StructureMapGroupTypeModeBuilderEnum.typeAndTypes;
    }
    return null;
  }
}

/// If this is the default rule set to apply for the source type, or this
/// combination of types.
class StructureMapGroupTypeModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapGroupTypeModeBuilder._({
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
  factory StructureMapGroupTypeModeBuilder(
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
    final valueEnum = StructureMapGroupTypeModeBuilderEnum.fromString(
      valueString,
    );
    return StructureMapGroupTypeModeBuilder._(
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

  /// Create empty [StructureMapGroupTypeModeBuilder]
  /// with element only
  factory StructureMapGroupTypeModeBuilder.empty() =>
      StructureMapGroupTypeModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [StructureMapGroupTypeModeBuilder] from JSON.
  factory StructureMapGroupTypeModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapGroupTypeModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapGroupTypeModeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapGroupTypeModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for StructureMapGroupTypeModeBuilder
  final StructureMapGroupTypeModeBuilderEnum? valueEnum;

  /// none
  static StructureMapGroupTypeModeBuilder none =
      StructureMapGroupTypeModeBuilder._(
    valueString: 'none',
    valueEnum: StructureMapGroupTypeModeBuilderEnum.none,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-group-type-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not a Default',
    ),
  );

  /// types
  static StructureMapGroupTypeModeBuilder types =
      StructureMapGroupTypeModeBuilder._(
    valueString: 'types',
    valueEnum: StructureMapGroupTypeModeBuilderEnum.types,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-group-type-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Default for Type Combination',
    ),
  );

  /// type_and_types
  static StructureMapGroupTypeModeBuilder typeAndTypes =
      StructureMapGroupTypeModeBuilder._(
    valueString: 'type-and-types',
    valueEnum: StructureMapGroupTypeModeBuilderEnum.typeAndTypes,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-group-type-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Default for type + combination',
    ),
  );

  /// For instances where an Element is present but not value
  static StructureMapGroupTypeModeBuilder elementOnly =
      StructureMapGroupTypeModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<StructureMapGroupTypeModeBuilder> values = [
    none,
    types,
    typeAndTypes,
  ];

  /// Returns the enum value with an element attached
  StructureMapGroupTypeModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return StructureMapGroupTypeModeBuilder._(
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
