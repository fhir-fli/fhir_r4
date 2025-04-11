// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ParticipantRequired
enum ParticipantRequiredEnum {
  /// required
  required_,

  /// optional
  optional,

  /// information-only
  informationOnly,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ParticipantRequiredEnum.required_:
        return 'required';
      case ParticipantRequiredEnum.optional:
        return 'optional';
      case ParticipantRequiredEnum.informationOnly:
        return 'information-only';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ParticipantRequiredEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ParticipantRequiredEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ParticipantRequiredEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'required':
        return ParticipantRequiredEnum.required_;
      case 'optional':
        return ParticipantRequiredEnum.optional;
      case 'information-only':
        return ParticipantRequiredEnum.informationOnly;
    }
    return null;
  }
}

/// Is the Participant required to attend the appointment.
class ParticipantRequired extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ParticipantRequired._({
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
  factory ParticipantRequired(
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
    final valueEnum = ParticipantRequiredEnum.fromString(valueString);
    return ParticipantRequired._(
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

  /// Factory constructor to create [ParticipantRequired]
  /// from JSON.
  factory ParticipantRequired.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ParticipantRequiredEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantRequired._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ParticipantRequired cannot be constructed from JSON.',
      );
    }
    return ParticipantRequired._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ParticipantRequired
  final ParticipantRequiredEnum? valueEnum;

  /// required_
  static const ParticipantRequired required_ = ParticipantRequired._(
    valueString: 'required',
    valueEnum: ParticipantRequiredEnum.required_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/participantrequired',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Required',
    ),
  );

  /// optional
  static const ParticipantRequired optional = ParticipantRequired._(
    valueString: 'optional',
    valueEnum: ParticipantRequiredEnum.optional,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/participantrequired',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Optional',
    ),
  );

  /// information_only
  static const ParticipantRequired informationOnly = ParticipantRequired._(
    valueString: 'information-only',
    valueEnum: ParticipantRequiredEnum.informationOnly,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/participantrequired',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Information Only',
    ),
  );

  /// List of all enum-like values
  static final List<ParticipantRequired> values = [
    required_,
    optional,
    informationOnly,
  ];

  /// Returns the enum value with an element attached
  ParticipantRequired withElement(Element? newElement) {
    return ParticipantRequired._(
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
  ParticipantRequired clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ParticipantRequiredCopyWithImpl<ParticipantRequired> get copyWith =>
      ParticipantRequiredCopyWithImpl<ParticipantRequired>(
        this,
        (v) => v as ParticipantRequired,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ParticipantRequiredCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ParticipantRequiredCopyWithImpl(super._value, super._then);

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
      ParticipantRequired(
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
