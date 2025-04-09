// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConstraintSeverity
enum ConstraintSeverityEnum {
  /// error
  error,

  /// warning
  warning,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConstraintSeverityEnum.error:
        return 'error';
      case ConstraintSeverityEnum.warning:
        return 'warning';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConstraintSeverityEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConstraintSeverityEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConstraintSeverityEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'error':
        return ConstraintSeverityEnum.error;
      case 'warning':
        return ConstraintSeverityEnum.warning;
    }
    return null;
  }
}

/// SHALL applications comply with this constraint?
class ConstraintSeverity extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConstraintSeverity._({
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
  factory ConstraintSeverity(
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
    final valueEnum = ConstraintSeverityEnum.fromString(valueString);
    return ConstraintSeverity._(
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

  /// Factory constructor to create [ConstraintSeverity]
  /// from JSON.
  factory ConstraintSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConstraintSeverityEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConstraintSeverity._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConstraintSeverity cannot be constructed from JSON.',
      );
    }
    return ConstraintSeverity._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConstraintSeverity
  final ConstraintSeverityEnum? valueEnum;

  /// error
  static const ConstraintSeverity error = ConstraintSeverity._(
    valueString: 'error',
    valueEnum: ConstraintSeverityEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/constraint-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// warning
  static const ConstraintSeverity warning = ConstraintSeverity._(
    valueString: 'warning',
    valueEnum: ConstraintSeverityEnum.warning,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/constraint-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Warning',
    ),
  );

  /// List of all enum-like values
  static final List<ConstraintSeverity> values = [
    error,
    warning,
  ];

  /// Returns the enum value with an element attached
  ConstraintSeverity withElement(Element? newElement) {
    return ConstraintSeverity._(
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
  ConstraintSeverity clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConstraintSeverityCopyWithImpl<ConstraintSeverity> get copyWith =>
      ConstraintSeverityCopyWithImpl<ConstraintSeverity>(
        this,
        (v) => v as ConstraintSeverity,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConstraintSeverityCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConstraintSeverityCopyWithImpl(super._value, super._then);

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
      ConstraintSeverity(
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
