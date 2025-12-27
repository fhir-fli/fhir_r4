part of '../primitive_types.dart';

/// Actual enum for SpecimenStatus
enum SpecimenStatusEnum {
  /// available
  available,

  /// unavailable
  unavailable,

  /// unsatisfactory
  unsatisfactory,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SpecimenStatusEnum.available:
        return 'available';
      case SpecimenStatusEnum.unavailable:
        return 'unavailable';
      case SpecimenStatusEnum.unsatisfactory:
        return 'unsatisfactory';
      case SpecimenStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SpecimenStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SpecimenStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SpecimenStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'available':
        return SpecimenStatusEnum.available;
      case 'unavailable':
        return SpecimenStatusEnum.unavailable;
      case 'unsatisfactory':
        return SpecimenStatusEnum.unsatisfactory;
      case 'entered-in-error':
        return SpecimenStatusEnum.enteredInError;
    }
    return null;
  }
}

/// Codes providing the status/availability of a specimen.
class SpecimenStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SpecimenStatus._({
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
  factory SpecimenStatus(
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
    final valueEnum = SpecimenStatusEnum.fromString(valueString);
    return SpecimenStatus._(
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

  /// Factory constructor to create [SpecimenStatus]
  /// from JSON.
  factory SpecimenStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SpecimenStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecimenStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SpecimenStatus cannot be constructed from JSON.',
      );
    }
    return SpecimenStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SpecimenStatus
  final SpecimenStatusEnum? valueEnum;

  /// available
  static const SpecimenStatus available = SpecimenStatus._(
    valueString: 'available',
    valueEnum: SpecimenStatusEnum.available,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Available',
    ),
  );

  /// unavailable
  static const SpecimenStatus unavailable = SpecimenStatus._(
    valueString: 'unavailable',
    valueEnum: SpecimenStatusEnum.unavailable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unavailable',
    ),
  );

  /// unsatisfactory
  static const SpecimenStatus unsatisfactory = SpecimenStatus._(
    valueString: 'unsatisfactory',
    valueEnum: SpecimenStatusEnum.unsatisfactory,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unsatisfactory',
    ),
  );

  /// entered_in_error
  static const SpecimenStatus enteredInError = SpecimenStatus._(
    valueString: 'entered-in-error',
    valueEnum: SpecimenStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/specimen-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<SpecimenStatus> values = [
    available,
    unavailable,
    unsatisfactory,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  SpecimenStatus withElement(Element? newElement) {
    return SpecimenStatus._(
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
  SpecimenStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SpecimenStatusCopyWithImpl<SpecimenStatus> get copyWith =>
      SpecimenStatusCopyWithImpl<SpecimenStatus>(
        this,
        (v) => v as SpecimenStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SpecimenStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SpecimenStatusCopyWithImpl(super._value, super._then);

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
      SpecimenStatus(
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
