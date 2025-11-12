// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for BiologicallyDerivedProductStorageScale
enum BiologicallyDerivedProductStorageScaleBuilderEnum {
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
      case BiologicallyDerivedProductStorageScaleBuilderEnum.farenheit:
        return 'farenheit';
      case BiologicallyDerivedProductStorageScaleBuilderEnum.celsius:
        return 'celsius';
      case BiologicallyDerivedProductStorageScaleBuilderEnum.kelvin:
        return 'kelvin';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BiologicallyDerivedProductStorageScaleBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return BiologicallyDerivedProductStorageScaleBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BiologicallyDerivedProductStorageScaleBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'farenheit':
        return BiologicallyDerivedProductStorageScaleBuilderEnum.farenheit;
      case 'celsius':
        return BiologicallyDerivedProductStorageScaleBuilderEnum.celsius;
      case 'kelvin':
        return BiologicallyDerivedProductStorageScaleBuilderEnum.kelvin;
    }
    return null;
  }
}

/// BiologicallyDerived Product Storage Scale.
class BiologicallyDerivedProductStorageScaleBuilder
    extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductStorageScaleBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory BiologicallyDerivedProductStorageScaleBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum =
        BiologicallyDerivedProductStorageScaleBuilderEnum.fromString(
      valueString,
    );
    return BiologicallyDerivedProductStorageScaleBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [BiologicallyDerivedProductStorageScaleBuilder]
  /// with element only
  factory BiologicallyDerivedProductStorageScaleBuilder.empty() =>
      BiologicallyDerivedProductStorageScaleBuilder._(valueString: null);

  /// Factory constructor to create
  /// [BiologicallyDerivedProductStorageScaleBuilder] from JSON.
  factory BiologicallyDerivedProductStorageScaleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStorageScaleBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductStorageScaleBuilder cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductStorageScaleBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for BiologicallyDerivedProductStorageScaleBuilder
  final BiologicallyDerivedProductStorageScaleBuilderEnum? valueEnum;

  /// farenheit
  static BiologicallyDerivedProductStorageScaleBuilder farenheit =
      BiologicallyDerivedProductStorageScaleBuilder._(
    valueString: 'farenheit',
    valueEnum: BiologicallyDerivedProductStorageScaleBuilderEnum.farenheit,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-storage-scale',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Fahrenheit',
    ),
  );

  /// celsius
  static BiologicallyDerivedProductStorageScaleBuilder celsius =
      BiologicallyDerivedProductStorageScaleBuilder._(
    valueString: 'celsius',
    valueEnum: BiologicallyDerivedProductStorageScaleBuilderEnum.celsius,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-storage-scale',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Celsius',
    ),
  );

  /// kelvin
  static BiologicallyDerivedProductStorageScaleBuilder kelvin =
      BiologicallyDerivedProductStorageScaleBuilder._(
    valueString: 'kelvin',
    valueEnum: BiologicallyDerivedProductStorageScaleBuilderEnum.kelvin,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-storage-scale',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Kelvin',
    ),
  );

  /// For instances where an Element is present but not value
  static BiologicallyDerivedProductStorageScaleBuilder elementOnly =
      BiologicallyDerivedProductStorageScaleBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<BiologicallyDerivedProductStorageScaleBuilder> values = [
    farenheit,
    celsius,
    kelvin,
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStorageScaleBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return BiologicallyDerivedProductStorageScaleBuilder._(
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
}
