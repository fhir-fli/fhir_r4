import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Goal {
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
  final FhirCode lifecycleStatus;
  final PrimitiveElement LifecycleStatus;
  final CodeableConcept achievementStatus;
  final List<CodeableConcept> category;
  final CodeableConcept priority;
  final CodeableConcept description;
  final Reference subject;
  final String startDate;
  final PrimitiveElement StartDate;
  final CodeableConcept startCodeableConcept;
  final List<GoalTarget> target;
  final FhirDate statusDate;
  final PrimitiveElement StatusDate;
  final String statusReason;
  final PrimitiveElement StatusReason;
  final Reference expressedBy;
  final List<Reference> addresses;
  final List<Annotation> note;
  final List<CodeableConcept> outcomeCode;
  final List<Reference> outcomeReference;
  const Goal({
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
    this.lifecycleStatus,
    this.LifecycleStatus,
    this.achievementStatus,
    this.category,
    this.priority,
    required this.description,
    required this.subject,
    this.startDate,
    this.StartDate,
    this.startCodeableConcept,
    this.target,
    this.statusDate,
    this.StatusDate,
    this.statusReason,
    this.StatusReason,
    this.expressedBy,
    this.addresses,
    this.note,
    this.outcomeCode,
    this.outcomeReference,
  });
}
