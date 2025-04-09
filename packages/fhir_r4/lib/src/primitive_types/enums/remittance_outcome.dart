// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for RemittanceOutcome
enum RemittanceOutcomeEnum {
  /// queued
  queued,

  /// complete
  complete,

  /// error
  error,

  /// partial
  partial,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case RemittanceOutcomeEnum.queued:
        return 'queued';
      case RemittanceOutcomeEnum.complete:
        return 'complete';
      case RemittanceOutcomeEnum.error:
        return 'error';
      case RemittanceOutcomeEnum.partial:
        return 'partial';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static RemittanceOutcomeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return RemittanceOutcomeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static RemittanceOutcomeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'queued':
        return RemittanceOutcomeEnum.queued;
      case 'complete':
        return RemittanceOutcomeEnum.complete;
      case 'error':
        return RemittanceOutcomeEnum.error;
      case 'partial':
        return RemittanceOutcomeEnum.partial;
    }
    return null;
  }
}

/// The outcome of the processing.
class RemittanceOutcome extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const RemittanceOutcome._({
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
  factory RemittanceOutcome(
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
    final valueEnum = RemittanceOutcomeEnum.fromString(valueString);
    return RemittanceOutcome._(
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

  /// Factory constructor to create [RemittanceOutcome]
  /// from JSON.
  factory RemittanceOutcome.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = RemittanceOutcomeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RemittanceOutcome._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'RemittanceOutcome cannot be constructed from JSON.',
      );
    }
    return RemittanceOutcome._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for RemittanceOutcome
  final RemittanceOutcomeEnum? valueEnum;

  /// queued
  static const RemittanceOutcome queued = RemittanceOutcome._(
    valueString: 'queued',
    valueEnum: RemittanceOutcomeEnum.queued,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/remittance-outcome',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Queued',
    ),
  );

  /// complete
  static const RemittanceOutcome complete = RemittanceOutcome._(
    valueString: 'complete',
    valueEnum: RemittanceOutcomeEnum.complete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/remittance-outcome',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Complete',
    ),
  );

  /// error
  static const RemittanceOutcome error = RemittanceOutcome._(
    valueString: 'error',
    valueEnum: RemittanceOutcomeEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/remittance-outcome',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// partial
  static const RemittanceOutcome partial = RemittanceOutcome._(
    valueString: 'partial',
    valueEnum: RemittanceOutcomeEnum.partial,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/remittance-outcome',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Partial',
    ),
  );

  /// List of all enum-like values
  static final List<RemittanceOutcome> values = [
    queued,
    complete,
    error,
    partial,
  ];

  /// Returns the enum value with an element attached
  RemittanceOutcome withElement(Element? newElement) {
    return RemittanceOutcome._(
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
  RemittanceOutcome clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  RemittanceOutcomeCopyWithImpl<RemittanceOutcome> get copyWith =>
      RemittanceOutcomeCopyWithImpl<RemittanceOutcome>(
        this,
        (v) => v as RemittanceOutcome,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class RemittanceOutcomeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  RemittanceOutcomeCopyWithImpl(super._value, super._then);

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
      RemittanceOutcome(
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
