// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Biologically Derived Product Category.
enum BiologicallyDerivedProductCategory {
  /// Display: Organ
  /// Definition: A collection of tissues joined in a structural unit to serve a common function.
  organ('organ'),

  /// Display: Tissue
  /// Definition: An ensemble of similar cells and their extracellular matrix from the same origin that together carry out a specific function.
  tissue('tissue'),

  /// Display: Fluid
  /// Definition: Body fluid.
  fluid('fluid'),

  /// Display: Cells
  /// Definition: Collection of cells.
  cells('cells'),

  /// Display: BiologicalAgent
  /// Definition: Biological agent of unspecified type.
  biologicalAgent('biologicalAgent'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const BiologicallyDerivedProductCategory(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [BiologicallyDerivedProductCategory] instances.
  static BiologicallyDerivedProductCategory fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductCategory.elementOnly
          .withElement(element);
    }
    return BiologicallyDerivedProductCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  BiologicallyDerivedProductCategory withElement(Element? newElement) {
    return BiologicallyDerivedProductCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
