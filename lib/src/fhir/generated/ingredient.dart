import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Ingredient {
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
  final Identifier identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<Reference> for;
  final CodeableConcept role;
  final List<CodeableConcept> function;
  final FhirBoolean allergenicIndicator;
  final PrimitiveElement AllergenicIndicator;
  final List<IngredientManufacturer> manufacturer;
  final Ingredient_Substance substance;
  const Ingredient({
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
    this.identifier,
    this.status,
    this.Status,
    this.for,
    required this.role,
    this.function,
    this.allergenicIndicator,
    this.AllergenicIndicator,
    this.manufacturer,
    required this.substance,
  });
}
