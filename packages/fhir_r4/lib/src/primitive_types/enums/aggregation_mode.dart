part of '../primitive_types.dart';

/// Actual enum for AggregationMode
enum AggregationModeEnum {
  /// contained
  contained,

  /// referenced
  referenced,

  /// bundled
  bundled,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AggregationModeEnum.contained:
        return 'contained';
      case AggregationModeEnum.referenced:
        return 'referenced';
      case AggregationModeEnum.bundled:
        return 'bundled';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AggregationModeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AggregationModeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AggregationModeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'contained':
        return AggregationModeEnum.contained;
      case 'referenced':
        return AggregationModeEnum.referenced;
      case 'bundled':
        return AggregationModeEnum.bundled;
    }
    return null;
  }
}

/// How resource references can be aggregated.
class AggregationMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AggregationMode._({
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
  factory AggregationMode(
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
    final valueEnum = AggregationModeEnum.fromString(valueString);
    return AggregationMode._(
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

  /// Factory constructor to create [AggregationMode]
  /// from JSON.
  factory AggregationMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AggregationModeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AggregationMode._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AggregationMode cannot be constructed from JSON.',
      );
    }
    return AggregationMode._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AggregationMode
  final AggregationModeEnum? valueEnum;

  /// contained
  static const AggregationMode contained = AggregationMode._(
    valueString: 'contained',
    valueEnum: AggregationModeEnum.contained,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-aggregation-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Contained',
    ),
  );

  /// referenced
  static const AggregationMode referenced = AggregationMode._(
    valueString: 'referenced',
    valueEnum: AggregationModeEnum.referenced,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-aggregation-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Referenced',
    ),
  );

  /// bundled
  static const AggregationMode bundled = AggregationMode._(
    valueString: 'bundled',
    valueEnum: AggregationModeEnum.bundled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-aggregation-mode',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Bundled',
    ),
  );

  /// List of all enum-like values
  static final List<AggregationMode> values = [
    contained,
    referenced,
    bundled,
  ];

  /// Returns the enum value with an element attached
  AggregationMode withElement(Element? newElement) {
    return AggregationMode._(
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
  AggregationMode clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AggregationModeCopyWithImpl<AggregationMode> get copyWith =>
      AggregationModeCopyWithImpl<AggregationMode>(
        this,
        (v) => v as AggregationMode,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AggregationModeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AggregationModeCopyWithImpl(super._value, super._then);

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
      AggregationMode(
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
