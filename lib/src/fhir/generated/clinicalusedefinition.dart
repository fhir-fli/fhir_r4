import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClinicalUseDefinition {
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
  final FhirCode type;
  final PrimitiveElement Type;
  final List<CodeableConcept> category;
  final List<Reference> subject;
  final CodeableConcept status;
  final ClinicalUseDefinition_Contraindication contraindication;
  final ClinicalUseDefinition_Indication indication;
  final ClinicalUseDefinition_Interaction interaction;
  final List<Reference> population;
  final ClinicalUseDefinition_UndesirableEffect undesirableEffect;
  final ClinicalUseDefinition_Warning warning;
  const ClinicalUseDefinition({
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
    this.type,
    this.Type,
    this.category,
    this.subject,
    this.status,
    this.contraindication,
    this.indication,
    this.interaction,
    this.population,
    this.undesirableEffect,
    this.warning,
  });
}
