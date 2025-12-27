part of '../primitive_types.dart';

/// Actual enum for DeviceMetricCategory
enum DeviceMetricCategoryEnum {
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
      case DeviceMetricCategoryEnum.measurement:
        return 'measurement';
      case DeviceMetricCategoryEnum.setting:
        return 'setting';
      case DeviceMetricCategoryEnum.calculation:
        return 'calculation';
      case DeviceMetricCategoryEnum.unspecified:
        return 'unspecified';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceMetricCategoryEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceMetricCategoryEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceMetricCategoryEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'measurement':
        return DeviceMetricCategoryEnum.measurement;
      case 'setting':
        return DeviceMetricCategoryEnum.setting;
      case 'calculation':
        return DeviceMetricCategoryEnum.calculation;
      case 'unspecified':
        return DeviceMetricCategoryEnum.unspecified;
    }
    return null;
  }
}

/// Describes the category of the metric.
class DeviceMetricCategory extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceMetricCategory._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory DeviceMetricCategory(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = DeviceMetricCategoryEnum.fromString(valueString);
    return DeviceMetricCategory._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [DeviceMetricCategory]
  /// from JSON.
  factory DeviceMetricCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceMetricCategoryEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricCategory._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricCategory cannot be constructed from JSON.',
      );
    }
    return DeviceMetricCategory._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceMetricCategory
  final DeviceMetricCategoryEnum? valueEnum;

  /// measurement
  static const DeviceMetricCategory measurement = DeviceMetricCategory._(
    valueString: 'measurement',
    valueEnum: DeviceMetricCategoryEnum.measurement,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Measurement',
    ),
  );

  /// setting
  static const DeviceMetricCategory setting = DeviceMetricCategory._(
    valueString: 'setting',
    valueEnum: DeviceMetricCategoryEnum.setting,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Setting',
    ),
  );

  /// calculation
  static const DeviceMetricCategory calculation = DeviceMetricCategory._(
    valueString: 'calculation',
    valueEnum: DeviceMetricCategoryEnum.calculation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Calculation',
    ),
  );

  /// unspecified
  static const DeviceMetricCategory unspecified = DeviceMetricCategory._(
    valueString: 'unspecified',
    valueEnum: DeviceMetricCategoryEnum.unspecified,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unspecified',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceMetricCategory> values = [
    measurement,
    setting,
    calculation,
    unspecified,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricCategory withElement(Element? newElement) {
    return DeviceMetricCategory._(
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

  @override
  DeviceMetricCategory clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceMetricCategoryCopyWithImpl<DeviceMetricCategory> get copyWith =>
      DeviceMetricCategoryCopyWithImpl<DeviceMetricCategory>(
        this,
        (v) => v as DeviceMetricCategory,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceMetricCategoryCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceMetricCategoryCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      DeviceMetricCategory(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
