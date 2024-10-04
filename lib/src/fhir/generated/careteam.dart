import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class CareTeam {
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
  final FhirCode status;
  final PrimitiveElement Status;
  final List<CodeableConcept> category;
  final String name;
  final PrimitiveElement Name;
  final Reference subject;
  final Reference encounter;
  final Period period;
  final List<CareTeamParticipant> participant;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Reference> managingOrganization;
  final List<ContactPoint> telecom;
  final List<Annotation> note;
  const CareTeam({
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
    this.category,
    this.name,
    this.Name,
    this.subject,
    this.encounter,
    this.period,
    this.participant,
    this.reasonCode,
    this.reasonReference,
    this.managingOrganization,
    this.telecom,
    this.note,
  });
}
