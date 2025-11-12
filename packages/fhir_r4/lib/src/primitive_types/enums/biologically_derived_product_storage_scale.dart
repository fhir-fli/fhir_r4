// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for BiologicallyDerivedProductStorageScale
enum BiologicallyDerivedProductStorageScaleEnum {
  /// farenheit
  farenheit,

  /// celsius
  celsius,

  /// kelvin
  kelvin,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case BiologicallyDerivedProductStorageScaleEnum.farenheit:
        return 'farenheit';
      case BiologicallyDerivedProductStorageScaleEnum.celsius:
        return 'celsius';
      case BiologicallyDerivedProductStorageScaleEnum.kelvin:
        return 'kelvin';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BiologicallyDerivedProductStorageScaleEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return BiologicallyDerivedProductStorageScaleEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BiologicallyDerivedProductStorageScaleEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'farenheit':
        return BiologicallyDerivedProductStorageScaleEnum.farenheit;
      case 'celsius':
        return BiologicallyDerivedProductStorageScaleEnum.celsius;
      case 'kelvin':
        return BiologicallyDerivedProductStorageScaleEnum.kelvin;
    }
    return null;
  }
}

/// BiologicallyDerived Product Storage Scale.
class BiologicallyDerivedProductStorageScale extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const BiologicallyDerivedProductStorageScale._({
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
  factory BiologicallyDerivedProductStorageScale(
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
    final valueEnum =
        BiologicallyDerivedProductStorageScaleEnum.fromString(valueString);
    return BiologicallyDerivedProductStorageScale._(
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

  /// Factory constructor to create [BiologicallyDerivedProductStorageScale]
  /// from JSON.
  factory BiologicallyDerivedProductStorageScale.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum =
        BiologicallyDerivedProductStorageScaleEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStorageScale._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductStorageScale cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductStorageScale._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for BiologicallyDerivedProductStorageScale
  final BiologicallyDerivedProductStorageScaleEnum? valueEnum;

  /// farenheit
  static const BiologicallyDerivedProductStorageScale farenheit =
      BiologicallyDerivedProductStorageScale._(
    valueString: 'farenheit',
    valueEnum: BiologicallyDerivedProductStorageScaleEnum.farenheit,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-storage-scale',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Fahrenheit',
    ),
  );

  /// celsius
  static const BiologicallyDerivedProductStorageScale celsius =
      BiologicallyDerivedProductStorageScale._(
    valueString: 'celsius',
    valueEnum: BiologicallyDerivedProductStorageScaleEnum.celsius,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-storage-scale',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Celsius',
    ),
  );

  /// kelvin
  static const BiologicallyDerivedProductStorageScale kelvin =
      BiologicallyDerivedProductStorageScale._(
    valueString: 'kelvin',
    valueEnum: BiologicallyDerivedProductStorageScaleEnum.kelvin,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-storage-scale',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Kelvin',
    ),
  );

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductStorageScale> values = [
    farenheit,
    celsius,
    kelvin,
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStorageScale withElement(Element? newElement) {
    return BiologicallyDerivedProductStorageScale._(
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
  BiologicallyDerivedProductStorageScale clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  BiologicallyDerivedProductStorageScaleCopyWithImpl<
          BiologicallyDerivedProductStorageScale>
      get copyWith => BiologicallyDerivedProductStorageScaleCopyWithImpl<
              BiologicallyDerivedProductStorageScale>(
            this,
            (v) => v as BiologicallyDerivedProductStorageScale,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class BiologicallyDerivedProductStorageScaleCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  BiologicallyDerivedProductStorageScaleCopyWithImpl(super._value, super._then);

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
      BiologicallyDerivedProductStorageScale(
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
