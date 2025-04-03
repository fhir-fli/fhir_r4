// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// BiologicallyDerived Product Storage Scale.
class BiologicallyDerivedProductStorageScaleBuilder
    extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductStorageScaleBuilder._({
    required super.valueString,
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
    return BiologicallyDerivedProductStorageScaleBuilder._(
      valueString: valueString,
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

  /// Create empty [BiologicallyDerivedProductStorageScaleBuilder] with element only
  factory BiologicallyDerivedProductStorageScaleBuilder.empty() =>
      BiologicallyDerivedProductStorageScaleBuilder._(valueString: '');

  /// Factory constructor to create [BiologicallyDerivedProductStorageScaleBuilder]
  /// from JSON.
  factory BiologicallyDerivedProductStorageScaleBuilder.fromJson(
      Map<String, dynamic> json,) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStorageScaleBuilder.elementOnly
          .withElement(element);
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

  /// farenheit
  static BiologicallyDerivedProductStorageScaleBuilder farenheit =
      BiologicallyDerivedProductStorageScaleBuilder._(
    valueString: 'farenheit',
    system:
        'http://hl7.org/fhir/ValueSet/product-storage-scale'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fahrenheit'.toFhirStringBuilder,
  );

  /// celsius
  static BiologicallyDerivedProductStorageScaleBuilder celsius =
      BiologicallyDerivedProductStorageScaleBuilder._(
    valueString: 'celsius',
    system:
        'http://hl7.org/fhir/ValueSet/product-storage-scale'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Celsius'.toFhirStringBuilder,
  );

  /// kelvin
  static BiologicallyDerivedProductStorageScaleBuilder kelvin =
      BiologicallyDerivedProductStorageScaleBuilder._(
    valueString: 'kelvin',
    system:
        'http://hl7.org/fhir/ValueSet/product-storage-scale'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Kelvin'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static BiologicallyDerivedProductStorageScaleBuilder elementOnly =
      BiologicallyDerivedProductStorageScaleBuilder._(valueString: '');

  /// List of all enum-like values
  static List<BiologicallyDerivedProductStorageScaleBuilder> values = [
    farenheit,
    celsius,
    kelvin,
  ];

  /// Clones the current instance
  @override
  BiologicallyDerivedProductStorageScaleBuilder clone() =>
      BiologicallyDerivedProductStorageScaleBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStorageScaleBuilder withElement(
      ElementBuilder? newElement,) {
    return BiologicallyDerivedProductStorageScaleBuilder._(
        valueString: valueString, element: newElement,);
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

  /// Creates a modified copy with updated properties.
  @override
  BiologicallyDerivedProductStorageScaleBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for BiologicallyDerivedProductStorageScale: $newValue',);
    }
    return BiologicallyDerivedProductStorageScaleBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
