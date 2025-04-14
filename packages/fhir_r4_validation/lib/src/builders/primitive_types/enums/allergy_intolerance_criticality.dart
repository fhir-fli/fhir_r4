// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AllergyIntoleranceCriticality
enum AllergyIntoleranceCriticalityBuilderEnum {
  /// low
  low,

  /// high
  high,

  /// unable-to-assess
  unableToAssess,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AllergyIntoleranceCriticalityBuilderEnum.low:
        return 'low';
      case AllergyIntoleranceCriticalityBuilderEnum.high:
        return 'high';
      case AllergyIntoleranceCriticalityBuilderEnum.unableToAssess:
        return 'unable-to-assess';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AllergyIntoleranceCriticalityBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AllergyIntoleranceCriticalityBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AllergyIntoleranceCriticalityBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'low':
        return AllergyIntoleranceCriticalityBuilderEnum.low;
      case 'high':
        return AllergyIntoleranceCriticalityBuilderEnum.high;
      case 'unable-to-assess':
        return AllergyIntoleranceCriticalityBuilderEnum.unableToAssess;
    }
    return null;
  }
}

/// Estimate of the potential clinical harm, or seriousness, of a reaction
/// to an identified substance.
class AllergyIntoleranceCriticalityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AllergyIntoleranceCriticalityBuilder._({
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
  factory AllergyIntoleranceCriticalityBuilder(
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
    final valueEnum = AllergyIntoleranceCriticalityBuilderEnum.fromString(
      valueString,
    );
    return AllergyIntoleranceCriticalityBuilder._(
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

  /// Create empty [AllergyIntoleranceCriticalityBuilder]
  /// with element only
  factory AllergyIntoleranceCriticalityBuilder.empty() =>
      AllergyIntoleranceCriticalityBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AllergyIntoleranceCriticalityBuilder] from JSON.
  factory AllergyIntoleranceCriticalityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCriticalityBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceCriticalityBuilder cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceCriticalityBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AllergyIntoleranceCriticalityBuilder
  final AllergyIntoleranceCriticalityBuilderEnum? valueEnum;

  /// low
  static AllergyIntoleranceCriticalityBuilder low =
      AllergyIntoleranceCriticalityBuilder._(
    valueString: 'low',
    valueEnum: AllergyIntoleranceCriticalityBuilderEnum.low,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Low Risk',
    ),
  );

  /// high
  static AllergyIntoleranceCriticalityBuilder high =
      AllergyIntoleranceCriticalityBuilder._(
    valueString: 'high',
    valueEnum: AllergyIntoleranceCriticalityBuilderEnum.high,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'High Risk',
    ),
  );

  /// unable_to_assess
  static AllergyIntoleranceCriticalityBuilder unableToAssess =
      AllergyIntoleranceCriticalityBuilder._(
    valueString: 'unable-to-assess',
    valueEnum: AllergyIntoleranceCriticalityBuilderEnum.unableToAssess,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unable to Assess Risk',
    ),
  );

  /// For instances where an Element is present but not value
  static AllergyIntoleranceCriticalityBuilder elementOnly =
      AllergyIntoleranceCriticalityBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AllergyIntoleranceCriticalityBuilder> values = [
    low,
    high,
    unableToAssess,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceCriticalityBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AllergyIntoleranceCriticalityBuilder._(
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
