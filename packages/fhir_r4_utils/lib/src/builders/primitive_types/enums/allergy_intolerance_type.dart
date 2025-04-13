// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AllergyIntoleranceType
enum AllergyIntoleranceTypeBuilderEnum {
  /// allergy
  allergy,

  /// intolerance
  intolerance,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AllergyIntoleranceTypeBuilderEnum.allergy:
        return 'allergy';
      case AllergyIntoleranceTypeBuilderEnum.intolerance:
        return 'intolerance';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AllergyIntoleranceTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AllergyIntoleranceTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AllergyIntoleranceTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'allergy':
        return AllergyIntoleranceTypeBuilderEnum.allergy;
      case 'intolerance':
        return AllergyIntoleranceTypeBuilderEnum.intolerance;
    }
    return null;
  }
}

/// Identification of the underlying physiological mechanism for a Reaction
/// Risk.
class AllergyIntoleranceTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AllergyIntoleranceTypeBuilder._({
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
  factory AllergyIntoleranceTypeBuilder(
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
    final valueEnum = AllergyIntoleranceTypeBuilderEnum.fromString(
      valueString,
    );
    return AllergyIntoleranceTypeBuilder._(
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

  /// Create empty [AllergyIntoleranceTypeBuilder]
  /// with element only
  factory AllergyIntoleranceTypeBuilder.empty() =>
      AllergyIntoleranceTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AllergyIntoleranceTypeBuilder] from JSON.
  factory AllergyIntoleranceTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceTypeBuilder cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AllergyIntoleranceTypeBuilder
  final AllergyIntoleranceTypeBuilderEnum? valueEnum;

  /// allergy
  static AllergyIntoleranceTypeBuilder allergy =
      AllergyIntoleranceTypeBuilder._(
    valueString: 'allergy',
    valueEnum: AllergyIntoleranceTypeBuilderEnum.allergy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Allergy',
    ),
  );

  /// intolerance
  static AllergyIntoleranceTypeBuilder intolerance =
      AllergyIntoleranceTypeBuilder._(
    valueString: 'intolerance',
    valueEnum: AllergyIntoleranceTypeBuilderEnum.intolerance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Intolerance',
    ),
  );

  /// For instances where an Element is present but not value
  static AllergyIntoleranceTypeBuilder elementOnly =
      AllergyIntoleranceTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AllergyIntoleranceTypeBuilder> values = [
    allergy,
    intolerance,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AllergyIntoleranceTypeBuilder._(
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
