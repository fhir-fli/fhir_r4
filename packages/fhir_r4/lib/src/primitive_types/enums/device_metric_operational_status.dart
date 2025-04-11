// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceMetricOperationalStatus
enum DeviceMetricOperationalStatusEnum {
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
      case DeviceMetricOperationalStatusEnum.on_:
        return 'on';
      case DeviceMetricOperationalStatusEnum.off:
        return 'off';
      case DeviceMetricOperationalStatusEnum.standby:
        return 'standby';
      case DeviceMetricOperationalStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceMetricOperationalStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceMetricOperationalStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceMetricOperationalStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'on':
        return DeviceMetricOperationalStatusEnum.on_;
      case 'off':
        return DeviceMetricOperationalStatusEnum.off;
      case 'standby':
        return DeviceMetricOperationalStatusEnum.standby;
      case 'entered-in-error':
        return DeviceMetricOperationalStatusEnum.enteredInError;
    }
    return null;
  }
}

/// Describes the operational status of the DeviceMetric.
class DeviceMetricOperationalStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceMetricOperationalStatus._({
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
  factory DeviceMetricOperationalStatus(
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
    final valueEnum = DeviceMetricOperationalStatusEnum.fromString(valueString);
    return DeviceMetricOperationalStatus._(
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

  /// Factory constructor to create [DeviceMetricOperationalStatus]
  /// from JSON.
  factory DeviceMetricOperationalStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceMetricOperationalStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceMetricOperationalStatus._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceMetricOperationalStatus cannot be constructed from JSON.',
      );
    }
    return DeviceMetricOperationalStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceMetricOperationalStatus
  final DeviceMetricOperationalStatusEnum? valueEnum;

  /// on_
  static const DeviceMetricOperationalStatus on_ =
      DeviceMetricOperationalStatus._(
    valueString: 'on',
    valueEnum: DeviceMetricOperationalStatusEnum.on_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-operational-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On',
    ),
  );

  /// off
  static const DeviceMetricOperationalStatus off =
      DeviceMetricOperationalStatus._(
    valueString: 'off',
    valueEnum: DeviceMetricOperationalStatusEnum.off,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-operational-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Off',
    ),
  );

  /// standby
  static const DeviceMetricOperationalStatus standby =
      DeviceMetricOperationalStatus._(
    valueString: 'standby',
    valueEnum: DeviceMetricOperationalStatusEnum.standby,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-operational-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Standby',
    ),
  );

  /// entered_in_error
  static const DeviceMetricOperationalStatus enteredInError =
      DeviceMetricOperationalStatus._(
    valueString: 'entered-in-error',
    valueEnum: DeviceMetricOperationalStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/metric-operational-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered In Error',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceMetricOperationalStatus> values = [
    on_,
    off,
    standby,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  DeviceMetricOperationalStatus withElement(Element? newElement) {
    return DeviceMetricOperationalStatus._(
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
  DeviceMetricOperationalStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceMetricOperationalStatusCopyWithImpl<DeviceMetricOperationalStatus>
      get copyWith => DeviceMetricOperationalStatusCopyWithImpl<
              DeviceMetricOperationalStatus>(
            this,
            (v) => v as DeviceMetricOperationalStatus,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceMetricOperationalStatusCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceMetricOperationalStatusCopyWithImpl(super._value, super._then);

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
      DeviceMetricOperationalStatus(
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
