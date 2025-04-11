// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RequestStatus
enum RequestStatusEnum {
  /// draft
  draft,

  /// active
  active,

  /// on-hold
  onHold,

  /// revoked
  revoked,

  /// completed
  completed,

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
      case RequestStatusEnum.draft:
        return 'draft';
      case RequestStatusEnum.active:
        return 'active';
      case RequestStatusEnum.onHold:
        return 'on-hold';
      case RequestStatusEnum.revoked:
        return 'revoked';
      case RequestStatusEnum.completed:
        return 'completed';
      case RequestStatusEnum.enteredInError:
        return 'entered-in-error';
      case RequestStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RequestStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return RequestStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RequestStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return RequestStatusEnum.draft;
      case 'active':
        return RequestStatusEnum.active;
      case 'on-hold':
        return RequestStatusEnum.onHold;
      case 'revoked':
        return RequestStatusEnum.revoked;
      case 'completed':
        return RequestStatusEnum.completed;
      case 'entered-in-error':
        return RequestStatusEnum.enteredInError;
      case 'unknown':
        return RequestStatusEnum.unknown;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of a request.
class RequestStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const RequestStatus._({
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
  factory RequestStatus(
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
    final valueEnum = RequestStatusEnum.fromString(valueString);
    return RequestStatus._(
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

  /// Factory constructor to create [RequestStatus]
  /// from JSON.
  factory RequestStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = RequestStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RequestStatus cannot be constructed from JSON.',
      );
    }
    return RequestStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for RequestStatus
  final RequestStatusEnum? valueEnum;

  /// draft
  static const RequestStatus draft = RequestStatus._(
    valueString: 'draft',
    valueEnum: RequestStatusEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Draft',
    ),
  );

  /// active
  static const RequestStatus active = RequestStatus._(
    valueString: 'active',
    valueEnum: RequestStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// on_hold
  static const RequestStatus onHold = RequestStatus._(
    valueString: 'on-hold',
    valueEnum: RequestStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// revoked
  static const RequestStatus revoked = RequestStatus._(
    valueString: 'revoked',
    valueEnum: RequestStatusEnum.revoked,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Revoked',
    ),
  );

  /// completed
  static const RequestStatus completed = RequestStatus._(
    valueString: 'completed',
    valueEnum: RequestStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const RequestStatus enteredInError = RequestStatus._(
    valueString: 'entered-in-error',
    valueEnum: RequestStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const RequestStatus unknown = RequestStatus._(
    valueString: 'unknown',
    valueEnum: RequestStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/request-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<RequestStatus> values = [
    draft,
    active,
    onHold,
    revoked,
    completed,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  RequestStatus withElement(Element? newElement) {
    return RequestStatus._(
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
  RequestStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  RequestStatusCopyWithImpl<RequestStatus> get copyWith =>
      RequestStatusCopyWithImpl<RequestStatus>(
        this,
        (v) => v as RequestStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class RequestStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  RequestStatusCopyWithImpl(super._value, super._then);

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
      RequestStatus(
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
