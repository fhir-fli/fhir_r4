// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// BiologicallyDerived Product Storage Scale.
class BiologicallyDerivedProductStorageScale extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductStorageScale._({
    required super.validatedValue,
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
  factory BiologicallyDerivedProductStorageScale(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return BiologicallyDerivedProductStorageScale._(
      validatedValue: validated,
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

  /// Create empty [BiologicallyDerivedProductStorageScale] with element only
  factory BiologicallyDerivedProductStorageScale.empty() =>
      BiologicallyDerivedProductStorageScale._(validatedValue: '');

  /// Factory constructor to create [BiologicallyDerivedProductStorageScale] from JSON.
  factory BiologicallyDerivedProductStorageScale.fromJson(
      Map<String, dynamic> json,) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStorageScale.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'BiologicallyDerivedProductStorageScale cannot be constructed from JSON.',);
    }
    return BiologicallyDerivedProductStorageScale._(
        validatedValue: value, element: element,);
  }

  /// farenheit
  static final BiologicallyDerivedProductStorageScale farenheit =
      BiologicallyDerivedProductStorageScale._(
    validatedValue: 'farenheit',
    system: 'http://hl7.org/fhir/ValueSet/product-storage-scale'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fahrenheit'.toFhirString,
  );

  /// celsius
  static final BiologicallyDerivedProductStorageScale celsius =
      BiologicallyDerivedProductStorageScale._(
    validatedValue: 'celsius',
    system: 'http://hl7.org/fhir/ValueSet/product-storage-scale'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Celsius'.toFhirString,
  );

  /// kelvin
  static final BiologicallyDerivedProductStorageScale kelvin =
      BiologicallyDerivedProductStorageScale._(
    validatedValue: 'kelvin',
    system: 'http://hl7.org/fhir/ValueSet/product-storage-scale'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Kelvin'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final BiologicallyDerivedProductStorageScale elementOnly =
      BiologicallyDerivedProductStorageScale._(validatedValue: '');

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductStorageScale> values = [
    farenheit,
    celsius,
    kelvin,
  ];

  /// Clones the current instance
  @override
  BiologicallyDerivedProductStorageScale clone() =>
      BiologicallyDerivedProductStorageScale._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStorageScale withElement(Element? newElement) {
    return BiologicallyDerivedProductStorageScale._(
        validatedValue: value, element: newElement,);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  BiologicallyDerivedProductStorageScale copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return BiologicallyDerivedProductStorageScale._(
      validatedValue: newValue ?? value,
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
