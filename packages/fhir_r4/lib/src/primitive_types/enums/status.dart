// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for Status
enum StatusEnum {
  /// attested
  attested,

  /// validated
  validated,

  /// in-process
  inProcess,

  /// req-revalid
  reqRevalid,

  /// val-fail
  valFail,

  /// reval-fail
  revalFail,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StatusEnum.attested:
        return 'attested';
      case StatusEnum.validated:
        return 'validated';
      case StatusEnum.inProcess:
        return 'in-process';
      case StatusEnum.reqRevalid:
        return 'req-revalid';
      case StatusEnum.valFail:
        return 'val-fail';
      case StatusEnum.revalFail:
        return 'reval-fail';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return StatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'attested':
        return StatusEnum.attested;
      case 'validated':
        return StatusEnum.validated;
      case 'in-process':
        return StatusEnum.inProcess;
      case 'req-revalid':
        return StatusEnum.reqRevalid;
      case 'val-fail':
        return StatusEnum.valFail;
      case 'reval-fail':
        return StatusEnum.revalFail;
    }
    return null;
  }
}

/// The validation status of the target
class Status extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const Status._({
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
  factory Status(
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
    final valueEnum = StatusEnum.fromString(valueString);
    return Status._(
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

  /// Factory constructor to create [Status]
  /// from JSON.
  factory Status.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = StatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Status._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'Status cannot be constructed from JSON.',
      );
    }
    return Status._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for Status
  final StatusEnum? valueEnum;

  /// attested
  static const Status attested = Status._(
    valueString: 'attested',
    valueEnum: StatusEnum.attested,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Attested',
    ),
  );

  /// validated
  static const Status validated = Status._(
    valueString: 'validated',
    valueEnum: StatusEnum.validated,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Validated',
    ),
  );

  /// in_process
  static const Status inProcess = Status._(
    valueString: 'in-process',
    valueEnum: StatusEnum.inProcess,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In process',
    ),
  );

  /// req_revalid
  static const Status reqRevalid = Status._(
    valueString: 'req-revalid',
    valueEnum: StatusEnum.reqRevalid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Requires revalidation',
    ),
  );

  /// val_fail
  static const Status valFail = Status._(
    valueString: 'val-fail',
    valueEnum: StatusEnum.valFail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Validation failed',
    ),
  );

  /// reval_fail
  static const Status revalFail = Status._(
    valueString: 'reval-fail',
    valueEnum: StatusEnum.revalFail,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/verificationresult-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Re-Validation failed',
    ),
  );

  /// List of all enum-like values
  static final List<Status> values = [
    attested,
    validated,
    inProcess,
    reqRevalid,
    valFail,
    revalFail,
  ];

  /// Returns the enum value with an element attached
  Status withElement(Element? newElement) {
    return Status._(
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
  Status clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  StatusCopyWithImpl<Status> get copyWith => StatusCopyWithImpl<Status>(
        this,
        (v) => v as Status,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class StatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  StatusCopyWithImpl(super._value, super._then);

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
      Status(
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
