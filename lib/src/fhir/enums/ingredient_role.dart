import 'package:fhir_r4/fhir_r4.dart';

/// A classification of the ingredient identifying its purpose within the product.
enum IngredientRole {
  /// Display: Active
  /// Definition:
  value100000072072('100000072072'),

  /// Display: Adjuvant
  /// Definition:
  value100000072073('100000072073'),

  /// Display: Excipient
  /// Definition:
  value100000072082('100000072082'),

  /// Display: Starting material for excipient
  /// Definition:
  value100000136065('100000136065'),

  /// Display: Solvent / Diluent
  /// Definition:
  value100000136066('100000136066'),

  /// Display: Raw materials used in the manufacture of the product
  /// Definition:
  value100000136178('100000136178'),

  /// Display: Starting material for active substance
  /// Definition:
  value100000136179('100000136179'),

  /// Display: Overage
  /// Definition:
  value100000136561('100000136561'),

  /// Display: bioenhancer
  /// Definition:
  value200000003427('200000003427'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const IngredientRole(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static IngredientRole fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientRole.elementOnly.withElement(element);
    }
    return IngredientRole.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  IngredientRole withElement(Element? newElement) {
    return IngredientRole.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
