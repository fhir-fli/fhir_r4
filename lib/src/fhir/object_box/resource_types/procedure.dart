import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Procedure extends Resource {
  Procedure({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusReason,
    this.category,
    this.code,
    required this.subject,
    this.encounter,
    this.performedDateTime,
    this.performedPeriod,
    this.performedString,
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  List<String>? instantiatesCanonical;
  List<String>? instantiatesUri;
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<Reference>? partOf = ToMany<Reference>();
  String status;
  ToOne<CodeableConcept>? statusReason = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? category = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? performedDateTime;
  ToOne<Period>? performedPeriod = ToOne<Period>();
  String? performedString;
  ToOne<Age>? performedAge = ToOne<Age>();
  ToOne<Range>? performedRange = ToOne<Range>();
  ToOne<Reference>? recorder = ToOne<Reference>();
  ToOne<Reference>? asserter = ToOne<Reference>();
  ToMany<ProcedurePerformer>? performer = ToMany<ProcedurePerformer>();
  ToOne<Reference>? location = ToOne<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<CodeableConcept>? bodySite = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? outcome = ToOne<CodeableConcept>();
  ToMany<Reference>? report = ToMany<Reference>();
  ToMany<CodeableConcept>? complication = ToMany<CodeableConcept>();
  ToMany<Reference>? complicationDetail = ToMany<Reference>();
  ToMany<CodeableConcept>? followUp = ToMany<CodeableConcept>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<ProcedureFocalDevice>? focalDevice = ToMany<ProcedureFocalDevice>();
  ToMany<Reference>? usedReference = ToMany<Reference>();
  ToMany<CodeableConcept>? usedCode = ToMany<CodeableConcept>();
}

@Entity()
class ProcedurePerformer {
  ProcedurePerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
    this.onBehalfOf,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? function_ = ToOne<CodeableConcept>();
  ToOne<Reference> actor = ToOne<Reference>();
  ToOne<Reference>? onBehalfOf = ToOne<Reference>();
}

@Entity()
class ProcedureFocalDevice {
  ProcedureFocalDevice({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.action,
    required this.manipulated,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? action = ToOne<CodeableConcept>();
  ToOne<Reference> manipulated = ToOne<Reference>();
}
