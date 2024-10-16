import 'package:fhir_r4/fhir_r4.dart';

/// TextureModifiedFoodType: Codes for types of foods that are texture-modified. This value set is composed SNOMED CT Concepts from SCTID 255620007 Foods (substance) and is provided as a suggestive example.
enum TextureModifiedFoodTypeCodes {
  /// Display: Foods
  /// Definition:
  value255620007('255620007'),

  /// Display: Meat
  /// Definition:
  value28647000('28647000'),

  /// Display: Vegetables
  /// Definition:
  value22836000('22836000'),

  /// Display: Fruit
  /// Definition:
  value72511004('72511004'),

  /// Display: Dairy foods
  /// Definition:
  value226760005('226760005'),

  /// Display: Dietary Fats and Oils
  /// Definition:
  value226887002('226887002'),

  /// Display: Eggs
  /// Definition:
  value102263004('102263004'),

  /// Display: Food Starch
  /// Definition:
  value74242007('74242007'),

  /// Display: Fruit Nuts and Seeds
  /// Definition:
  value227415002('227415002'),

  /// Display: Grain
  /// Definition:
  value264331002('264331002'),

  /// Display: Sauce seasonings and soups
  /// Definition:
  value227518002('227518002'),

  /// Display: Seafood
  /// Definition:
  value44027008('44027008'),

  /// Display: Starchy food
  /// Definition:
  value226529007('226529007'),

  /// Display: Vegetables plus herbs and spices
  /// Definition:
  value227210005('227210005'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TextureModifiedFoodTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TextureModifiedFoodTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TextureModifiedFoodTypeCodes.elementOnly.withElement(element);
    }
    return TextureModifiedFoodTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TextureModifiedFoodTypeCodes withElement(Element? newElement) {
    return TextureModifiedFoodTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
