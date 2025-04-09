// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DetectedIssueSeverity
enum DetectedIssueSeverityEnum {
  /// high
  high,

  /// moderate
  moderate,

  /// low
  low,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DetectedIssueSeverityEnum.high:
        return 'high';
      case DetectedIssueSeverityEnum.moderate:
        return 'moderate';
      case DetectedIssueSeverityEnum.low:
        return 'low';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DetectedIssueSeverityEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DetectedIssueSeverityEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DetectedIssueSeverityEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'high':
        return DetectedIssueSeverityEnum.high;
      case 'moderate':
        return DetectedIssueSeverityEnum.moderate;
      case 'low':
        return DetectedIssueSeverityEnum.low;
    }
    return null;
  }
}

/// Indicates the potential degree of impact of the identified issue on the
/// patient.
class DetectedIssueSeverity extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DetectedIssueSeverity._({
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
  factory DetectedIssueSeverity(
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
    final valueEnum = DetectedIssueSeverityEnum.fromString(valueString);
    return DetectedIssueSeverity._(
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

  /// Factory constructor to create [DetectedIssueSeverity]
  /// from JSON.
  factory DetectedIssueSeverity.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DetectedIssueSeverityEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueSeverity._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DetectedIssueSeverity cannot be constructed from JSON.',
      );
    }
    return DetectedIssueSeverity._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DetectedIssueSeverity
  final DetectedIssueSeverityEnum? valueEnum;

  /// high
  static const DetectedIssueSeverity high = DetectedIssueSeverity._(
    valueString: 'high',
    valueEnum: DetectedIssueSeverityEnum.high,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'High',
    ),
  );

  /// moderate
  static const DetectedIssueSeverity moderate = DetectedIssueSeverity._(
    valueString: 'moderate',
    valueEnum: DetectedIssueSeverityEnum.moderate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Moderate',
    ),
  );

  /// low
  static const DetectedIssueSeverity low = DetectedIssueSeverity._(
    valueString: 'low',
    valueEnum: DetectedIssueSeverityEnum.low,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/detectedissue-severity',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Low',
    ),
  );

  /// List of all enum-like values
  static final List<DetectedIssueSeverity> values = [
    high,
    moderate,
    low,
  ];

  /// Returns the enum value with an element attached
  DetectedIssueSeverity withElement(Element? newElement) {
    return DetectedIssueSeverity._(
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
  DetectedIssueSeverity clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DetectedIssueSeverityCopyWithImpl<DetectedIssueSeverity> get copyWith =>
      DetectedIssueSeverityCopyWithImpl<DetectedIssueSeverity>(
        this,
        (v) => v as DetectedIssueSeverity,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DetectedIssueSeverityCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DetectedIssueSeverityCopyWithImpl(super._value, super._then);

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
      DetectedIssueSeverity(
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
