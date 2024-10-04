import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AuditEvent {
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
  final Coding type;
  final List<Coding> subtype;
  final FhirCode action;
  final PrimitiveElement Action;
  final Period period;
  final FhirInstant recorded;
  final PrimitiveElement Recorded;
  final FhirCode outcome;
  final PrimitiveElement Outcome;
  final String outcomeDesc;
  final PrimitiveElement OutcomeDesc;
  final List<CodeableConcept> purposeOfEvent;
  final List<AuditEventAgent> agent;
  final AuditEvent_Source source;
  final List<AuditEventEntity> entity;
  const AuditEvent({
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
    required this.type,
    this.subtype,
    this.action,
    this.Action,
    this.period,
    this.recorded,
    this.Recorded,
    this.outcome,
    this.Outcome,
    this.outcomeDesc,
    this.OutcomeDesc,
    this.purposeOfEvent,
    required this.agent,
    required this.source,
    this.entity,
  });
}
