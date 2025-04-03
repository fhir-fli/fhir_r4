// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Biologically Derived Product Category.
class BiologicallyDerivedProductCategory extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductCategory._({
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
  factory BiologicallyDerivedProductCategory(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return BiologicallyDerivedProductCategory._(
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

  /// Create empty [BiologicallyDerivedProductCategory] with element only
  factory BiologicallyDerivedProductCategory.empty() =>
      BiologicallyDerivedProductCategory._(valueString: '');

  /// Factory constructor to create [BiologicallyDerivedProductCategory] from JSON.
  factory BiologicallyDerivedProductCategory.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductCategory.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductCategory cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductCategory._(
      valueString: value,
      element: element,
    );
  }

  /// organ
  static final BiologicallyDerivedProductCategory organ =
      BiologicallyDerivedProductCategory._(
    valueString: 'organ',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Organ'.toFhirString,
  );

  /// tissue
  static final BiologicallyDerivedProductCategory tissue =
      BiologicallyDerivedProductCategory._(
    valueString: 'tissue',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Tissue'.toFhirString,
  );

  /// fluid
  static final BiologicallyDerivedProductCategory fluid =
      BiologicallyDerivedProductCategory._(
    valueString: 'fluid',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fluid'.toFhirString,
  );

  /// cells
  static final BiologicallyDerivedProductCategory cells =
      BiologicallyDerivedProductCategory._(
    valueString: 'cells',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cells'.toFhirString,
  );

  /// biologicalAgent
  static final BiologicallyDerivedProductCategory biologicalAgent =
      BiologicallyDerivedProductCategory._(
    valueString: 'biologicalAgent',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BiologicalAgent'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final BiologicallyDerivedProductCategory elementOnly =
      BiologicallyDerivedProductCategory._(valueString: '');

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductCategory> values = [
    organ,
    tissue,
    fluid,
    cells,
    biologicalAgent,
  ];

  /// Clones the current instance
  @override
  BiologicallyDerivedProductCategory clone() =>
      BiologicallyDerivedProductCategory._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductCategory withElement(Element? newElement) {
    return BiologicallyDerivedProductCategory._(
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

  /// Creates a modified copy with updated properties.
  @override
  BiologicallyDerivedProductCategory copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for BiologicallyDerivedProductCategory: $newValue');
    }
    return BiologicallyDerivedProductCategory._(
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
