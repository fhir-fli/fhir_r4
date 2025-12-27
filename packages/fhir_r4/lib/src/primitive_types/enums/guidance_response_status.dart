part of '../primitive_types.dart';

/// Actual enum for GuidanceResponseStatus
enum GuidanceResponseStatusEnum {
  /// success
  success,

  /// data-requested
  dataRequested,

  /// data-required
  dataRequired,

  /// in-progress
  inProgress,

  /// failure
  failure,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GuidanceResponseStatusEnum.success:
        return 'success';
      case GuidanceResponseStatusEnum.dataRequested:
        return 'data-requested';
      case GuidanceResponseStatusEnum.dataRequired:
        return 'data-required';
      case GuidanceResponseStatusEnum.inProgress:
        return 'in-progress';
      case GuidanceResponseStatusEnum.failure:
        return 'failure';
      case GuidanceResponseStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GuidanceResponseStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GuidanceResponseStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GuidanceResponseStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'success':
        return GuidanceResponseStatusEnum.success;
      case 'data-requested':
        return GuidanceResponseStatusEnum.dataRequested;
      case 'data-required':
        return GuidanceResponseStatusEnum.dataRequired;
      case 'in-progress':
        return GuidanceResponseStatusEnum.inProgress;
      case 'failure':
        return GuidanceResponseStatusEnum.failure;
      case 'entered-in-error':
        return GuidanceResponseStatusEnum.enteredInError;
    }
    return null;
  }
}

/// The status of a guidance response.
class GuidanceResponseStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GuidanceResponseStatus._({
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
  factory GuidanceResponseStatus(
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
    final valueEnum = GuidanceResponseStatusEnum.fromString(valueString);
    return GuidanceResponseStatus._(
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

  /// Factory constructor to create [GuidanceResponseStatus]
  /// from JSON.
  factory GuidanceResponseStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GuidanceResponseStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidanceResponseStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuidanceResponseStatus cannot be constructed from JSON.',
      );
    }
    return GuidanceResponseStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GuidanceResponseStatus
  final GuidanceResponseStatusEnum? valueEnum;

  /// success
  static const GuidanceResponseStatus success = GuidanceResponseStatus._(
    valueString: 'success',
    valueEnum: GuidanceResponseStatusEnum.success,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Success',
    ),
  );

  /// data_requested
  static const GuidanceResponseStatus dataRequested = GuidanceResponseStatus._(
    valueString: 'data-requested',
    valueEnum: GuidanceResponseStatusEnum.dataRequested,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Data Requested',
    ),
  );

  /// data_required
  static const GuidanceResponseStatus dataRequired = GuidanceResponseStatus._(
    valueString: 'data-required',
    valueEnum: GuidanceResponseStatusEnum.dataRequired,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Data Required',
    ),
  );

  /// in_progress
  static const GuidanceResponseStatus inProgress = GuidanceResponseStatus._(
    valueString: 'in-progress',
    valueEnum: GuidanceResponseStatusEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// failure
  static const GuidanceResponseStatus failure = GuidanceResponseStatus._(
    valueString: 'failure',
    valueEnum: GuidanceResponseStatusEnum.failure,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Failure',
    ),
  );

  /// entered_in_error
  static const GuidanceResponseStatus enteredInError = GuidanceResponseStatus._(
    valueString: 'entered-in-error',
    valueEnum: GuidanceResponseStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/guidance-response-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered In Error',
    ),
  );

  /// List of all enum-like values
  static final List<GuidanceResponseStatus> values = [
    success,
    dataRequested,
    dataRequired,
    inProgress,
    failure,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  GuidanceResponseStatus withElement(Element? newElement) {
    return GuidanceResponseStatus._(
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
  GuidanceResponseStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GuidanceResponseStatusCopyWithImpl<GuidanceResponseStatus> get copyWith =>
      GuidanceResponseStatusCopyWithImpl<GuidanceResponseStatus>(
        this,
        (v) => v as GuidanceResponseStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GuidanceResponseStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GuidanceResponseStatusCopyWithImpl(super._value, super._then);

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
      GuidanceResponseStatus(
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
