// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AllergyIntoleranceCategory
enum AllergyIntoleranceCategoryBuilderEnum {
  /// food
  food,

  /// medication
  medication,

  /// environment
  environment,

  /// biologic
  biologic,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AllergyIntoleranceCategoryBuilderEnum.food:
        return 'food';
      case AllergyIntoleranceCategoryBuilderEnum.medication:
        return 'medication';
      case AllergyIntoleranceCategoryBuilderEnum.environment:
        return 'environment';
      case AllergyIntoleranceCategoryBuilderEnum.biologic:
        return 'biologic';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AllergyIntoleranceCategoryBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AllergyIntoleranceCategoryBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AllergyIntoleranceCategoryBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'food':
        return AllergyIntoleranceCategoryBuilderEnum.food;
      case 'medication':
        return AllergyIntoleranceCategoryBuilderEnum.medication;
      case 'environment':
        return AllergyIntoleranceCategoryBuilderEnum.environment;
      case 'biologic':
        return AllergyIntoleranceCategoryBuilderEnum.biologic;
    }
    return null;
  }
}

/// Category of an identified substance associated with allergies or
/// intolerances.
class AllergyIntoleranceCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AllergyIntoleranceCategoryBuilder._({
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
  factory AllergyIntoleranceCategoryBuilder(
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
    final valueEnum = AllergyIntoleranceCategoryBuilderEnum.fromString(
      valueString,
    );
    return AllergyIntoleranceCategoryBuilder._(
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

  /// Create empty [AllergyIntoleranceCategoryBuilder]
  /// with element only
  factory AllergyIntoleranceCategoryBuilder.empty() =>
      AllergyIntoleranceCategoryBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AllergyIntoleranceCategoryBuilder] from JSON.
  factory AllergyIntoleranceCategoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCategoryBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceCategoryBuilder cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceCategoryBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AllergyIntoleranceCategoryBuilder
  final AllergyIntoleranceCategoryBuilderEnum? valueEnum;

  /// food
  static AllergyIntoleranceCategoryBuilder food =
      AllergyIntoleranceCategoryBuilder._(
    valueString: 'food',
    valueEnum: AllergyIntoleranceCategoryBuilderEnum.food,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Food',
    ),
  );

  /// medication
  static AllergyIntoleranceCategoryBuilder medication =
      AllergyIntoleranceCategoryBuilder._(
    valueString: 'medication',
    valueEnum: AllergyIntoleranceCategoryBuilderEnum.medication,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Medication',
    ),
  );

  /// environment
  static AllergyIntoleranceCategoryBuilder environment =
      AllergyIntoleranceCategoryBuilder._(
    valueString: 'environment',
    valueEnum: AllergyIntoleranceCategoryBuilderEnum.environment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Environment',
    ),
  );

  /// biologic
  static AllergyIntoleranceCategoryBuilder biologic =
      AllergyIntoleranceCategoryBuilder._(
    valueString: 'biologic',
    valueEnum: AllergyIntoleranceCategoryBuilderEnum.biologic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Biologic',
    ),
  );

  /// For instances where an Element is present but not value
  static AllergyIntoleranceCategoryBuilder elementOnly =
      AllergyIntoleranceCategoryBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AllergyIntoleranceCategoryBuilder> values = [
    food,
    medication,
    environment,
    biologic,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceCategoryBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AllergyIntoleranceCategoryBuilder._(
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
