// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDetectedIssue {
  ObjectBoxDetectedIssue({
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
    List<ObjectBoxIdentifier>? identifier,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? code,
    this.severity,
    ObjectBoxElement? severityElement,
    ObjectBoxReference? patient,
    this.identifiedDateTime,
    ObjectBoxElement? identifiedDateTimeElement,
    ObjectBoxPeriod? identifiedPeriod,
    ObjectBoxReference? author,
    List<ObjectBoxReference>? implicated,
    List<ObjectBoxDetectedIssueEvidence>? evidence,
    this.detail,
    ObjectBoxElement? detailElement,
    this.reference,
    ObjectBoxElement? referenceElement,
    List<ObjectBoxDetectedIssueMitigation>? mitigation,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.code.target = code;
    this.severityElement.target = severityElement;
    this.patient.target = patient;
    this.identifiedDateTimeElement.target = identifiedDateTimeElement;
    this.identifiedPeriod.target = identifiedPeriod;
    this.author.target = author;
    this.implicated.addAll(implicated ?? []);
    this.evidence.addAll(evidence ?? []);
    this.detailElement.target = detailElement;
    this.referenceElement.target = referenceElement;
    this.mitigation.addAll(mitigation ?? []);
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? severity;
  ToOne<ObjectBoxElement> severityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> patient = ToOne<ObjectBoxReference>();
  String? identifiedDateTime;
  ToOne<ObjectBoxElement> identifiedDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> identifiedPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference> author = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> implicated = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxDetectedIssueEvidence> evidence =
      ToMany<ObjectBoxDetectedIssueEvidence>();
  String? detail;
  ToOne<ObjectBoxElement> detailElement = ToOne<ObjectBoxElement>();
  String? reference;
  ToOne<ObjectBoxElement> referenceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxDetectedIssueMitigation> mitigation =
      ToMany<ObjectBoxDetectedIssueMitigation>();
}

@Entity()
class ObjectBoxDetectedIssueEvidence {
  ObjectBoxDetectedIssueEvidence({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? code,
    List<ObjectBoxReference>? detail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.addAll(code ?? []);
    this.detail.addAll(detail ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> detail = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxDetectedIssueMitigation {
  ObjectBoxDetectedIssueMitigation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? action,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxReference? author,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.action.target = action;
    this.dateElement.target = dateElement;
    this.author.target = author;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> action = ToOne<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> author = ToOne<ObjectBoxReference>();
}
