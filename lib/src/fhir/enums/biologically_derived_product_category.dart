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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const BiologicallyDerivedProductCategory(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static BiologicallyDerivedProductCategory fromJson(
      Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductCategory.elementOnly
          .withElement(element);
    }
    return BiologicallyDerivedProductCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  BiologicallyDerivedProductCategory withElement(Element? newElement) {
    return BiologicallyDerivedProductCategory.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
