import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Condition {
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
  final CodeableConcept clinicalStatus;
  final CodeableConcept verificationStatus;
  final List<CodeableConcept> category;
  final CodeableConcept severity;
  final CodeableConcept code;
  final List<CodeableConcept> bodySite;
  final Reference subject;
  final Reference encounter;
  final String onsetDateTime;
  final PrimitiveElement OnsetDateTime;
  final Age onsetAge;
  final Period onsetPeriod;
  final Range onsetRange;
  final String onsetString;
  final PrimitiveElement OnsetString;
  final String abatementDateTime;
  final PrimitiveElement AbatementDateTime;
  final Age abatementAge;
  final Period abatementPeriod;
  final Range abatementRange;
  final String abatementString;
  final PrimitiveElement AbatementString;
  final FhirDateTime recordedDate;
  final PrimitiveElement RecordedDate;
  final Reference recorder;
  final Reference asserter;
  final List<ConditionStage> stage;
  final List<ConditionEvidence> evidence;
  final List<Annotation> note;
  const Condition({
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
    this.clinicalStatus,
    this.verificationStatus,
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    required this.subject,
    this.encounter,
    this.onsetDateTime,
    this.OnsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.OnsetString,
    this.abatementDateTime,
    this.AbatementDateTime,
    this.abatementAge,
    this.abatementPeriod,
    this.abatementRange,
    this.abatementString,
    this.AbatementString,
    this.recordedDate,
    this.RecordedDate,
    this.recorder,
    this.asserter,
    this.stage,
    this.evidence,
    this.note,
  });
}
