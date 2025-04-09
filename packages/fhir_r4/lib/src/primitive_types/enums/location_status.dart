// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for LocationStatus
enum LocationStatusEnum {
  /// active
  active,

  /// suspended
  suspended,

  /// inactive
  inactive,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case LocationStatusEnum.active:
        return 'active';
      case LocationStatusEnum.suspended:
        return 'suspended';
      case LocationStatusEnum.inactive:
        return 'inactive';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static LocationStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return LocationStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static LocationStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return LocationStatusEnum.active;
      case 'suspended':
        return LocationStatusEnum.suspended;
      case 'inactive':
        return LocationStatusEnum.inactive;
    }
    return null;
  }
}

/// Indicates whether the location is still in use.
class LocationStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const LocationStatus._({
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
  factory LocationStatus(
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
    final valueEnum = LocationStatusEnum.fromString(valueString);
    return LocationStatus._(
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

  /// Factory constructor to create [LocationStatus]
  /// from JSON.
  factory LocationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = LocationStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LocationStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LocationStatus cannot be constructed from JSON.',
      );
    }
    return LocationStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for LocationStatus
  final LocationStatusEnum? valueEnum;

  /// active
  static const LocationStatus active = LocationStatus._(
    valueString: 'active',
    valueEnum: LocationStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/location-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// suspended
  static const LocationStatus suspended = LocationStatus._(
    valueString: 'suspended',
    valueEnum: LocationStatusEnum.suspended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/location-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Suspended',
    ),
  );

  /// inactive
  static const LocationStatus inactive = LocationStatus._(
    valueString: 'inactive',
    valueEnum: LocationStatusEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/location-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// List of all enum-like values
  static final List<LocationStatus> values = [
    active,
    suspended,
    inactive,
  ];

  /// Returns the enum value with an element attached
  LocationStatus withElement(Element? newElement) {
    return LocationStatus._(
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
  LocationStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  LocationStatusCopyWithImpl<LocationStatus> get copyWith =>
      LocationStatusCopyWithImpl<LocationStatus>(
        this,
        (v) => v as LocationStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class LocationStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  LocationStatusCopyWithImpl(super._value, super._then);

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
      LocationStatus(
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
