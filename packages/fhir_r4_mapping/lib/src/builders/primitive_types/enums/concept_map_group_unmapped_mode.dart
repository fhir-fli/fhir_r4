part of '../primitive_types.dart';

/// Actual enum for ConceptMapGroupUnmappedMode
enum ConceptMapGroupUnmappedModeBuilderEnum {
  /// provided
  provided,

  /// fixed
  fixed,

  /// other-map
  otherMap,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConceptMapGroupUnmappedModeBuilderEnum.provided:
        return 'provided';
      case ConceptMapGroupUnmappedModeBuilderEnum.fixed:
        return 'fixed';
      case ConceptMapGroupUnmappedModeBuilderEnum.otherMap:
        return 'other-map';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConceptMapGroupUnmappedModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConceptMapGroupUnmappedModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConceptMapGroupUnmappedModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'provided':
        return ConceptMapGroupUnmappedModeBuilderEnum.provided;
      case 'fixed':
        return ConceptMapGroupUnmappedModeBuilderEnum.fixed;
      case 'other-map':
        return ConceptMapGroupUnmappedModeBuilderEnum.otherMap;
    }
    return null;
  }
}

/// Defines which action to take if there is no match in the group.
class ConceptMapGroupUnmappedModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConceptMapGroupUnmappedModeBuilder._({
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
  factory ConceptMapGroupUnmappedModeBuilder(
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
    final valueEnum = ConceptMapGroupUnmappedModeBuilderEnum.fromString(
      valueString,
    );
    return ConceptMapGroupUnmappedModeBuilder._(
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

  /// Create empty [ConceptMapGroupUnmappedModeBuilder]
  /// with element only
  factory ConceptMapGroupUnmappedModeBuilder.empty() =>
      ConceptMapGroupUnmappedModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConceptMapGroupUnmappedModeBuilder] from JSON.
  factory ConceptMapGroupUnmappedModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConceptMapGroupUnmappedModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConceptMapGroupUnmappedModeBuilder cannot be constructed from JSON.',
      );
    }
    return ConceptMapGroupUnmappedModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConceptMapGroupUnmappedModeBuilder
  final ConceptMapGroupUnmappedModeBuilderEnum? valueEnum;

  /// provided
  static ConceptMapGroupUnmappedModeBuilder provided =
      ConceptMapGroupUnmappedModeBuilder._(
    valueString: 'provided',
    valueEnum: ConceptMapGroupUnmappedModeBuilderEnum.provided,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Provided Code',
    ),
  );

  /// fixed
  static ConceptMapGroupUnmappedModeBuilder fixed =
      ConceptMapGroupUnmappedModeBuilder._(
    valueString: 'fixed',
    valueEnum: ConceptMapGroupUnmappedModeBuilderEnum.fixed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Fixed Code',
    ),
  );

  /// other_map
  static ConceptMapGroupUnmappedModeBuilder otherMap =
      ConceptMapGroupUnmappedModeBuilder._(
    valueString: 'other-map',
    valueEnum: ConceptMapGroupUnmappedModeBuilderEnum.otherMap,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conceptmap-unmapped-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Other Map',
    ),
  );

  /// For instances where an Element is present but not value
  static ConceptMapGroupUnmappedModeBuilder elementOnly =
      ConceptMapGroupUnmappedModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConceptMapGroupUnmappedModeBuilder> values = [
    provided,
    fixed,
    otherMap,
  ];

  /// Returns the enum value with an element attached
  ConceptMapGroupUnmappedModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConceptMapGroupUnmappedModeBuilder._(
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
