import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class DetectedIssue extends Resource {
  DetectedIssue({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.code,
    this.severity,
    this.patient,
    this.identifiedDateTime,
    this.identifiedPeriod,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.reference,
    this.mitigation,
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
  String status;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  String? severity;
  ToOne<Reference>? patient = ToOne<Reference>();
  String? identifiedDateTime;
  ToOne<Period>? identifiedPeriod = ToOne<Period>();
  ToOne<Reference>? author = ToOne<Reference>();
  ToMany<Reference>? implicated = ToMany<Reference>();
  ToMany<DetectedIssueEvidence>? evidence = ToMany<DetectedIssueEvidence>();
  String? detail;
  String? reference;
  ToMany<DetectedIssueMitigation>? mitigation =
      ToMany<DetectedIssueMitigation>();
}

@Entity()
class DetectedIssueEvidence {
  DetectedIssueEvidence({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? code = ToMany<CodeableConcept>();
  ToMany<Reference>? detail = ToMany<Reference>();
}

@Entity()
class DetectedIssueMitigation {
  DetectedIssueMitigation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
    this.date,
    this.author,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> action = ToOne<CodeableConcept>();
  String? date;
  ToOne<Reference>? author = ToOne<Reference>();
}
