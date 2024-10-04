import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Encounter {
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
  final List<EncounterStatusHistory> statusHistory;
  final Coding class;
  final List<EncounterClassHistory> classHistory;
  final List<CodeableConcept> type;
  final CodeableConcept serviceType;
  final CodeableConcept priority;
  final Reference subject;
  final List<Reference> episodeOfCare;
  final List<Reference> basedOn;
  final List<EncounterParticipant> participant;
  final List<Reference> appointment;
  final Period period;
  final FhirDuration length;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<EncounterDiagnosis> diagnosis;
  final List<Reference> account;
  final Encounter_Hospitalization hospitalization;
  final List<EncounterLocation> location;
  final Reference serviceProvider;
  final Reference partOf;
  const Encounter({
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
    required this.class,
    this.classHistory,
    this.type,
    this.serviceType,
    this.priority,
    this.subject,
    this.episodeOfCare,
    this.basedOn,
    this.participant,
    this.appointment,
    this.period,
    this.length,
    this.reasonCode,
    this.reasonReference,
    this.diagnosis,
    this.account,
    this.hospitalization,
    this.location,
    this.serviceProvider,
    this.partOf,
  });
}
