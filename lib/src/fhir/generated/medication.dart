import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Medication {
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
  final CodeableConcept code;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference manufacturer;
  final CodeableConcept form;
  final Ratio amount;
  final List<MedicationIngredient> ingredient;
  final Medication_Batch batch;
  const Medication({
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
    this.code,
    this.status,
    this.Status,
    this.manufacturer,
    this.form,
    this.amount,
    this.ingredient,
    this.batch,
  });
}
