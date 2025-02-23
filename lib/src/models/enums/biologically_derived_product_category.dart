// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Biologically Derived Product Category.
class BiologicallyDerivedProductCategory extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  BiologicallyDerivedProductCategory._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [BiologicallyDerivedProductCategory] with element only
  factory BiologicallyDerivedProductCategory.empty() =>
      BiologicallyDerivedProductCategory._('');

  /// Factory constructor to create [BiologicallyDerivedProductCategory] from JSON.
  factory BiologicallyDerivedProductCategory.fromJson(
    Map<String, dynamic> json,
  ) {
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
      value,
      element: element,
    );
  }

  /// organ
  static final BiologicallyDerivedProductCategory organ =
      BiologicallyDerivedProductCategory._(
    'organ',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Organ'.toFhirString,
  );

  /// tissue
  static final BiologicallyDerivedProductCategory tissue =
      BiologicallyDerivedProductCategory._(
    'tissue',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Tissue'.toFhirString,
  );

  /// fluid
  static final BiologicallyDerivedProductCategory fluid =
      BiologicallyDerivedProductCategory._(
    'fluid',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fluid'.toFhirString,
  );

  /// cells
  static final BiologicallyDerivedProductCategory cells =
      BiologicallyDerivedProductCategory._(
    'cells',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cells'.toFhirString,
  );

  /// biologicalAgent
  static final BiologicallyDerivedProductCategory biologicalAgent =
      BiologicallyDerivedProductCategory._(
    'biologicalAgent',
    system: 'http://hl7.org/fhir/ValueSet/product-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'BiologicalAgent'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final BiologicallyDerivedProductCategory elementOnly =
      BiologicallyDerivedProductCategory._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductCategory withElement(Element? newElement) {
    return BiologicallyDerivedProductCategory._(
      value,
      element: newElement,
    );
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
  BiologicallyDerivedProductCategory copyWith({
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
    return BiologicallyDerivedProductCategory._(
      newValue ?? value,
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
