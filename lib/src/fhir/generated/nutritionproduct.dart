import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class NutritionProduct {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<CodeableConcept> category;
  final CodeableConcept code;
  final List<Reference> manufacturer;
  final List<NutritionProductNutrient> nutrient;
  final List<NutritionProductIngredient> ingredient;
  final List<CodeableReference> knownAllergen;
  final List<NutritionProductProductCharacteristic> productCharacteristic;
  final NutritionProduct_Instance instance;
  final List<Annotation> note;
  const NutritionProduct({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.status,
    this.Status,
    this.category,
    this.code,
    this.manufacturer,
    this.nutrient,
    this.ingredient,
    this.knownAllergen,
    this.productCharacteristic,
    this.instance,
    this.note,
  });
}
