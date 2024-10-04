import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CarePlan {
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
  final List<Reference> basedOn;
  final List<Reference> replaces;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final List<CodeableConcept> category;
  final String title;
  final PrimitiveElement Title;
  final String description;
  final PrimitiveElement Description;
  final Reference subject;
  final Reference encounter;
  final Period period;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference author;
  final List<Reference> contributor;
  final List<Reference> careTeam;
  final List<Reference> addresses;
  final List<Reference> supportingInfo;
  final List<Reference> goal;
  final List<CarePlanActivity> activity;
  final List<Annotation> note;
  const CarePlan({
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
    this.basedOn,
    this.replaces,
    this.partOf,
    this.status,
    this.Status,
    this.intent,
    this.Intent,
    this.category,
    this.title,
    this.Title,
    this.description,
    this.Description,
    required this.subject,
    this.encounter,
    this.period,
    this.created,
    this.Created,
    this.author,
    this.contributor,
    this.careTeam,
    this.addresses,
    this.supportingInfo,
    this.goal,
    this.activity,
    this.note,
  });
}
