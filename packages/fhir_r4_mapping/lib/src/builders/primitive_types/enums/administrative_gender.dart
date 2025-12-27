part of '../primitive_types.dart';

/// Actual enum for AdministrativeGender
enum AdministrativeGenderBuilderEnum {
  /// male
  male,

  /// female
  female,

  /// other
  other,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AdministrativeGenderBuilderEnum.male:
        return 'male';
      case AdministrativeGenderBuilderEnum.female:
        return 'female';
      case AdministrativeGenderBuilderEnum.other:
        return 'other';
      case AdministrativeGenderBuilderEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AdministrativeGenderBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AdministrativeGenderBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AdministrativeGenderBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'male':
        return AdministrativeGenderBuilderEnum.male;
      case 'female':
        return AdministrativeGenderBuilderEnum.female;
      case 'other':
        return AdministrativeGenderBuilderEnum.other;
      case 'unknown':
        return AdministrativeGenderBuilderEnum.unknown;
    }
    return null;
  }
}

/// The gender of a person used for administrative purposes.
class AdministrativeGenderBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AdministrativeGenderBuilder._({
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
  factory AdministrativeGenderBuilder(
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
    final valueEnum = AdministrativeGenderBuilderEnum.fromString(
      valueString,
    );
    return AdministrativeGenderBuilder._(
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

  /// Create empty [AdministrativeGenderBuilder]
  /// with element only
  factory AdministrativeGenderBuilder.empty() =>
      AdministrativeGenderBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AdministrativeGenderBuilder] from JSON.
  factory AdministrativeGenderBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrativeGenderBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdministrativeGenderBuilder cannot be constructed from JSON.',
      );
    }
    return AdministrativeGenderBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AdministrativeGenderBuilder
  final AdministrativeGenderBuilderEnum? valueEnum;

  /// male
  static AdministrativeGenderBuilder male = AdministrativeGenderBuilder._(
    valueString: 'male',
    valueEnum: AdministrativeGenderBuilderEnum.male,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/administrative-gender',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Male',
    ),
  );

  /// female
  static AdministrativeGenderBuilder female = AdministrativeGenderBuilder._(
    valueString: 'female',
    valueEnum: AdministrativeGenderBuilderEnum.female,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/administrative-gender',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Female',
    ),
  );

  /// other
  static AdministrativeGenderBuilder other = AdministrativeGenderBuilder._(
    valueString: 'other',
    valueEnum: AdministrativeGenderBuilderEnum.other,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/administrative-gender',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Other',
    ),
  );

  /// unknown
  static AdministrativeGenderBuilder unknown = AdministrativeGenderBuilder._(
    valueString: 'unknown',
    valueEnum: AdministrativeGenderBuilderEnum.unknown,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/administrative-gender',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unknown',
    ),
  );

  /// For instances where an Element is present but not value
  static AdministrativeGenderBuilder elementOnly =
      AdministrativeGenderBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AdministrativeGenderBuilder> values = [
    male,
    female,
    other,
    unknown,
  ];

  /// Returns the enum value with an element attached
  AdministrativeGenderBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AdministrativeGenderBuilder._(
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
