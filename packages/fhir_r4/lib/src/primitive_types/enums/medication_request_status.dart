part of '../primitive_types.dart';

/// Actual enum for MedicationRequestStatus
enum MedicationRequestStatusEnum {
  /// active
  active,

  /// on-hold
  onHold,

  /// cancelled
  cancelled,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// stopped
  stopped,

  /// draft
  draft,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationRequestStatusEnum.active:
        return 'active';
      case MedicationRequestStatusEnum.onHold:
        return 'on-hold';
      case MedicationRequestStatusEnum.cancelled:
        return 'cancelled';
      case MedicationRequestStatusEnum.completed:
        return 'completed';
      case MedicationRequestStatusEnum.enteredInError:
        return 'entered-in-error';
      case MedicationRequestStatusEnum.stopped:
        return 'stopped';
      case MedicationRequestStatusEnum.draft:
        return 'draft';
      case MedicationRequestStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationRequestStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationRequestStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationRequestStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return MedicationRequestStatusEnum.active;
      case 'on-hold':
        return MedicationRequestStatusEnum.onHold;
      case 'cancelled':
        return MedicationRequestStatusEnum.cancelled;
      case 'completed':
        return MedicationRequestStatusEnum.completed;
      case 'entered-in-error':
        return MedicationRequestStatusEnum.enteredInError;
      case 'stopped':
        return MedicationRequestStatusEnum.stopped;
      case 'draft':
        return MedicationRequestStatusEnum.draft;
      case 'unknown':
        return MedicationRequestStatusEnum.unknown;
    }
    return null;
  }
}

/// MedicationRequest Status Codes
class MedicationRequestStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MedicationRequestStatus._({
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
  factory MedicationRequestStatus(
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
    final valueEnum = MedicationRequestStatusEnum.fromString(valueString);
    return MedicationRequestStatus._(
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

  /// Factory constructor to create [MedicationRequestStatus]
  /// from JSON.
  factory MedicationRequestStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MedicationRequestStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationRequestStatus cannot be constructed from JSON.',
      );
    }
    return MedicationRequestStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MedicationRequestStatus
  final MedicationRequestStatusEnum? valueEnum;

  /// active
  static const MedicationRequestStatus active = MedicationRequestStatus._(
    valueString: 'active',
    valueEnum: MedicationRequestStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// on_hold
  static const MedicationRequestStatus onHold = MedicationRequestStatus._(
    valueString: 'on-hold',
    valueEnum: MedicationRequestStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// cancelled
  static const MedicationRequestStatus cancelled = MedicationRequestStatus._(
    valueString: 'cancelled',
    valueEnum: MedicationRequestStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// completed
  static const MedicationRequestStatus completed = MedicationRequestStatus._(
    valueString: 'completed',
    valueEnum: MedicationRequestStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const MedicationRequestStatus enteredInError =
      MedicationRequestStatus._(
    valueString: 'entered-in-error',
    valueEnum: MedicationRequestStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static const MedicationRequestStatus stopped = MedicationRequestStatus._(
    valueString: 'stopped',
    valueEnum: MedicationRequestStatusEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// draft
  static const MedicationRequestStatus draft = MedicationRequestStatus._(
    valueString: 'draft',
    valueEnum: MedicationRequestStatusEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Draft',
    ),
  );

  /// unknown
  static const MedicationRequestStatus unknown = MedicationRequestStatus._(
    valueString: 'unknown',
    valueEnum: MedicationRequestStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<MedicationRequestStatus> values = [
    active,
    onHold,
    cancelled,
    completed,
    enteredInError,
    stopped,
    draft,
    unknown,
  ];

  /// Returns the enum value with an element attached
  MedicationRequestStatus withElement(Element? newElement) {
    return MedicationRequestStatus._(
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
  MedicationRequestStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MedicationRequestStatusCopyWithImpl<MedicationRequestStatus> get copyWith =>
      MedicationRequestStatusCopyWithImpl<MedicationRequestStatus>(
        this,
        (v) => v as MedicationRequestStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MedicationRequestStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MedicationRequestStatusCopyWithImpl(super._value, super._then);

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
      MedicationRequestStatus(
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
