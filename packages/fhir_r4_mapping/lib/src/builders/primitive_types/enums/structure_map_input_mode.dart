part of '../primitive_types.dart';

/// Actual enum for StructureMapInputMode
enum StructureMapInputModeBuilderEnum {
  /// source
  source,

  /// target
  target,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapInputModeBuilderEnum.source:
        return 'source';
      case StructureMapInputModeBuilderEnum.target:
        return 'target';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapInputModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapInputModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapInputModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'source':
        return StructureMapInputModeBuilderEnum.source;
      case 'target':
        return StructureMapInputModeBuilderEnum.target;
    }
    return null;
  }
}

/// Mode for this instance of data.
class StructureMapInputModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapInputModeBuilder._({
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
  factory StructureMapInputModeBuilder(
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
    final valueEnum = StructureMapInputModeBuilderEnum.fromString(
      valueString,
    );
    return StructureMapInputModeBuilder._(
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

  /// Create empty [StructureMapInputModeBuilder]
  /// with element only
  factory StructureMapInputModeBuilder.empty() =>
      StructureMapInputModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [StructureMapInputModeBuilder] from JSON.
  factory StructureMapInputModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapInputModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapInputModeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapInputModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for StructureMapInputModeBuilder
  final StructureMapInputModeBuilderEnum? valueEnum;

  /// source
  static StructureMapInputModeBuilder source = StructureMapInputModeBuilder._(
    valueString: 'source',
    valueEnum: StructureMapInputModeBuilderEnum.source,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-input-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Source Instance',
    ),
  );

  /// target
  static StructureMapInputModeBuilder target = StructureMapInputModeBuilder._(
    valueString: 'target',
    valueEnum: StructureMapInputModeBuilderEnum.target,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-input-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Target Instance',
    ),
  );

  /// For instances where an Element is present but not value
  static StructureMapInputModeBuilder elementOnly =
      StructureMapInputModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<StructureMapInputModeBuilder> values = [
    source,
    target,
  ];

  /// Returns the enum value with an element attached
  StructureMapInputModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return StructureMapInputModeBuilder._(
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
