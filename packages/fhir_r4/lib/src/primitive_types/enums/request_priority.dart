part of '../primitive_types.dart';

/// Actual enum for RequestPriority
enum RequestPriorityEnum {
  /// routine
  routine,

  /// urgent
  urgent,

  /// asap
  asap,

  /// stat
  stat,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RequestPriorityEnum.routine:
        return 'routine';
      case RequestPriorityEnum.urgent:
        return 'urgent';
      case RequestPriorityEnum.asap:
        return 'asap';
      case RequestPriorityEnum.stat:
        return 'stat';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RequestPriorityEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return RequestPriorityEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RequestPriorityEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'routine':
        return RequestPriorityEnum.routine;
      case 'urgent':
        return RequestPriorityEnum.urgent;
      case 'asap':
        return RequestPriorityEnum.asap;
      case 'stat':
        return RequestPriorityEnum.stat;
    }
    return null;
  }
}

/// Identifies the level of importance to be assigned to actioning the
/// request.
class RequestPriority extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const RequestPriority._({
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
  factory RequestPriority(
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
    final valueEnum = RequestPriorityEnum.fromString(valueString);
    return RequestPriority._(
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

  /// Factory constructor to create [RequestPriority]
  /// from JSON.
  factory RequestPriority.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = RequestPriorityEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestPriority._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestPriority cannot be constructed from JSON.',
      );
    }
    return RequestPriority._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for RequestPriority
  final RequestPriorityEnum? valueEnum;

  /// routine
  static const RequestPriority routine = RequestPriority._(
    valueString: 'routine',
    valueEnum: RequestPriorityEnum.routine,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-priority',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Routine',
    ),
  );

  /// urgent
  static const RequestPriority urgent = RequestPriority._(
    valueString: 'urgent',
    valueEnum: RequestPriorityEnum.urgent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-priority',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Urgent',
    ),
  );

  /// asap
  static const RequestPriority asap = RequestPriority._(
    valueString: 'asap',
    valueEnum: RequestPriorityEnum.asap,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-priority',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'ASAP',
    ),
  );

  /// stat
  static const RequestPriority stat = RequestPriority._(
    valueString: 'stat',
    valueEnum: RequestPriorityEnum.stat,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-priority',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'STAT',
    ),
  );

  /// List of all enum-like values
  static final List<RequestPriority> values = [
    routine,
    urgent,
    asap,
    stat,
  ];

  /// Returns the enum value with an element attached
  RequestPriority withElement(Element? newElement) {
    return RequestPriority._(
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
  RequestPriority clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  RequestPriorityCopyWithImpl<RequestPriority> get copyWith =>
      RequestPriorityCopyWithImpl<RequestPriority>(
        this,
        (v) => v as RequestPriority,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class RequestPriorityCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  RequestPriorityCopyWithImpl(super._value, super._then);

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
      RequestPriority(
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
