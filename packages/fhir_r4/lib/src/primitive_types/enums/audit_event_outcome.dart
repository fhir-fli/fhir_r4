part of '../primitive_types.dart';

/// Actual enum for AuditEventOutcome
enum AuditEventOutcomeEnum {
  /// 0
  value0,

  /// 4
  value4,

  /// 8
  value8,

  /// 12
  value12,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AuditEventOutcomeEnum.value0:
        return '0';
      case AuditEventOutcomeEnum.value4:
        return '4';
      case AuditEventOutcomeEnum.value8:
        return '8';
      case AuditEventOutcomeEnum.value12:
        return '12';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AuditEventOutcomeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AuditEventOutcomeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AuditEventOutcomeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '0':
        return AuditEventOutcomeEnum.value0;
      case '4':
        return AuditEventOutcomeEnum.value4;
      case '8':
        return AuditEventOutcomeEnum.value8;
      case '12':
        return AuditEventOutcomeEnum.value12;
    }
    return null;
  }
}

/// Indicates whether the event succeeded or failed.
class AuditEventOutcome extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AuditEventOutcome._({
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
  factory AuditEventOutcome(
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
    final valueEnum = AuditEventOutcomeEnum.fromString(valueString);
    return AuditEventOutcome._(
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

  /// Factory constructor to create [AuditEventOutcome]
  /// from JSON.
  factory AuditEventOutcome.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AuditEventOutcomeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventOutcome._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventOutcome cannot be constructed from JSON.',
      );
    }
    return AuditEventOutcome._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AuditEventOutcome
  final AuditEventOutcomeEnum? valueEnum;

  /// value0
  static const AuditEventOutcome value0 = AuditEventOutcome._(
    valueString: '0',
    valueEnum: AuditEventOutcomeEnum.value0,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-outcome',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Success',
    ),
  );

  /// value4
  static const AuditEventOutcome value4 = AuditEventOutcome._(
    valueString: '4',
    valueEnum: AuditEventOutcomeEnum.value4,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-outcome',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Minor failure',
    ),
  );

  /// value8
  static const AuditEventOutcome value8 = AuditEventOutcome._(
    valueString: '8',
    valueEnum: AuditEventOutcomeEnum.value8,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-outcome',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Serious failure',
    ),
  );

  /// value12
  static const AuditEventOutcome value12 = AuditEventOutcome._(
    valueString: '12',
    valueEnum: AuditEventOutcomeEnum.value12,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/audit-event-outcome',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Major failure',
    ),
  );

  /// List of all enum-like values
  static final List<AuditEventOutcome> values = [
    value0,
    value4,
    value8,
    value12,
  ];

  /// Returns the enum value with an element attached
  AuditEventOutcome withElement(Element? newElement) {
    return AuditEventOutcome._(
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
  AuditEventOutcome clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AuditEventOutcomeCopyWithImpl<AuditEventOutcome> get copyWith =>
      AuditEventOutcomeCopyWithImpl<AuditEventOutcome>(
        this,
        (v) => v as AuditEventOutcome,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AuditEventOutcomeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AuditEventOutcomeCopyWithImpl(super._value, super._then);

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
      AuditEventOutcome(
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
