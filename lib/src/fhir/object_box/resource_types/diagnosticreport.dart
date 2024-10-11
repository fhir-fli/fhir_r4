import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class DiagnosticReport extends Resource {
  DiagnosticReport({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    required this.status,
    this.category,
    required this.code,
    this.subject,
    this.encounter,
    this.effectiveDateTime,
    this.effectivePeriod,
    this.issued,
    this.performer,
    this.resultsInterpreter,
    this.specimen,
    this.result,
    this.imagingStudy,
    this.media,
    this.conclusion,
    this.conclusionCode,
    this.presentedForm,
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
  ToMany<Reference>? basedOn = ToMany<Reference>();
  String status;
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? effectiveDateTime;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  String? issued;
  ToMany<Reference>? performer = ToMany<Reference>();
  ToMany<Reference>? resultsInterpreter = ToMany<Reference>();
  ToMany<Reference>? specimen = ToMany<Reference>();
  ToMany<Reference>? result = ToMany<Reference>();
  ToMany<Reference>? imagingStudy = ToMany<Reference>();
  ToMany<DiagnosticReportMedia>? media = ToMany<DiagnosticReportMedia>();
  String? conclusion;
  ToMany<CodeableConcept>? conclusionCode = ToMany<CodeableConcept>();
  ToMany<Attachment>? presentedForm = ToMany<Attachment>();
}

@Entity()
class DiagnosticReportMedia {
  DiagnosticReportMedia({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.comment,
    required this.link,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? comment;
  ToOne<Reference> link = ToOne<Reference>();
}
