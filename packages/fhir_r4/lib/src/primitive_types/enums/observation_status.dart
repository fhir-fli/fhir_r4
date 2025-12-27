part of '../primitive_types.dart';

/// Actual enum for ObservationStatus
enum ObservationStatusEnum {
  /// registered
  registered,

  /// preliminary
  preliminary,

  /// final
  final_,

  /// amended
  amended,

  /// corrected
  corrected,

  /// cancelled
  cancelled,

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
      case ObservationStatusEnum.registered:
        return 'registered';
      case ObservationStatusEnum.preliminary:
        return 'preliminary';
      case ObservationStatusEnum.final_:
        return 'final';
      case ObservationStatusEnum.amended:
        return 'amended';
      case ObservationStatusEnum.corrected:
        return 'corrected';
      case ObservationStatusEnum.cancelled:
        return 'cancelled';
      case ObservationStatusEnum.enteredInError:
        return 'entered-in-error';
      case ObservationStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ObservationStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ObservationStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ObservationStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return ObservationStatusEnum.registered;
      case 'preliminary':
        return ObservationStatusEnum.preliminary;
      case 'final':
        return ObservationStatusEnum.final_;
      case 'amended':
        return ObservationStatusEnum.amended;
      case 'corrected':
        return ObservationStatusEnum.corrected;
      case 'cancelled':
        return ObservationStatusEnum.cancelled;
      case 'entered-in-error':
        return ObservationStatusEnum.enteredInError;
      case 'unknown':
        return ObservationStatusEnum.unknown;
    }
    return null;
  }
}

/// Codes providing the status of an observation.
class ObservationStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ObservationStatus._({
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
  factory ObservationStatus(
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
    final valueEnum = ObservationStatusEnum.fromString(valueString);
    return ObservationStatus._(
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

  /// Factory constructor to create [ObservationStatus]
  /// from JSON.
  factory ObservationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ObservationStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationStatus cannot be constructed from JSON.',
      );
    }
    return ObservationStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ObservationStatus
  final ObservationStatusEnum? valueEnum;

  /// registered
  static const ObservationStatus registered = ObservationStatus._(
    valueString: 'registered',
    valueEnum: ObservationStatusEnum.registered,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Registered',
    ),
  );

  /// preliminary
  static const ObservationStatus preliminary = ObservationStatus._(
    valueString: 'preliminary',
    valueEnum: ObservationStatusEnum.preliminary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Preliminary',
    ),
  );

  /// final_
  static const ObservationStatus final_ = ObservationStatus._(
    valueString: 'final',
    valueEnum: ObservationStatusEnum.final_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Final',
    ),
  );

  /// amended
  static const ObservationStatus amended = ObservationStatus._(
    valueString: 'amended',
    valueEnum: ObservationStatusEnum.amended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Amended',
    ),
  );

  /// corrected
  static const ObservationStatus corrected = ObservationStatus._(
    valueString: 'corrected',
    valueEnum: ObservationStatusEnum.corrected,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Corrected',
    ),
  );

  /// cancelled
  static const ObservationStatus cancelled = ObservationStatus._(
    valueString: 'cancelled',
    valueEnum: ObservationStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static const ObservationStatus enteredInError = ObservationStatus._(
    valueString: 'entered-in-error',
    valueEnum: ObservationStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const ObservationStatus unknown = ObservationStatus._(
    valueString: 'unknown',
    valueEnum: ObservationStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<ObservationStatus> values = [
    registered,
    preliminary,
    final_,
    amended,
    corrected,
    cancelled,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ObservationStatus withElement(Element? newElement) {
    return ObservationStatus._(
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
  ObservationStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ObservationStatusCopyWithImpl<ObservationStatus> get copyWith =>
      ObservationStatusCopyWithImpl<ObservationStatus>(
        this,
        (v) => v as ObservationStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ObservationStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ObservationStatusCopyWithImpl(super._value, super._then);

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
      ObservationStatus(
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
