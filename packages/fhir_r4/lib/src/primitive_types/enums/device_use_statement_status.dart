// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DeviceUseStatementStatus
enum DeviceUseStatementStatusEnum {
  /// active
  active,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// intended
  intended,

  /// stopped
  stopped,

  /// on-hold
  onHold,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DeviceUseStatementStatusEnum.active:
        return 'active';
      case DeviceUseStatementStatusEnum.completed:
        return 'completed';
      case DeviceUseStatementStatusEnum.enteredInError:
        return 'entered-in-error';
      case DeviceUseStatementStatusEnum.intended:
        return 'intended';
      case DeviceUseStatementStatusEnum.stopped:
        return 'stopped';
      case DeviceUseStatementStatusEnum.onHold:
        return 'on-hold';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DeviceUseStatementStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DeviceUseStatementStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DeviceUseStatementStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return DeviceUseStatementStatusEnum.active;
      case 'completed':
        return DeviceUseStatementStatusEnum.completed;
      case 'entered-in-error':
        return DeviceUseStatementStatusEnum.enteredInError;
      case 'intended':
        return DeviceUseStatementStatusEnum.intended;
      case 'stopped':
        return DeviceUseStatementStatusEnum.stopped;
      case 'on-hold':
        return DeviceUseStatementStatusEnum.onHold;
    }
    return null;
  }
}

/// A coded concept indicating the current status of the Device Usage.
class DeviceUseStatementStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DeviceUseStatementStatus._({
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
  factory DeviceUseStatementStatus(
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
    final valueEnum = DeviceUseStatementStatusEnum.fromString(valueString);
    return DeviceUseStatementStatus._(
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

  /// Factory constructor to create [DeviceUseStatementStatus]
  /// from JSON.
  factory DeviceUseStatementStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DeviceUseStatementStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUseStatementStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceUseStatementStatus cannot be constructed from JSON.',
      );
    }
    return DeviceUseStatementStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DeviceUseStatementStatus
  final DeviceUseStatementStatusEnum? valueEnum;

  /// active
  static const DeviceUseStatementStatus active = DeviceUseStatementStatus._(
    valueString: 'active',
    valueEnum: DeviceUseStatementStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// completed
  static const DeviceUseStatementStatus completed = DeviceUseStatementStatus._(
    valueString: 'completed',
    valueEnum: DeviceUseStatementStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const DeviceUseStatementStatus enteredInError =
      DeviceUseStatementStatus._(
    valueString: 'entered-in-error',
    valueEnum: DeviceUseStatementStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// intended
  static const DeviceUseStatementStatus intended = DeviceUseStatementStatus._(
    valueString: 'intended',
    valueEnum: DeviceUseStatementStatusEnum.intended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Intended',
    ),
  );

  /// stopped
  static const DeviceUseStatementStatus stopped = DeviceUseStatementStatus._(
    valueString: 'stopped',
    valueEnum: DeviceUseStatementStatusEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// on_hold
  static const DeviceUseStatementStatus onHold = DeviceUseStatementStatus._(
    valueString: 'on-hold',
    valueEnum: DeviceUseStatementStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// List of all enum-like values
  static final List<DeviceUseStatementStatus> values = [
    active,
    completed,
    enteredInError,
    intended,
    stopped,
    onHold,
  ];

  /// Returns the enum value with an element attached
  DeviceUseStatementStatus withElement(Element? newElement) {
    return DeviceUseStatementStatus._(
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
  DeviceUseStatementStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DeviceUseStatementStatusCopyWithImpl<DeviceUseStatementStatus> get copyWith =>
      DeviceUseStatementStatusCopyWithImpl<DeviceUseStatementStatus>(
        this,
        (v) => v as DeviceUseStatementStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DeviceUseStatementStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DeviceUseStatementStatusCopyWithImpl(super._value, super._then);

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
      DeviceUseStatementStatus(
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
