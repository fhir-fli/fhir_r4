// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EndpointStatus
enum EndpointStatusEnum {
  /// active
  active,

  /// suspended
  suspended,

  /// error
  error,

  /// off
  off,

  /// entered-in-error
  enteredInError,

  /// test
  test,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EndpointStatusEnum.active:
        return 'active';
      case EndpointStatusEnum.suspended:
        return 'suspended';
      case EndpointStatusEnum.error:
        return 'error';
      case EndpointStatusEnum.off:
        return 'off';
      case EndpointStatusEnum.enteredInError:
        return 'entered-in-error';
      case EndpointStatusEnum.test:
        return 'test';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EndpointStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return EndpointStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EndpointStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return EndpointStatusEnum.active;
      case 'suspended':
        return EndpointStatusEnum.suspended;
      case 'error':
        return EndpointStatusEnum.error;
      case 'off':
        return EndpointStatusEnum.off;
      case 'entered-in-error':
        return EndpointStatusEnum.enteredInError;
      case 'test':
        return EndpointStatusEnum.test;
    }
    return null;
  }
}

/// The status of the endpoint.
class EndpointStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const EndpointStatus._({
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
  factory EndpointStatus(
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
    final valueEnum = EndpointStatusEnum.fromString(valueString);
    return EndpointStatus._(
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

  /// Factory constructor to create [EndpointStatus]
  /// from JSON.
  factory EndpointStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = EndpointStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EndpointStatus cannot be constructed from JSON.',
      );
    }
    return EndpointStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for EndpointStatus
  final EndpointStatusEnum? valueEnum;

  /// active
  static const EndpointStatus active = EndpointStatus._(
    valueString: 'active',
    valueEnum: EndpointStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// suspended
  static const EndpointStatus suspended = EndpointStatus._(
    valueString: 'suspended',
    valueEnum: EndpointStatusEnum.suspended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Suspended',
    ),
  );

  /// error
  static const EndpointStatus error = EndpointStatus._(
    valueString: 'error',
    valueEnum: EndpointStatusEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// off
  static const EndpointStatus off = EndpointStatus._(
    valueString: 'off',
    valueEnum: EndpointStatusEnum.off,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Off',
    ),
  );

  /// entered_in_error
  static const EndpointStatus enteredInError = EndpointStatus._(
    valueString: 'entered-in-error',
    valueEnum: EndpointStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in error',
    ),
  );

  /// test
  static const EndpointStatus test = EndpointStatus._(
    valueString: 'test',
    valueEnum: EndpointStatusEnum.test,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/endpoint-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Test',
    ),
  );

  /// List of all enum-like values
  static final List<EndpointStatus> values = [
    active,
    suspended,
    error,
    off,
    enteredInError,
    test,
  ];

  /// Returns the enum value with an element attached
  EndpointStatus withElement(Element? newElement) {
    return EndpointStatus._(
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
  EndpointStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  EndpointStatusCopyWithImpl<EndpointStatus> get copyWith =>
      EndpointStatusCopyWithImpl<EndpointStatus>(
        this,
        (v) => v as EndpointStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class EndpointStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  EndpointStatusCopyWithImpl(super._value, super._then);

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
      EndpointStatus(
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
