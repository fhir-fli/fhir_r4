import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Task {
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
  final FhirCanonical instantiatesCanonical;
  final FhirUri instantiatesUri;
  final PrimitiveElement InstantiatesUri;
  final List<Reference> basedOn;
  final Identifier groupIdentifier;
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept statusReason;
  final CodeableConcept businessStatus;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final CodeableConcept code;
  final String description;
  final PrimitiveElement Description;
  final Reference focus;
  final Reference for;
  final Reference encounter;
  final Period executionPeriod;
  final FhirDateTime authoredOn;
  final PrimitiveElement AuthoredOn;
  final FhirDateTime lastModified;
  final PrimitiveElement LastModified;
  final Reference requester;
  final List<CodeableConcept> performerType;
  final Reference owner;
  final Reference location;
  final CodeableConcept reasonCode;
  final Reference reasonReference;
  final List<Reference> insurance;
  final List<Annotation> note;
  final List<Reference> relevantHistory;
  final Task_Restriction restriction;
  final List<TaskInput> input;
  final List<TaskOutput> output;
  const Task({
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
    this.groupIdentifier,
    this.partOf,
    this.status,
    this.Status,
    this.statusReason,
    this.businessStatus,
    this.intent,
    this.Intent,
    this.priority,
    this.Priority,
    this.code,
    this.description,
    this.Description,
    this.focus,
    this.for,
    this.encounter,
    this.executionPeriod,
    this.authoredOn,
    this.AuthoredOn,
    this.lastModified,
    this.LastModified,
    this.requester,
    this.performerType,
    this.owner,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.note,
    this.relevantHistory,
    this.restriction,
    this.input,
    this.output,
  });
}
