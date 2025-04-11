// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for BiologicallyDerivedProductCategory
enum BiologicallyDerivedProductCategoryEnum {
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
      case BiologicallyDerivedProductCategoryEnum.organ:
        return 'organ';
      case BiologicallyDerivedProductCategoryEnum.tissue:
        return 'tissue';
      case BiologicallyDerivedProductCategoryEnum.fluid:
        return 'fluid';
      case BiologicallyDerivedProductCategoryEnum.cells:
        return 'cells';
      case BiologicallyDerivedProductCategoryEnum.biologicalAgent:
        return 'biologicalAgent';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BiologicallyDerivedProductCategoryEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return BiologicallyDerivedProductCategoryEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BiologicallyDerivedProductCategoryEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'organ':
        return BiologicallyDerivedProductCategoryEnum.organ;
      case 'tissue':
        return BiologicallyDerivedProductCategoryEnum.tissue;
      case 'fluid':
        return BiologicallyDerivedProductCategoryEnum.fluid;
      case 'cells':
        return BiologicallyDerivedProductCategoryEnum.cells;
      case 'biologicalAgent':
        return BiologicallyDerivedProductCategoryEnum.biologicalAgent;
    }
    return null;
  }
}

/// Biologically Derived Product Category.
class BiologicallyDerivedProductCategory extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const BiologicallyDerivedProductCategory._({
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
  factory BiologicallyDerivedProductCategory(
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
        BiologicallyDerivedProductCategoryEnum.fromString(valueString);
    return BiologicallyDerivedProductCategory._(
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

  /// Factory constructor to create [BiologicallyDerivedProductCategory]
  /// from JSON.
  factory BiologicallyDerivedProductCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = BiologicallyDerivedProductCategoryEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductCategory._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductCategory cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductCategory._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for BiologicallyDerivedProductCategory
  final BiologicallyDerivedProductCategoryEnum? valueEnum;

  /// organ
  static const BiologicallyDerivedProductCategory organ =
      BiologicallyDerivedProductCategory._(
    valueString: 'organ',
    valueEnum: BiologicallyDerivedProductCategoryEnum.organ,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Organ',
    ),
  );

  /// tissue
  static const BiologicallyDerivedProductCategory tissue =
      BiologicallyDerivedProductCategory._(
    valueString: 'tissue',
    valueEnum: BiologicallyDerivedProductCategoryEnum.tissue,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Tissue',
    ),
  );

  /// fluid
  static const BiologicallyDerivedProductCategory fluid =
      BiologicallyDerivedProductCategory._(
    valueString: 'fluid',
    valueEnum: BiologicallyDerivedProductCategoryEnum.fluid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Fluid',
    ),
  );

  /// cells
  static const BiologicallyDerivedProductCategory cells =
      BiologicallyDerivedProductCategory._(
    valueString: 'cells',
    valueEnum: BiologicallyDerivedProductCategoryEnum.cells,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cells',
    ),
  );

  /// biologicalAgent
  static const BiologicallyDerivedProductCategory biologicalAgent =
      BiologicallyDerivedProductCategory._(
    valueString: 'biologicalAgent',
    valueEnum: BiologicallyDerivedProductCategoryEnum.biologicalAgent,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-category',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'BiologicalAgent',
    ),
  );

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductCategory> values = [
    organ,
    tissue,
    fluid,
    cells,
    biologicalAgent,
  ];

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

  @override
  BiologicallyDerivedProductCategory clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  BiologicallyDerivedProductCategoryCopyWithImpl<
          BiologicallyDerivedProductCategory>
      get copyWith => BiologicallyDerivedProductCategoryCopyWithImpl<
              BiologicallyDerivedProductCategory>(
            this,
            (v) => v as BiologicallyDerivedProductCategory,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class BiologicallyDerivedProductCategoryCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  BiologicallyDerivedProductCategoryCopyWithImpl(super._value, super._then);

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
      BiologicallyDerivedProductCategory(
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
