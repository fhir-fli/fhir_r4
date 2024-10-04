import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class NutritionOrder {
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
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final List<FhirUri> instantiates;
  final List<PrimitiveElement> Instantiates;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final Reference patient;
  final Reference encounter;
  final FhirDateTime dateTime;
  final PrimitiveElement DateTime;
  final Reference orderer;
  final List<Reference> allergyIntolerance;
  final List<CodeableConcept> foodPreferenceModifier;
  final List<CodeableConcept> excludeFoodModifier;
  final NutritionOrder_OralDiet oralDiet;
  final List<NutritionOrderSupplement> supplement;
  final NutritionOrder_EnteralFormula enteralFormula;
  final List<Annotation> note;
  const NutritionOrder({
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
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.InstantiatesUri,
    this.instantiates,
    this.Instantiates,
    this.status,
    this.Status,
    this.intent,
    this.Intent,
    required this.patient,
    this.encounter,
    this.dateTime,
    this.DateTime,
    this.orderer,
    this.allergyIntolerance,
    this.foodPreferenceModifier,
    this.excludeFoodModifier,
    this.oralDiet,
    this.supplement,
    this.enteralFormula,
    this.note,
  });
}
