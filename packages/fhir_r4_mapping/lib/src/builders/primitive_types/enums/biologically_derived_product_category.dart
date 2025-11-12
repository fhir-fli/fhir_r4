// ignore_for_file: unused_element_parameter, non_constant_identifier_names, lines_longer_than_80_chars
part of '../primitive_types.dart';

/// Actual enum for BiologicallyDerivedProductCategory
enum BiologicallyDerivedProductCategoryBuilderEnum {
  /// organ
  organ,

  /// tissue
  tissue,

  /// fluid
  fluid,

  /// cells
  cells,

  /// biologicalAgent
  biologicalAgent,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case BiologicallyDerivedProductCategoryBuilderEnum.organ:
        return 'organ';
      case BiologicallyDerivedProductCategoryBuilderEnum.tissue:
        return 'tissue';
      case BiologicallyDerivedProductCategoryBuilderEnum.fluid:
        return 'fluid';
      case BiologicallyDerivedProductCategoryBuilderEnum.cells:
        return 'cells';
      case BiologicallyDerivedProductCategoryBuilderEnum.biologicalAgent:
        return 'biologicalAgent';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BiologicallyDerivedProductCategoryBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return BiologicallyDerivedProductCategoryBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BiologicallyDerivedProductCategoryBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'organ':
        return BiologicallyDerivedProductCategoryBuilderEnum.organ;
      case 'tissue':
        return BiologicallyDerivedProductCategoryBuilderEnum.tissue;
      case 'fluid':
        return BiologicallyDerivedProductCategoryBuilderEnum.fluid;
      case 'cells':
        return BiologicallyDerivedProductCategoryBuilderEnum.cells;
      case 'biologicalAgent':
        return BiologicallyDerivedProductCategoryBuilderEnum.biologicalAgent;
    }
    return null;
  }
}

/// Biologically Derived Product Category.
class BiologicallyDerivedProductCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BiologicallyDerivedProductCategoryBuilder._({
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
    final valueEnum = BiologicallyDerivedProductCategoryBuilderEnum.fromString(
      valueString,
    );
    return BiologicallyDerivedProductCategoryBuilder._(
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

  /// Create empty [BiologicallyDerivedProductCategoryBuilder]
  /// with element only
  factory BiologicallyDerivedProductCategoryBuilder.empty() =>
      BiologicallyDerivedProductCategoryBuilder._(valueString: null);

  /// Factory constructor to create
  /// [BiologicallyDerivedProductCategoryBuilder] from JSON.
  factory BiologicallyDerivedProductCategoryBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductCategoryBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for BiologicallyDerivedProductCategoryBuilder
  final BiologicallyDerivedProductCategoryBuilderEnum? valueEnum;

  /// organ
  static BiologicallyDerivedProductCategoryBuilder organ =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: 'organ',
    valueEnum: BiologicallyDerivedProductCategoryBuilderEnum.organ,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Organ',
    ),
  );

  /// tissue
  static BiologicallyDerivedProductCategoryBuilder tissue =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: 'tissue',
    valueEnum: BiologicallyDerivedProductCategoryBuilderEnum.tissue,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Tissue',
    ),
  );

  /// fluid
  static BiologicallyDerivedProductCategoryBuilder fluid =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: 'fluid',
    valueEnum: BiologicallyDerivedProductCategoryBuilderEnum.fluid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Fluid',
    ),
  );

  /// cells
  static BiologicallyDerivedProductCategoryBuilder cells =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: 'cells',
    valueEnum: BiologicallyDerivedProductCategoryBuilderEnum.cells,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cells',
    ),
  );

  /// biologicalAgent
  static BiologicallyDerivedProductCategoryBuilder biologicalAgent =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: 'biologicalAgent',
    valueEnum: BiologicallyDerivedProductCategoryBuilderEnum.biologicalAgent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-category',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'BiologicalAgent',
    ),
  );

  /// For instances where an Element is present but not value
  static BiologicallyDerivedProductCategoryBuilder elementOnly =
      BiologicallyDerivedProductCategoryBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<BiologicallyDerivedProductCategoryBuilder> values = [
    organ,
    tissue,
    fluid,
    cells,
    biologicalAgent,
  ];

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
}
