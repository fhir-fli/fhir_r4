part of '../primitive_types.dart';

/// Actual enum for DeviceMetricOperationalStatus
enum DeviceMetricOperationalStatusBuilderEnum {
  /// on
  on_,

  /// off
  off,

  /// standby
  standby,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceMetricOperationalStatusBuilderEnum.on_:
        return 'on';
      case DeviceMetricOperationalStatusBuilderEnum.off:
        return 'off';
      case DeviceMetricOperationalStatusBuilderEnum.standby:
        return 'standby';
      case DeviceMetricOperationalStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceMetricOperationalStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceMetricOperationalStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceMetricOperationalStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'on':
        return DeviceMetricOperationalStatusBuilderEnum.on_;
      case 'off':
        return DeviceMetricOperationalStatusBuilderEnum.off;
      case 'standby':
        return DeviceMetricOperationalStatusBuilderEnum.standby;
      case 'entered-in-error':
        return DeviceMetricOperationalStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Describes the operational status of the DeviceMetric.
class DeviceMetricOperationalStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DeviceMetricOperationalStatusBuilder._({
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
  factory DeviceMetricOperationalStatusBuilder(
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
    final valueEnum = DeviceMetricOperationalStatusBuilderEnum.fromString(
      valueString,
    );
    return DeviceMetricOperationalStatusBuilder._(
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

  /// Create empty [DeviceMetricOperationalStatusBuilder]
  /// with element only
  factory DeviceMetricOperationalStatusBuilder.empty() =>
      DeviceMetricOperationalStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DeviceMetricOperationalStatusBuilder] from JSON.
  factory DeviceMetricOperationalStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricOperationalStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricOperationalStatusBuilder cannot be constructed from JSON.',
      );
    }
    return DeviceMetricOperationalStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DeviceMetricOperationalStatusBuilder
  final DeviceMetricOperationalStatusBuilderEnum? valueEnum;

  /// on_
  static DeviceMetricOperationalStatusBuilder on_ =
      DeviceMetricOperationalStatusBuilder._(
    valueString: 'on',
    valueEnum: DeviceMetricOperationalStatusBuilderEnum.on_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-operational-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On',
    ),
  );

  /// off
  static DeviceMetricOperationalStatusBuilder off =
      DeviceMetricOperationalStatusBuilder._(
    valueString: 'off',
    valueEnum: DeviceMetricOperationalStatusBuilderEnum.off,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-operational-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Off',
    ),
  );

  /// standby
  static DeviceMetricOperationalStatusBuilder standby =
      DeviceMetricOperationalStatusBuilder._(
    valueString: 'standby',
    valueEnum: DeviceMetricOperationalStatusBuilderEnum.standby,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-operational-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Standby',
    ),
  );

  /// entered_in_error
  static DeviceMetricOperationalStatusBuilder enteredInError =
      DeviceMetricOperationalStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: DeviceMetricOperationalStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-operational-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered In Error',
    ),
  );

  /// For instances where an Element is present but not value
  static DeviceMetricOperationalStatusBuilder elementOnly =
      DeviceMetricOperationalStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DeviceMetricOperationalStatusBuilder> values = [
    on_,
    off,
    standby,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricOperationalStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DeviceMetricOperationalStatusBuilder._(
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
