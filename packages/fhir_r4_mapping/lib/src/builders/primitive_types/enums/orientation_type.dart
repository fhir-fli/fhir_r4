part of '../primitive_types.dart';

/// Actual enum for OrientationType
enum OrientationTypeBuilderEnum {
  /// sense
  sense,

  /// antisense
  antisense,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case OrientationTypeBuilderEnum.sense:
        return 'sense';
      case OrientationTypeBuilderEnum.antisense:
        return 'antisense';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static OrientationTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return OrientationTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static OrientationTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'sense':
        return OrientationTypeBuilderEnum.sense;
      case 'antisense':
        return OrientationTypeBuilderEnum.antisense;
    }
    return null;
  }
}

/// Type for orientation.
class OrientationTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  OrientationTypeBuilder._({
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
  factory OrientationTypeBuilder(
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
    final valueEnum = OrientationTypeBuilderEnum.fromString(
      valueString,
    );
    return OrientationTypeBuilder._(
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

  /// Create empty [OrientationTypeBuilder]
  /// with element only
  factory OrientationTypeBuilder.empty() =>
      OrientationTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [OrientationTypeBuilder] from JSON.
  factory OrientationTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrientationTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OrientationTypeBuilder cannot be constructed from JSON.',
      );
    }
    return OrientationTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for OrientationTypeBuilder
  final OrientationTypeBuilderEnum? valueEnum;

  /// sense
  static OrientationTypeBuilder sense = OrientationTypeBuilder._(
    valueString: 'sense',
    valueEnum: OrientationTypeBuilderEnum.sense,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/orientation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Sense orientation of referenceSeq',
    ),
  );

  /// antisense
  static OrientationTypeBuilder antisense = OrientationTypeBuilder._(
    valueString: 'antisense',
    valueEnum: OrientationTypeBuilderEnum.antisense,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/orientation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Antisense orientation of referenceSeq',
    ),
  );

  /// For instances where an Element is present but not value
  static OrientationTypeBuilder elementOnly = OrientationTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<OrientationTypeBuilder> values = [
    sense,
    antisense,
  ];

  /// Returns the enum value with an element attached
  OrientationTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return OrientationTypeBuilder._(
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
