// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxEvidenceReport {
  ObjectBoxEvidenceReport({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.url,
    ObjectBoxElement? urlElement,
    required this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxIdentifier>? identifier,
    List<ObjectBoxIdentifier>? relatedIdentifier,
    ObjectBoxReference? citeAsReference,
    this.citeAsMarkdown,
    ObjectBoxElement? citeAsMarkdownElement,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxRelatedArtifact>? relatedArtifact,
    ObjectBoxEvidenceReportSubject? subject,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    List<ObjectBoxContactDetail>? author,
    List<ObjectBoxContactDetail>? editor,
    List<ObjectBoxContactDetail>? reviewer,
    List<ObjectBoxContactDetail>? endorser,
    List<ObjectBoxEvidenceReportRelatesTo>? relatesTo,
    List<ObjectBoxEvidenceReportSection>? section,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.statusElement.target = statusElement;
    this.useContext.addAll(useContext ?? []);
    this.identifier.addAll(identifier ?? []);
    this.relatedIdentifier.addAll(relatedIdentifier ?? []);
    this.citeAsReference.target = citeAsReference;
    this.citeAsMarkdownElement.target = citeAsMarkdownElement;
    this.type.target = type;
    this.note.addAll(note ?? []);
    this.relatedArtifact.addAll(relatedArtifact ?? []);
    this.subject.target = subject;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.author.addAll(author ?? []);
    this.editor.addAll(editor ?? []);
    this.reviewer.addAll(reviewer ?? []);
    this.endorser.addAll(endorser ?? []);
    this.relatesTo.addAll(relatesTo ?? []);
    this.section.addAll(section ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxIdentifier> relatedIdentifier = ToMany<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference> citeAsReference = ToOne<ObjectBoxReference>();
  String? citeAsMarkdown;
  ToOne<ObjectBoxElement> citeAsMarkdownElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxRelatedArtifact> relatedArtifact =
      ToMany<ObjectBoxRelatedArtifact>();
  ToOne<ObjectBoxEvidenceReportSubject> subject =
      ToOne<ObjectBoxEvidenceReportSubject>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxEvidenceReportRelatesTo> relatesTo =
      ToMany<ObjectBoxEvidenceReportRelatesTo>();
  ToMany<ObjectBoxEvidenceReportSection> section =
      ToMany<ObjectBoxEvidenceReportSection>();
}

@Entity()
class ObjectBoxEvidenceReportSubject {
  ObjectBoxEvidenceReportSubject({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxEvidenceReportCharacteristic>? characteristic,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.characteristic.addAll(characteristic ?? []);
    this.note.addAll(note ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxEvidenceReportCharacteristic> characteristic =
      ToMany<ObjectBoxEvidenceReportCharacteristic>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxEvidenceReportCharacteristic {
  ObjectBoxEvidenceReportCharacteristic({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxReference? valueReference,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxRange? valueRange,
    this.exclude,
    ObjectBoxElement? excludeElement,
    ObjectBoxPeriod? period,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.valueReference.target = valueReference;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueQuantity.target = valueQuantity;
    this.valueRange.target = valueRange;
    this.excludeElement.target = excludeElement;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> valueReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> valueRange = ToOne<ObjectBoxRange>();
  bool? exclude;
  ToOne<ObjectBoxElement> excludeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxEvidenceReportRelatesTo {
  ObjectBoxEvidenceReportRelatesTo({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    ObjectBoxIdentifier? targetIdentifier,
    ObjectBoxReference? targetReference,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.targetIdentifier.target = targetIdentifier;
    this.targetReference.target = targetReference;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier> targetIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference> targetReference = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxEvidenceReportSection {
  ObjectBoxEvidenceReportSection({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.title,
    ObjectBoxElement? titleElement,
    ObjectBoxCodeableConcept? focus,
    ObjectBoxReference? focusReference,
    List<ObjectBoxReference>? author,
    ObjectBoxNarrative? text,
    this.mode,
    ObjectBoxElement? modeElement,
    ObjectBoxCodeableConcept? orderedBy,
    List<ObjectBoxCodeableConcept>? entryClassifier,
    List<ObjectBoxReference>? entryReference,
    List<ObjectBoxQuantity>? entryQuantity,
    ObjectBoxCodeableConcept? emptyReason,
    List<ObjectBoxEvidenceReportSection>? section,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.titleElement.target = titleElement;
    this.focus.target = focus;
    this.focusReference.target = focusReference;
    this.author.addAll(author ?? []);
    this.text.target = text;
    this.modeElement.target = modeElement;
    this.orderedBy.target = orderedBy;
    this.entryClassifier.addAll(entryClassifier ?? []);
    this.entryReference.addAll(entryReference ?? []);
    this.entryQuantity.addAll(entryQuantity ?? []);
    this.emptyReason.target = emptyReason;
    this.section.addAll(section ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> focus = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> focusReference = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> author = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  String? mode;
  ToOne<ObjectBoxElement> modeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> orderedBy = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> entryClassifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> entryReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxQuantity> entryQuantity = ToMany<ObjectBoxQuantity>();
  ToOne<ObjectBoxCodeableConcept> emptyReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxEvidenceReportSection> section =
      ToMany<ObjectBoxEvidenceReportSection>();
}
