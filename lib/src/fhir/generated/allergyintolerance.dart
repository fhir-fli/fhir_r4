import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AllergyIntolerance {
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
  final FhirCode type;
  final PrimitiveElement Type;
  final List<FhirCode> category;
  final List<PrimitiveElement> Category;
  final FhirCode criticality;
  final PrimitiveElement Criticality;
  final CodeableConcept code;
  final Reference patient;
  final Reference encounter;
  final String onsetDateTime;
  final PrimitiveElement OnsetDateTime;
  final Age onsetAge;
  final Period onsetPeriod;
  final Range onsetRange;
  final String onsetString;
  final PrimitiveElement OnsetString;
  final FhirDateTime recordedDate;
  final PrimitiveElement RecordedDate;
  final Reference recorder;
  final Reference asserter;
  final FhirDateTime lastOccurrence;
  final PrimitiveElement LastOccurrence;
  final List<Annotation> note;
  final List<AllergyIntoleranceReaction> reaction;
  const AllergyIntolerance({
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
    this.type,
    this.Type,
    this.category,
    this.Category,
    this.criticality,
    this.Criticality,
    this.code,
    required this.patient,
    this.encounter,
    this.onsetDateTime,
    this.OnsetDateTime,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.OnsetString,
    this.recordedDate,
    this.RecordedDate,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.LastOccurrence,
    this.note,
    this.reaction,
  });
}
