part of '../primitive_types.dart';

/// Actual enum for IssueSeverity
enum IssueSeverityEnum {
  /// fatal
  fatal,

  /// error
  error,

  /// warning
  warning,

  /// information
  information,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case IssueSeverityEnum.fatal:
        return 'fatal';
      case IssueSeverityEnum.error:
        return 'error';
      case IssueSeverityEnum.warning:
        return 'warning';
      case IssueSeverityEnum.information:
        return 'information';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static IssueSeverityEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return IssueSeverityEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static IssueSeverityEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'fatal':
        return IssueSeverityEnum.fatal;
      case 'error':
        return IssueSeverityEnum.error;
      case 'warning':
        return IssueSeverityEnum.warning;
      case 'information':
        return IssueSeverityEnum.information;
    }
    return null;
  }
}

/// How the issue affects the success of the action.
class IssueSeverity extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const IssueSeverity._({
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
  factory IssueSeverity(
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
    final valueEnum = IssueSeverityEnum.fromString(valueString);
    return IssueSeverity._(
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

  /// Factory constructor to create [IssueSeverity]
  /// from JSON.
  factory IssueSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = IssueSeverityEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IssueSeverity._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IssueSeverity cannot be constructed from JSON.',
      );
    }
    return IssueSeverity._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for IssueSeverity
  final IssueSeverityEnum? valueEnum;

  /// fatal
  static const IssueSeverity fatal = IssueSeverity._(
    valueString: 'fatal',
    valueEnum: IssueSeverityEnum.fatal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Fatal',
    ),
  );

  /// error
  static const IssueSeverity error = IssueSeverity._(
    valueString: 'error',
    valueEnum: IssueSeverityEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// warning
  static const IssueSeverity warning = IssueSeverity._(
    valueString: 'warning',
    valueEnum: IssueSeverityEnum.warning,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Warning',
    ),
  );

  /// information
  static const IssueSeverity information = IssueSeverity._(
    valueString: 'information',
    valueEnum: IssueSeverityEnum.information,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/issue-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Information',
    ),
  );

  /// List of all enum-like values
  static final List<IssueSeverity> values = [
    fatal,
    error,
    warning,
    information,
  ];

  /// Returns the enum value with an element attached
  IssueSeverity withElement(Element? newElement) {
    return IssueSeverity._(
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
  IssueSeverity clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  IssueSeverityCopyWithImpl<IssueSeverity> get copyWith =>
      IssueSeverityCopyWithImpl<IssueSeverity>(
        this,
        (v) => v as IssueSeverity,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class IssueSeverityCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  IssueSeverityCopyWithImpl(super._value, super._then);

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
      IssueSeverity(
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
