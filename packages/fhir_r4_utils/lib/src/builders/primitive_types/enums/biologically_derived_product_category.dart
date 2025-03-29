// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Biologically Derived Product Category.
class BiologicallyDerivedProductCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductCategoryBuilder._({
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
  factory BiologicallyDerivedProductCategoryBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return BiologicallyDerivedProductCategoryBuilder._(
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

  /// Create empty [BiologicallyDerivedProductCategoryBuilder] with element only
  factory BiologicallyDerivedProductCategoryBuilder.empty() =>
      BiologicallyDerivedProductCategoryBuilder._(validatedValue: '');

  /// Factory constructor to create [BiologicallyDerivedProductCategoryBuilder] from JSON.
  factory BiologicallyDerivedProductCategoryBuilder.fromJson(
      Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// organ
  static BiologicallyDerivedProductCategoryBuilder organ =
      BiologicallyDerivedProductCategoryBuilder._(
    validatedValue: 'organ',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Organ'.toFhirStringBuilder,
  );

  /// tissue
  static BiologicallyDerivedProductCategoryBuilder tissue =
      BiologicallyDerivedProductCategoryBuilder._(
    validatedValue: 'tissue',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Tissue'.toFhirStringBuilder,
  );

  /// fluid
  static BiologicallyDerivedProductCategoryBuilder fluid =
      BiologicallyDerivedProductCategoryBuilder._(
    validatedValue: 'fluid',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fluid'.toFhirStringBuilder,
  );

  /// cells
  static BiologicallyDerivedProductCategoryBuilder cells =
      BiologicallyDerivedProductCategoryBuilder._(
    validatedValue: 'cells',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cells'.toFhirStringBuilder,
  );

  /// biologicalAgent
  static BiologicallyDerivedProductCategoryBuilder biologicalAgent =
      BiologicallyDerivedProductCategoryBuilder._(
    validatedValue: 'biologicalAgent',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'BiologicalAgent'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static BiologicallyDerivedProductCategoryBuilder elementOnly =
      BiologicallyDerivedProductCategoryBuilder._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductCategoryBuilder withElement(
      ElementBuilder? newElement) {
    return BiologicallyDerivedProductCategoryBuilder._(
        validatedValue: value, element: newElement);
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
  BiologicallyDerivedProductCategoryBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return BiologicallyDerivedProductCategoryBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
