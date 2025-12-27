part of '../primitive_types.dart';

/// Actual enum for SlotStatus
enum SlotStatusEnum {
  /// busy
  busy,

  /// free
  free,

  /// busy-unavailable
  busyUnavailable,

  /// busy-tentative
  busyTentative,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SlotStatusEnum.busy:
        return 'busy';
      case SlotStatusEnum.free:
        return 'free';
      case SlotStatusEnum.busyUnavailable:
        return 'busy-unavailable';
      case SlotStatusEnum.busyTentative:
        return 'busy-tentative';
      case SlotStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SlotStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SlotStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SlotStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'busy':
        return SlotStatusEnum.busy;
      case 'free':
        return SlotStatusEnum.free;
      case 'busy-unavailable':
        return SlotStatusEnum.busyUnavailable;
      case 'busy-tentative':
        return SlotStatusEnum.busyTentative;
      case 'entered-in-error':
        return SlotStatusEnum.enteredInError;
    }
    return null;
  }
}

/// The free/busy status of the slot.
class SlotStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SlotStatus._({
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
  factory SlotStatus(
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
    final valueEnum = SlotStatusEnum.fromString(valueString);
    return SlotStatus._(
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

  /// Factory constructor to create [SlotStatus]
  /// from JSON.
  factory SlotStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SlotStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlotStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SlotStatus cannot be constructed from JSON.',
      );
    }
    return SlotStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SlotStatus
  final SlotStatusEnum? valueEnum;

  /// busy
  static const SlotStatus busy = SlotStatus._(
    valueString: 'busy',
    valueEnum: SlotStatusEnum.busy,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/slotstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Busy',
    ),
  );

  /// free
  static const SlotStatus free = SlotStatus._(
    valueString: 'free',
    valueEnum: SlotStatusEnum.free,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/slotstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Free',
    ),
  );

  /// busy_unavailable
  static const SlotStatus busyUnavailable = SlotStatus._(
    valueString: 'busy-unavailable',
    valueEnum: SlotStatusEnum.busyUnavailable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/slotstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Busy (Unavailable)',
    ),
  );

  /// busy_tentative
  static const SlotStatus busyTentative = SlotStatus._(
    valueString: 'busy-tentative',
    valueEnum: SlotStatusEnum.busyTentative,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/slotstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Busy (Tentative)',
    ),
  );

  /// entered_in_error
  static const SlotStatus enteredInError = SlotStatus._(
    valueString: 'entered-in-error',
    valueEnum: SlotStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/slotstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in error',
    ),
  );

  /// List of all enum-like values
  static final List<SlotStatus> values = [
    busy,
    free,
    busyUnavailable,
    busyTentative,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  SlotStatus withElement(Element? newElement) {
    return SlotStatus._(
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
  SlotStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SlotStatusCopyWithImpl<SlotStatus> get copyWith =>
      SlotStatusCopyWithImpl<SlotStatus>(
        this,
        (v) => v as SlotStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SlotStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SlotStatusCopyWithImpl(super._value, super._then);

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
      SlotStatus(
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
