import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class EvidenceReport extends Resource {
  EvidenceReport({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    required this.status,
    this.useContext,
    this.identifier,
    this.relatedIdentifier,
    this.citeAsReference,
    this.citeAsMarkdown,
    this.type,
    this.note,
    this.relatedArtifact,
    required this.subject,
    this.publisher,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatesTo,
    this.section,
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
  String? url;
  String status;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToMany<Identifier>? relatedIdentifier = ToMany<Identifier>();
  ToOne<Reference>? citeAsReference = ToOne<Reference>();
  String? citeAsMarkdown;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<RelatedArtifact>? relatedArtifact = ToMany<RelatedArtifact>();
  ToOne<EvidenceReportSubject> subject = ToOne<EvidenceReportSubject>();
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  ToMany<ContactDetail>? author = ToMany<ContactDetail>();
  ToMany<ContactDetail>? editor = ToMany<ContactDetail>();
  ToMany<ContactDetail>? reviewer = ToMany<ContactDetail>();
  ToMany<ContactDetail>? endorser = ToMany<ContactDetail>();
  ToMany<EvidenceReportRelatesTo>? relatesTo =
      ToMany<EvidenceReportRelatesTo>();
  ToMany<EvidenceReportSection>? section = ToMany<EvidenceReportSection>();
}

@Entity()
class EvidenceReportSubject {
  EvidenceReportSubject({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.characteristic,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<EvidenceReportCharacteristic>? characteristic =
      ToMany<EvidenceReportCharacteristic>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class EvidenceReportCharacteristic {
  EvidenceReportCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.valueReference,
    this.valueCodeableConcept,
    this.valueBoolean,
    this.valueQuantity,
    this.valueRange,
    this.exclude,
    this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<Reference>? valueReference = ToOne<Reference>();
  ToOne<CodeableConcept>? valueCodeableConcept = ToOne<CodeableConcept>();
  bool? valueBoolean;
  ToOne<Quantity>? valueQuantity = ToOne<Quantity>();
  ToOne<Range>? valueRange = ToOne<Range>();
  bool? exclude;
  ToOne<Period>? period = ToOne<Period>();
}

@Entity()
class EvidenceReportRelatesTo {
  EvidenceReportRelatesTo({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.targetIdentifier,
    this.targetReference,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Identifier>? targetIdentifier = ToOne<Identifier>();
  ToOne<Reference>? targetReference = ToOne<Reference>();
}

@Entity()
class EvidenceReportSection {
  EvidenceReportSection({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.title,
    this.focus,
    this.focusReference,
    this.author,
    this.text,
    this.mode,
    this.orderedBy,
    this.entryClassifier,
    this.entryReference,
    this.entryQuantity,
    this.emptyReason,
    this.section,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? title;
  ToOne<CodeableConcept>? focus = ToOne<CodeableConcept>();
  ToOne<Reference>? focusReference = ToOne<Reference>();
  ToMany<Reference>? author = ToMany<Reference>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  String? mode;
  ToOne<CodeableConcept>? orderedBy = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? entryClassifier = ToMany<CodeableConcept>();
  ToMany<Reference>? entryReference = ToMany<Reference>();
  ToMany<Quantity>? entryQuantity = ToMany<Quantity>();
  ToOne<CodeableConcept>? emptyReason = ToOne<CodeableConcept>();
  ToMany<EvidenceReportSection>? section = ToMany<EvidenceReportSection>();
}
