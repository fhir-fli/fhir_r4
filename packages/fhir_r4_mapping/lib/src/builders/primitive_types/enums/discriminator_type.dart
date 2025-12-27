part of '../primitive_types.dart';

/// Actual enum for DiscriminatorType
enum DiscriminatorTypeBuilderEnum {
  /// value
  value_,

  /// exists
  exists,

  /// pattern
  pattern,

  /// type
  type,

  /// profile
  profile,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DiscriminatorTypeBuilderEnum.value_:
        return 'value';
      case DiscriminatorTypeBuilderEnum.exists:
        return 'exists';
      case DiscriminatorTypeBuilderEnum.pattern:
        return 'pattern';
      case DiscriminatorTypeBuilderEnum.type:
        return 'type';
      case DiscriminatorTypeBuilderEnum.profile:
        return 'profile';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DiscriminatorTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DiscriminatorTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DiscriminatorTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'value':
        return DiscriminatorTypeBuilderEnum.value_;
      case 'exists':
        return DiscriminatorTypeBuilderEnum.exists;
      case 'pattern':
        return DiscriminatorTypeBuilderEnum.pattern;
      case 'type':
        return DiscriminatorTypeBuilderEnum.type;
      case 'profile':
        return DiscriminatorTypeBuilderEnum.profile;
    }
    return null;
  }
}

/// How an element value is interpreted when discrimination is evaluated.
class DiscriminatorTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DiscriminatorTypeBuilder._({
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
  factory DiscriminatorTypeBuilder(
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
    final valueEnum = DiscriminatorTypeBuilderEnum.fromString(
      valueString,
    );
    return DiscriminatorTypeBuilder._(
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

  /// Create empty [DiscriminatorTypeBuilder]
  /// with element only
  factory DiscriminatorTypeBuilder.empty() =>
      DiscriminatorTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DiscriminatorTypeBuilder] from JSON.
  factory DiscriminatorTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiscriminatorTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DiscriminatorTypeBuilder cannot be constructed from JSON.',
      );
    }
    return DiscriminatorTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DiscriminatorTypeBuilder
  final DiscriminatorTypeBuilderEnum? valueEnum;

  /// value
  static DiscriminatorTypeBuilder value_ = DiscriminatorTypeBuilder._(
    valueString: 'value',
    valueEnum: DiscriminatorTypeBuilderEnum.value_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/discriminator-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Value',
    ),
  );

  /// exists
  static DiscriminatorTypeBuilder exists = DiscriminatorTypeBuilder._(
    valueString: 'exists',
    valueEnum: DiscriminatorTypeBuilderEnum.exists,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/discriminator-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Exists',
    ),
  );

  /// pattern
  static DiscriminatorTypeBuilder pattern = DiscriminatorTypeBuilder._(
    valueString: 'pattern',
    valueEnum: DiscriminatorTypeBuilderEnum.pattern,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/discriminator-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Pattern',
    ),
  );

  /// type
  static DiscriminatorTypeBuilder type = DiscriminatorTypeBuilder._(
    valueString: 'type',
    valueEnum: DiscriminatorTypeBuilderEnum.type,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/discriminator-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Type',
    ),
  );

  /// profile
  static DiscriminatorTypeBuilder profile = DiscriminatorTypeBuilder._(
    valueString: 'profile',
    valueEnum: DiscriminatorTypeBuilderEnum.profile,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/discriminator-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Profile',
    ),
  );

  /// For instances where an Element is present but not value
  static DiscriminatorTypeBuilder elementOnly = DiscriminatorTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DiscriminatorTypeBuilder> values = [
    value_,
    exists,
    pattern,
    type,
    profile,
  ];

  /// Returns the enum value with an element attached
  DiscriminatorTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DiscriminatorTypeBuilder._(
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
