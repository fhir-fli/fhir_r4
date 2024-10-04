import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Procedure {
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
  final List<Reference> partOf;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept statusReason;
  final CodeableConcept category;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final String performedDateTime;
  final PrimitiveElement PerformedDateTime;
  final Period performedPeriod;
  final String performedString;
  final PrimitiveElement PerformedString;
  final Age performedAge;
  final Range performedRange;
  final Reference recorder;
  final Reference asserter;
  final List<ProcedurePerformer> performer;
  final Reference location;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<CodeableConcept> bodySite;
  final CodeableConcept outcome;
  final List<Reference> report;
  final List<CodeableConcept> complication;
  final List<Reference> complicationDetail;
  final List<CodeableConcept> followUp;
  final List<Annotation> note;
  final List<ProcedureFocalDevice> focalDevice;
  final List<Reference> usedReference;
  final List<CodeableConcept> usedCode;
  const Procedure({
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
    this.partOf,
    this.status,
    this.Status,
    this.statusReason,
    this.category,
    this.code,
    required this.subject,
    this.encounter,
    this.performedDateTime,
    this.PerformedDateTime,
    this.performedPeriod,
    this.performedString,
    this.PerformedString,
    this.performedAge,
    this.performedRange,
    this.recorder,
    this.asserter,
    this.performer,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.outcome,
    this.report,
    this.complication,
    this.complicationDetail,
    this.followUp,
    this.note,
    this.focalDevice,
    this.usedReference,
    this.usedCode,
  });
}
