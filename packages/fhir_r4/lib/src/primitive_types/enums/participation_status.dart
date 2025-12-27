part of '../primitive_types.dart';

/// Actual enum for ParticipationStatus
enum ParticipationStatusEnum {
  /// accepted
  accepted,

  /// declined
  declined,

  /// tentative
  tentative,

  /// needs-action
  needsAction,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ParticipationStatusEnum.accepted:
        return 'accepted';
      case ParticipationStatusEnum.declined:
        return 'declined';
      case ParticipationStatusEnum.tentative:
        return 'tentative';
      case ParticipationStatusEnum.needsAction:
        return 'needs-action';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ParticipationStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ParticipationStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ParticipationStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'accepted':
        return ParticipationStatusEnum.accepted;
      case 'declined':
        return ParticipationStatusEnum.declined;
      case 'tentative':
        return ParticipationStatusEnum.tentative;
      case 'needs-action':
        return ParticipationStatusEnum.needsAction;
    }
    return null;
  }
}

/// The Participation status of an appointment.
class ParticipationStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ParticipationStatus._({
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
  factory ParticipationStatus(
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
    final valueEnum = ParticipationStatusEnum.fromString(valueString);
    return ParticipationStatus._(
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

  /// Factory constructor to create [ParticipationStatus]
  /// from JSON.
  factory ParticipationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ParticipationStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipationStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ParticipationStatus cannot be constructed from JSON.',
      );
    }
    return ParticipationStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ParticipationStatus
  final ParticipationStatusEnum? valueEnum;

  /// accepted
  static const ParticipationStatus accepted = ParticipationStatus._(
    valueString: 'accepted',
    valueEnum: ParticipationStatusEnum.accepted,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/participationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Accepted',
    ),
  );

  /// declined
  static const ParticipationStatus declined = ParticipationStatus._(
    valueString: 'declined',
    valueEnum: ParticipationStatusEnum.declined,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/participationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Declined',
    ),
  );

  /// tentative
  static const ParticipationStatus tentative = ParticipationStatus._(
    valueString: 'tentative',
    valueEnum: ParticipationStatusEnum.tentative,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/participationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Tentative',
    ),
  );

  /// needs_action
  static const ParticipationStatus needsAction = ParticipationStatus._(
    valueString: 'needs-action',
    valueEnum: ParticipationStatusEnum.needsAction,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/participationstatus',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Needs Action',
    ),
  );

  /// List of all enum-like values
  static final List<ParticipationStatus> values = [
    accepted,
    declined,
    tentative,
    needsAction,
  ];

  /// Returns the enum value with an element attached
  ParticipationStatus withElement(Element? newElement) {
    return ParticipationStatus._(
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
  ParticipationStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ParticipationStatusCopyWithImpl<ParticipationStatus> get copyWith =>
      ParticipationStatusCopyWithImpl<ParticipationStatus>(
        this,
        (v) => v as ParticipationStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ParticipationStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ParticipationStatusCopyWithImpl(super._value, super._then);

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
      ParticipationStatus(
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
