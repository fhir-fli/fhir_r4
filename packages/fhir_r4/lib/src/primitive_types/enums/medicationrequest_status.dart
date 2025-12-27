part of '../primitive_types.dart';

/// Actual enum for MedicationrequestStatus
enum MedicationrequestStatusEnum {
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
      case MedicationrequestStatusEnum.active:
        return 'active';
      case MedicationrequestStatusEnum.onHold:
        return 'on-hold';
      case MedicationrequestStatusEnum.cancelled:
        return 'cancelled';
      case MedicationrequestStatusEnum.completed:
        return 'completed';
      case MedicationrequestStatusEnum.enteredInError:
        return 'entered-in-error';
      case MedicationrequestStatusEnum.stopped:
        return 'stopped';
      case MedicationrequestStatusEnum.draft:
        return 'draft';
      case MedicationrequestStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationrequestStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationrequestStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationrequestStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return MedicationrequestStatusEnum.active;
      case 'on-hold':
        return MedicationrequestStatusEnum.onHold;
      case 'cancelled':
        return MedicationrequestStatusEnum.cancelled;
      case 'completed':
        return MedicationrequestStatusEnum.completed;
      case 'entered-in-error':
        return MedicationrequestStatusEnum.enteredInError;
      case 'stopped':
        return MedicationrequestStatusEnum.stopped;
      case 'draft':
        return MedicationrequestStatusEnum.draft;
      case 'unknown':
        return MedicationrequestStatusEnum.unknown;
    }
    return null;
  }
}

/// MedicationRequest Status Codes
class MedicationrequestStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MedicationrequestStatus._({
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
  factory MedicationrequestStatus(
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
    final valueEnum = MedicationrequestStatusEnum.fromString(valueString);
    return MedicationrequestStatus._(
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

  /// Factory constructor to create [MedicationrequestStatus]
  /// from JSON.
  factory MedicationrequestStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MedicationrequestStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationrequestStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationrequestStatus cannot be constructed from JSON.',
      );
    }
    return MedicationrequestStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MedicationrequestStatus
  final MedicationrequestStatusEnum? valueEnum;

  /// active
  static const MedicationrequestStatus active = MedicationrequestStatus._(
    valueString: 'active',
    valueEnum: MedicationrequestStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// on_hold
  static const MedicationrequestStatus onHold = MedicationrequestStatus._(
    valueString: 'on-hold',
    valueEnum: MedicationrequestStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// cancelled
  static const MedicationrequestStatus cancelled = MedicationrequestStatus._(
    valueString: 'cancelled',
    valueEnum: MedicationrequestStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// completed
  static const MedicationrequestStatus completed = MedicationrequestStatus._(
    valueString: 'completed',
    valueEnum: MedicationrequestStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const MedicationrequestStatus enteredInError =
      MedicationrequestStatus._(
    valueString: 'entered-in-error',
    valueEnum: MedicationrequestStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static const MedicationrequestStatus stopped = MedicationrequestStatus._(
    valueString: 'stopped',
    valueEnum: MedicationrequestStatusEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// draft
  static const MedicationrequestStatus draft = MedicationrequestStatus._(
    valueString: 'draft',
    valueEnum: MedicationrequestStatusEnum.draft,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Draft',
    ),
  );

  /// unknown
  static const MedicationrequestStatus unknown = MedicationrequestStatus._(
    valueString: 'unknown',
    valueEnum: MedicationrequestStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationrequest-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<MedicationrequestStatus> values = [
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
  MedicationrequestStatus withElement(Element? newElement) {
    return MedicationrequestStatus._(
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
  MedicationrequestStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MedicationrequestStatusCopyWithImpl<MedicationrequestStatus> get copyWith =>
      MedicationrequestStatusCopyWithImpl<MedicationrequestStatus>(
        this,
        (v) => v as MedicationrequestStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MedicationrequestStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MedicationrequestStatusCopyWithImpl(super._value, super._then);

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
      MedicationrequestStatus(
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
