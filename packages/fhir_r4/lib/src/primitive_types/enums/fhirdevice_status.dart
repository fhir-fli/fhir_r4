// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for FHIRDeviceStatus
enum FHIRDeviceStatusEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FHIRDeviceStatusEnum.active:
        return 'active';
      case FHIRDeviceStatusEnum.inactive:
        return 'inactive';
      case FHIRDeviceStatusEnum.enteredInError:
        return 'entered-in-error';
      case FHIRDeviceStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRDeviceStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRDeviceStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRDeviceStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return FHIRDeviceStatusEnum.active;
      case 'inactive':
        return FHIRDeviceStatusEnum.inactive;
      case 'entered-in-error':
        return FHIRDeviceStatusEnum.enteredInError;
      case 'unknown':
        return FHIRDeviceStatusEnum.unknown;
    }
    return null;
  }
}

/// The availability status of the device.
class FHIRDeviceStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const FHIRDeviceStatus._({
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
  factory FHIRDeviceStatus(
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
    final valueEnum = FHIRDeviceStatusEnum.fromString(valueString);
    return FHIRDeviceStatus._(
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

  /// Factory constructor to create [FHIRDeviceStatus]
  /// from JSON.
  factory FHIRDeviceStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = FHIRDeviceStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRDeviceStatus cannot be constructed from JSON.',
      );
    }
    return FHIRDeviceStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for FHIRDeviceStatus
  final FHIRDeviceStatusEnum? valueEnum;

  /// active
  static const FHIRDeviceStatus active = FHIRDeviceStatus._(
    valueString: 'active',
    valueEnum: FHIRDeviceStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static const FHIRDeviceStatus inactive = FHIRDeviceStatus._(
    valueString: 'inactive',
    valueEnum: FHIRDeviceStatusEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static const FHIRDeviceStatus enteredInError = FHIRDeviceStatus._(
    valueString: 'entered-in-error',
    valueEnum: FHIRDeviceStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const FHIRDeviceStatus unknown = FHIRDeviceStatus._(
    valueString: 'unknown',
    valueEnum: FHIRDeviceStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/device-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<FHIRDeviceStatus> values = [
    active,
    inactive,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  FHIRDeviceStatus withElement(Element? newElement) {
    return FHIRDeviceStatus._(
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
  FHIRDeviceStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  FHIRDeviceStatusCopyWithImpl<FHIRDeviceStatus> get copyWith =>
      FHIRDeviceStatusCopyWithImpl<FHIRDeviceStatus>(
        this,
        (v) => v as FHIRDeviceStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class FHIRDeviceStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  FHIRDeviceStatusCopyWithImpl(super._value, super._then);

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
      FHIRDeviceStatus(
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
