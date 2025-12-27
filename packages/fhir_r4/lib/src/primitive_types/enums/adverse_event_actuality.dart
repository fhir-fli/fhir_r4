part of '../primitive_types.dart';

/// Actual enum for AdverseEventActuality
enum AdverseEventActualityEnum {
  /// actual
  actual,

  /// potential
  potential,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AdverseEventActualityEnum.actual:
        return 'actual';
      case AdverseEventActualityEnum.potential:
        return 'potential';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AdverseEventActualityEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AdverseEventActualityEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AdverseEventActualityEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'actual':
        return AdverseEventActualityEnum.actual;
      case 'potential':
        return AdverseEventActualityEnum.potential;
    }
    return null;
  }
}

/// Overall nature of the adverse event, e.g. real or potential.
class AdverseEventActuality extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AdverseEventActuality._({
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
  factory AdverseEventActuality(
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
    final valueEnum = AdverseEventActualityEnum.fromString(valueString);
    return AdverseEventActuality._(
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

  /// Factory constructor to create [AdverseEventActuality]
  /// from JSON.
  factory AdverseEventActuality.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AdverseEventActualityEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventActuality._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdverseEventActuality cannot be constructed from JSON.',
      );
    }
    return AdverseEventActuality._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AdverseEventActuality
  final AdverseEventActualityEnum? valueEnum;

  /// actual
  static const AdverseEventActuality actual = AdverseEventActuality._(
    valueString: 'actual',
    valueEnum: AdverseEventActualityEnum.actual,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-actuality',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Adverse Event',
    ),
  );

  /// potential
  static const AdverseEventActuality potential = AdverseEventActuality._(
    valueString: 'potential',
    valueEnum: AdverseEventActualityEnum.potential,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/adverse-event-actuality',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Potential Adverse Event',
    ),
  );

  /// List of all enum-like values
  static final List<AdverseEventActuality> values = [
    actual,
    potential,
  ];

  /// Returns the enum value with an element attached
  AdverseEventActuality withElement(Element? newElement) {
    return AdverseEventActuality._(
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
  AdverseEventActuality clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AdverseEventActualityCopyWithImpl<AdverseEventActuality> get copyWith =>
      AdverseEventActualityCopyWithImpl<AdverseEventActuality>(
        this,
        (v) => v as AdverseEventActuality,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AdverseEventActualityCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AdverseEventActualityCopyWithImpl(super._value, super._then);

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
      AdverseEventActuality(
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
