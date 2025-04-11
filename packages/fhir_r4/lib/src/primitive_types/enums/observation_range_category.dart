// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ObservationRangeCategory
enum ObservationRangeCategoryEnum {
  /// reference
  reference,

  /// critical
  critical,

  /// absolute
  absolute,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ObservationRangeCategoryEnum.reference:
        return 'reference';
      case ObservationRangeCategoryEnum.critical:
        return 'critical';
      case ObservationRangeCategoryEnum.absolute:
        return 'absolute';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ObservationRangeCategoryEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ObservationRangeCategoryEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ObservationRangeCategoryEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'reference':
        return ObservationRangeCategoryEnum.reference;
      case 'critical':
        return ObservationRangeCategoryEnum.critical;
      case 'absolute':
        return ObservationRangeCategoryEnum.absolute;
    }
    return null;
  }
}

/// Codes identifying the category of observation range.
class ObservationRangeCategory extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ObservationRangeCategory._({
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
  factory ObservationRangeCategory(
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
    final valueEnum = ObservationRangeCategoryEnum.fromString(valueString);
    return ObservationRangeCategory._(
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

  /// Factory constructor to create [ObservationRangeCategory]
  /// from JSON.
  factory ObservationRangeCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ObservationRangeCategoryEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationRangeCategory._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationRangeCategory cannot be constructed from JSON.',
      );
    }
    return ObservationRangeCategory._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ObservationRangeCategory
  final ObservationRangeCategoryEnum? valueEnum;

  /// reference
  static const ObservationRangeCategory reference = ObservationRangeCategory._(
    valueString: 'reference',
    valueEnum: ObservationRangeCategoryEnum.reference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-range-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'reference range',
    ),
  );

  /// critical
  static const ObservationRangeCategory critical = ObservationRangeCategory._(
    valueString: 'critical',
    valueEnum: ObservationRangeCategoryEnum.critical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-range-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'critical range',
    ),
  );

  /// absolute
  static const ObservationRangeCategory absolute = ObservationRangeCategory._(
    valueString: 'absolute',
    valueEnum: ObservationRangeCategoryEnum.absolute,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/observation-range-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'absolute range',
    ),
  );

  /// List of all enum-like values
  static final List<ObservationRangeCategory> values = [
    reference,
    critical,
    absolute,
  ];

  /// Returns the enum value with an element attached
  ObservationRangeCategory withElement(Element? newElement) {
    return ObservationRangeCategory._(
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
  ObservationRangeCategory clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ObservationRangeCategoryCopyWithImpl<ObservationRangeCategory> get copyWith =>
      ObservationRangeCategoryCopyWithImpl<ObservationRangeCategory>(
        this,
        (v) => v as ObservationRangeCategory,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ObservationRangeCategoryCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ObservationRangeCategoryCopyWithImpl(super._value, super._then);

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
      ObservationRangeCategory(
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
