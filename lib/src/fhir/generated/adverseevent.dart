import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AdverseEvent {
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
  final Identifier identifier;
  final FhirCode actuality;
  final PrimitiveElement Actuality;
  final List<CodeableConcept> category;
  final CodeableConcept event;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final FhirDateTime detected;
  final PrimitiveElement Detected;
  final FhirDateTime recordedDate;
  final PrimitiveElement RecordedDate;
  final List<Reference> resultingCondition;
  final Reference location;
  final CodeableConcept seriousness;
  final CodeableConcept severity;
  final CodeableConcept outcome;
  final Reference recorder;
  final List<Reference> contributor;
  final List<AdverseEventSuspectEntity> suspectEntity;
  final List<Reference> subjectMedicalHistory;
  final List<Reference> referenceDocument;
  final List<Reference> study;
  const AdverseEvent({
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
    this.actuality,
    this.Actuality,
    this.category,
    this.event,
    required this.subject,
    this.encounter,
    this.date,
    this.Date,
    this.detected,
    this.Detected,
    this.recordedDate,
    this.RecordedDate,
    this.resultingCondition,
    this.location,
    this.seriousness,
    this.severity,
    this.outcome,
    this.recorder,
    this.contributor,
    this.suspectEntity,
    this.subjectMedicalHistory,
    this.referenceDocument,
    this.study,
  });
}
