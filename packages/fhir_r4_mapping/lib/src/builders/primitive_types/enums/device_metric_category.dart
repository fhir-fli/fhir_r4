part of '../primitive_types.dart';

/// Actual enum for DeviceMetricCategory
enum DeviceMetricCategoryBuilderEnum {
  /// measurement
  measurement,

  /// setting
  setting,

  /// calculation
  calculation,

  /// unspecified
  unspecified,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceMetricCategoryBuilderEnum.measurement:
        return 'measurement';
      case DeviceMetricCategoryBuilderEnum.setting:
        return 'setting';
      case DeviceMetricCategoryBuilderEnum.calculation:
        return 'calculation';
      case DeviceMetricCategoryBuilderEnum.unspecified:
        return 'unspecified';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceMetricCategoryBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceMetricCategoryBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceMetricCategoryBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'measurement':
        return DeviceMetricCategoryBuilderEnum.measurement;
      case 'setting':
        return DeviceMetricCategoryBuilderEnum.setting;
      case 'calculation':
        return DeviceMetricCategoryBuilderEnum.calculation;
      case 'unspecified':
        return DeviceMetricCategoryBuilderEnum.unspecified;
    }
    return null;
  }
}

/// Describes the category of the metric.
class DeviceMetricCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceMetricCategoryBuilder._({
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
  factory DeviceMetricCategoryBuilder(
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
    final valueEnum = DeviceMetricCategoryBuilderEnum.fromString(
      valueString,
    );
    return DeviceMetricCategoryBuilder._(
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

  /// Create empty [DeviceMetricCategoryBuilder]
  /// with element only
  factory DeviceMetricCategoryBuilder.empty() =>
      DeviceMetricCategoryBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceMetricCategoryBuilder] from JSON.
  factory DeviceMetricCategoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCategoryBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCategoryBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCategoryBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceMetricCategoryBuilder
  final DeviceMetricCategoryBuilderEnum? valueEnum;

  /// measurement
  static DeviceMetricCategoryBuilder measurement =
      DeviceMetricCategoryBuilder._(
    valueString: 'measurement',
    valueEnum: DeviceMetricCategoryBuilderEnum.measurement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Measurement',
    ),
  );

  /// setting
  static DeviceMetricCategoryBuilder setting = DeviceMetricCategoryBuilder._(
    valueString: 'setting',
    valueEnum: DeviceMetricCategoryBuilderEnum.setting,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Setting',
    ),
  );

  /// calculation
  static DeviceMetricCategoryBuilder calculation =
      DeviceMetricCategoryBuilder._(
    valueString: 'calculation',
    valueEnum: DeviceMetricCategoryBuilderEnum.calculation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Calculation',
    ),
  );

  /// unspecified
  static DeviceMetricCategoryBuilder unspecified =
      DeviceMetricCategoryBuilder._(
    valueString: 'unspecified',
    valueEnum: DeviceMetricCategoryBuilderEnum.unspecified,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Unspecified',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceMetricCategoryBuilder elementOnly =
      DeviceMetricCategoryBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceMetricCategoryBuilder> values = [
    measurement,
    setting,
    calculation,
    unspecified,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCategoryBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceMetricCategoryBuilder._(
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
