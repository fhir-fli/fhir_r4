// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Biologically Derived Product Category.
class BiologicallyDerivedProductCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductCategoryBuilder._({
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
  factory BiologicallyDerivedProductCategoryBuilder(
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
    return BiologicallyDerivedProductCategoryBuilder._(
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

  /// Create empty [BiologicallyDerivedProductCategoryBuilder] with element only
  factory BiologicallyDerivedProductCategoryBuilder.empty() =>
      BiologicallyDerivedProductCategoryBuilder._(valueString: '');

  /// Factory constructor to create [BiologicallyDerivedProductCategoryBuilder]
  /// from JSON.
  factory BiologicallyDerivedProductCategoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductCategoryBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductCategoryBuilder cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductCategoryBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// organ
  static BiologicallyDerivedProductCategoryBuilder organ =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: 'organ',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Organ'.toFhirStringBuilder,
  );

  /// tissue
  static BiologicallyDerivedProductCategoryBuilder tissue =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: 'tissue',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Tissue'.toFhirStringBuilder,
  );

  /// fluid
  static BiologicallyDerivedProductCategoryBuilder fluid =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: 'fluid',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fluid'.toFhirStringBuilder,
  );

  /// cells
  static BiologicallyDerivedProductCategoryBuilder cells =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: 'cells',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cells'.toFhirStringBuilder,
  );

  /// biologicalAgent
  static BiologicallyDerivedProductCategoryBuilder biologicalAgent =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: 'biologicalAgent',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BiologicalAgent'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static BiologicallyDerivedProductCategoryBuilder elementOnly =
      BiologicallyDerivedProductCategoryBuilder._(valueString: '');

  /// List of all enum-like values
  static List<BiologicallyDerivedProductCategoryBuilder> values = [
    organ,
    tissue,
    fluid,
    cells,
    biologicalAgent,
  ];

  /// Clones the current instance
  @override
  BiologicallyDerivedProductCategoryBuilder clone() =>
      BiologicallyDerivedProductCategoryBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductCategoryBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return BiologicallyDerivedProductCategoryBuilder._(
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
  BiologicallyDerivedProductCategoryBuilder copyWith({
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
        'Invalid input for BiologicallyDerivedProductCategory: $newValue',
      );
    }
    return BiologicallyDerivedProductCategoryBuilder._(
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
