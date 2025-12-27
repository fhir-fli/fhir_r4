part of '../primitive_types.dart';

/// Actual enum for AllergyIntoleranceSeverity
enum AllergyIntoleranceSeverityBuilderEnum {
  /// mild
  mild,

  /// moderate
  moderate,

  /// severe
  severe,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AllergyIntoleranceSeverityBuilderEnum.mild:
        return 'mild';
      case AllergyIntoleranceSeverityBuilderEnum.moderate:
        return 'moderate';
      case AllergyIntoleranceSeverityBuilderEnum.severe:
        return 'severe';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AllergyIntoleranceSeverityBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AllergyIntoleranceSeverityBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AllergyIntoleranceSeverityBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'mild':
        return AllergyIntoleranceSeverityBuilderEnum.mild;
      case 'moderate':
        return AllergyIntoleranceSeverityBuilderEnum.moderate;
      case 'severe':
        return AllergyIntoleranceSeverityBuilderEnum.severe;
    }
    return null;
  }
}

/// Clinical assessment of the severity of a reaction event as a whole,
/// potentially considering multiple different manifestations.
class AllergyIntoleranceSeverityBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AllergyIntoleranceSeverityBuilder._({
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
  factory AllergyIntoleranceSeverityBuilder(
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
    final valueEnum = AllergyIntoleranceSeverityBuilderEnum.fromString(
      valueString,
    );
    return AllergyIntoleranceSeverityBuilder._(
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

  /// Create empty [AllergyIntoleranceSeverityBuilder]
  /// with element only
  factory AllergyIntoleranceSeverityBuilder.empty() =>
      AllergyIntoleranceSeverityBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AllergyIntoleranceSeverityBuilder] from JSON.
  factory AllergyIntoleranceSeverityBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceSeverityBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceSeverityBuilder cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceSeverityBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AllergyIntoleranceSeverityBuilder
  final AllergyIntoleranceSeverityBuilderEnum? valueEnum;

  /// mild
  static AllergyIntoleranceSeverityBuilder mild =
      AllergyIntoleranceSeverityBuilder._(
    valueString: 'mild',
    valueEnum: AllergyIntoleranceSeverityBuilderEnum.mild,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reaction-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Mild',
    ),
  );

  /// moderate
  static AllergyIntoleranceSeverityBuilder moderate =
      AllergyIntoleranceSeverityBuilder._(
    valueString: 'moderate',
    valueEnum: AllergyIntoleranceSeverityBuilderEnum.moderate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reaction-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Moderate',
    ),
  );

  /// severe
  static AllergyIntoleranceSeverityBuilder severe =
      AllergyIntoleranceSeverityBuilder._(
    valueString: 'severe',
    valueEnum: AllergyIntoleranceSeverityBuilderEnum.severe,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/reaction-event-severity',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Severe',
    ),
  );

  /// For instances where an Element is present but not value
  static AllergyIntoleranceSeverityBuilder elementOnly =
      AllergyIntoleranceSeverityBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AllergyIntoleranceSeverityBuilder> values = [
    mild,
    moderate,
    severe,
  ];

  /// Returns the enum value with an element attached
  AllergyIntoleranceSeverityBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AllergyIntoleranceSeverityBuilder._(
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
