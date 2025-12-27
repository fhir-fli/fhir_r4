part of '../primitive_types.dart';

/// Actual enum for ObservationRangeCategory
enum ObservationRangeCategoryBuilderEnum {
  /// reference
  reference,

  /// critical
  critical,

  /// absolute
  absolute,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ObservationRangeCategoryBuilderEnum.reference:
        return 'reference';
      case ObservationRangeCategoryBuilderEnum.critical:
        return 'critical';
      case ObservationRangeCategoryBuilderEnum.absolute:
        return 'absolute';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ObservationRangeCategoryBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ObservationRangeCategoryBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ObservationRangeCategoryBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'reference':
        return ObservationRangeCategoryBuilderEnum.reference;
      case 'critical':
        return ObservationRangeCategoryBuilderEnum.critical;
      case 'absolute':
        return ObservationRangeCategoryBuilderEnum.absolute;
    }
    return null;
  }
}

/// Codes identifying the category of observation range.
class ObservationRangeCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ObservationRangeCategoryBuilder._({
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
  factory ObservationRangeCategoryBuilder(
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
    final valueEnum = ObservationRangeCategoryBuilderEnum.fromString(
      valueString,
    );
    return ObservationRangeCategoryBuilder._(
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

  /// Create empty [ObservationRangeCategoryBuilder]
  /// with element only
  factory ObservationRangeCategoryBuilder.empty() =>
      ObservationRangeCategoryBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ObservationRangeCategoryBuilder] from JSON.
  factory ObservationRangeCategoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationRangeCategoryBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationRangeCategoryBuilder cannot be constructed from JSON.',
      );
    }
    return ObservationRangeCategoryBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ObservationRangeCategoryBuilder
  final ObservationRangeCategoryBuilderEnum? valueEnum;

  /// reference
  static ObservationRangeCategoryBuilder reference =
      ObservationRangeCategoryBuilder._(
    valueString: 'reference',
    valueEnum: ObservationRangeCategoryBuilderEnum.reference,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-range-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'reference range',
    ),
  );

  /// critical
  static ObservationRangeCategoryBuilder critical =
      ObservationRangeCategoryBuilder._(
    valueString: 'critical',
    valueEnum: ObservationRangeCategoryBuilderEnum.critical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-range-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'critical range',
    ),
  );

  /// absolute
  static ObservationRangeCategoryBuilder absolute =
      ObservationRangeCategoryBuilder._(
    valueString: 'absolute',
    valueEnum: ObservationRangeCategoryBuilderEnum.absolute,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-range-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'absolute range',
    ),
  );

  /// For instances where an Element is present but not value
  static ObservationRangeCategoryBuilder elementOnly =
      ObservationRangeCategoryBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ObservationRangeCategoryBuilder> values = [
    reference,
    critical,
    absolute,
  ];

  /// Returns the enum value with an element attached
  ObservationRangeCategoryBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ObservationRangeCategoryBuilder._(
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
