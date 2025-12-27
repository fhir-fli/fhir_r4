part of '../primitive_types.dart';

/// Actual enum for EncounterStatus
enum EncounterStatusEnum {
  /// planned
  planned,

  /// arrived
  arrived,

  /// triaged
  triaged,

  /// in-progress
  inProgress,

  /// onleave
  onleave,

  /// finished
  finished,

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
      case EncounterStatusEnum.planned:
        return 'planned';
      case EncounterStatusEnum.arrived:
        return 'arrived';
      case EncounterStatusEnum.triaged:
        return 'triaged';
      case EncounterStatusEnum.inProgress:
        return 'in-progress';
      case EncounterStatusEnum.onleave:
        return 'onleave';
      case EncounterStatusEnum.finished:
        return 'finished';
      case EncounterStatusEnum.cancelled:
        return 'cancelled';
      case EncounterStatusEnum.enteredInError:
        return 'entered-in-error';
      case EncounterStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EncounterStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return EncounterStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EncounterStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'planned':
        return EncounterStatusEnum.planned;
      case 'arrived':
        return EncounterStatusEnum.arrived;
      case 'triaged':
        return EncounterStatusEnum.triaged;
      case 'in-progress':
        return EncounterStatusEnum.inProgress;
      case 'onleave':
        return EncounterStatusEnum.onleave;
      case 'finished':
        return EncounterStatusEnum.finished;
      case 'cancelled':
        return EncounterStatusEnum.cancelled;
      case 'entered-in-error':
        return EncounterStatusEnum.enteredInError;
      case 'unknown':
        return EncounterStatusEnum.unknown;
    }
    return null;
  }
}

/// Current state of the encounter.
class EncounterStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const EncounterStatus._({
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
  factory EncounterStatus(
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
    final valueEnum = EncounterStatusEnum.fromString(valueString);
    return EncounterStatus._(
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

  /// Factory constructor to create [EncounterStatus]
  /// from JSON.
  factory EncounterStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = EncounterStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EncounterStatus cannot be constructed from JSON.',
      );
    }
    return EncounterStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for EncounterStatus
  final EncounterStatusEnum? valueEnum;

  /// planned
  static const EncounterStatus planned = EncounterStatus._(
    valueString: 'planned',
    valueEnum: EncounterStatusEnum.planned,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Planned',
    ),
  );

  /// arrived
  static const EncounterStatus arrived = EncounterStatus._(
    valueString: 'arrived',
    valueEnum: EncounterStatusEnum.arrived,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Arrived',
    ),
  );

  /// triaged
  static const EncounterStatus triaged = EncounterStatus._(
    valueString: 'triaged',
    valueEnum: EncounterStatusEnum.triaged,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Triaged',
    ),
  );

  /// in_progress
  static const EncounterStatus inProgress = EncounterStatus._(
    valueString: 'in-progress',
    valueEnum: EncounterStatusEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// onleave
  static const EncounterStatus onleave = EncounterStatus._(
    valueString: 'onleave',
    valueEnum: EncounterStatusEnum.onleave,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Leave',
    ),
  );

  /// finished
  static const EncounterStatus finished = EncounterStatus._(
    valueString: 'finished',
    valueEnum: EncounterStatusEnum.finished,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Finished',
    ),
  );

  /// cancelled
  static const EncounterStatus cancelled = EncounterStatus._(
    valueString: 'cancelled',
    valueEnum: EncounterStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static const EncounterStatus enteredInError = EncounterStatus._(
    valueString: 'entered-in-error',
    valueEnum: EncounterStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const EncounterStatus unknown = EncounterStatus._(
    valueString: 'unknown',
    valueEnum: EncounterStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/encounter-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<EncounterStatus> values = [
    planned,
    arrived,
    triaged,
    inProgress,
    onleave,
    finished,
    cancelled,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  EncounterStatus withElement(Element? newElement) {
    return EncounterStatus._(
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
  EncounterStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  EncounterStatusCopyWithImpl<EncounterStatus> get copyWith =>
      EncounterStatusCopyWithImpl<EncounterStatus>(
        this,
        (v) => v as EncounterStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class EncounterStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  EncounterStatusCopyWithImpl(super._value, super._then);

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
      EncounterStatus(
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
