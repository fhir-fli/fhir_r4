import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class EpisodeOfCare {
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
  final List<EpisodeOfCareStatusHistory> statusHistory;
  final List<CodeableConcept> type;
  final List<EpisodeOfCareDiagnosis> diagnosis;
  final Reference patient;
  final Reference managingOrganization;
  final Period period;
  final List<Reference> referralRequest;
  final Reference careManager;
  final List<Reference> team;
  final List<Reference> account;
  const EpisodeOfCare({
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
    this.statusHistory,
    this.type,
    this.diagnosis,
    required this.patient,
    this.managingOrganization,
    this.period,
    this.referralRequest,
    this.careManager,
    this.team,
    this.account,
  });
}
