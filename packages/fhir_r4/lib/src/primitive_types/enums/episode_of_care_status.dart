// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EpisodeOfCareStatus
enum EpisodeOfCareStatusEnum {
  /// planned
  planned,

  /// waitlist
  waitlist,

  /// active
  active,

  /// onhold
  onhold,

  /// finished
  finished,

  /// cancelled
  cancelled,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EpisodeOfCareStatusEnum.planned:
        return 'planned';
      case EpisodeOfCareStatusEnum.waitlist:
        return 'waitlist';
      case EpisodeOfCareStatusEnum.active:
        return 'active';
      case EpisodeOfCareStatusEnum.onhold:
        return 'onhold';
      case EpisodeOfCareStatusEnum.finished:
        return 'finished';
      case EpisodeOfCareStatusEnum.cancelled:
        return 'cancelled';
      case EpisodeOfCareStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EpisodeOfCareStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return EpisodeOfCareStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EpisodeOfCareStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'planned':
        return EpisodeOfCareStatusEnum.planned;
      case 'waitlist':
        return EpisodeOfCareStatusEnum.waitlist;
      case 'active':
        return EpisodeOfCareStatusEnum.active;
      case 'onhold':
        return EpisodeOfCareStatusEnum.onhold;
      case 'finished':
        return EpisodeOfCareStatusEnum.finished;
      case 'cancelled':
        return EpisodeOfCareStatusEnum.cancelled;
      case 'entered-in-error':
        return EpisodeOfCareStatusEnum.enteredInError;
    }
    return null;
  }
}

/// The status of the episode of care.
class EpisodeOfCareStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const EpisodeOfCareStatus._({
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
  factory EpisodeOfCareStatus(
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
    final valueEnum = EpisodeOfCareStatusEnum.fromString(valueString);
    return EpisodeOfCareStatus._(
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

  /// Factory constructor to create [EpisodeOfCareStatus]
  /// from JSON.
  factory EpisodeOfCareStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = EpisodeOfCareStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EpisodeOfCareStatus cannot be constructed from JSON.',
      );
    }
    return EpisodeOfCareStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for EpisodeOfCareStatus
  final EpisodeOfCareStatusEnum? valueEnum;

  /// planned
  static const EpisodeOfCareStatus planned = EpisodeOfCareStatus._(
    valueString: 'planned',
    valueEnum: EpisodeOfCareStatusEnum.planned,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Planned',
    ),
  );

  /// waitlist
  static const EpisodeOfCareStatus waitlist = EpisodeOfCareStatus._(
    valueString: 'waitlist',
    valueEnum: EpisodeOfCareStatusEnum.waitlist,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Waitlist',
    ),
  );

  /// active
  static const EpisodeOfCareStatus active = EpisodeOfCareStatus._(
    valueString: 'active',
    valueEnum: EpisodeOfCareStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// onhold
  static const EpisodeOfCareStatus onhold = EpisodeOfCareStatus._(
    valueString: 'onhold',
    valueEnum: EpisodeOfCareStatusEnum.onhold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// finished
  static const EpisodeOfCareStatus finished = EpisodeOfCareStatus._(
    valueString: 'finished',
    valueEnum: EpisodeOfCareStatusEnum.finished,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Finished',
    ),
  );

  /// cancelled
  static const EpisodeOfCareStatus cancelled = EpisodeOfCareStatus._(
    valueString: 'cancelled',
    valueEnum: EpisodeOfCareStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static const EpisodeOfCareStatus enteredInError = EpisodeOfCareStatus._(
    valueString: 'entered-in-error',
    valueEnum: EpisodeOfCareStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<EpisodeOfCareStatus> values = [
    planned,
    waitlist,
    active,
    onhold,
    finished,
    cancelled,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  EpisodeOfCareStatus withElement(Element? newElement) {
    return EpisodeOfCareStatus._(
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
  EpisodeOfCareStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  EpisodeOfCareStatusCopyWithImpl<EpisodeOfCareStatus> get copyWith =>
      EpisodeOfCareStatusCopyWithImpl<EpisodeOfCareStatus>(
        this,
        (v) => v as EpisodeOfCareStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class EpisodeOfCareStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  EpisodeOfCareStatusCopyWithImpl(super._value, super._then);

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
      EpisodeOfCareStatus(
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
