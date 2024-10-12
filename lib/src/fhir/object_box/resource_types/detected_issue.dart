// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDetectedIssue {
  ObjectBoxDetectedIssue({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    this.code,
    this.severity,
    this.severityElement,
    this.patient,
    this.identifiedDateTime,
    this.identifiedDateTimeElement,
    this.identifiedPeriod,
    this.author,
    this.implicated,
    this.evidence,
    this.detail,
    this.detailElement,
    this.reference,
    this.referenceElement,
    this.mitigation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  String? severity;
  ToOne<ObjectBoxElement>? severityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? patient = ToOne<ObjectBoxReference>();
  String? identifiedDateTime;
  ToOne<ObjectBoxElement>? identifiedDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? identifiedPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference>? author = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? implicated = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxDetectedIssueEvidence>? evidence =
      ToMany<ObjectBoxDetectedIssueEvidence>();
  String? detail;
  ToOne<ObjectBoxElement>? detailElement = ToOne<ObjectBoxElement>();
  String? reference;
  ToOne<ObjectBoxElement>? referenceElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxDetectedIssueMitigation>? mitigation =
      ToMany<ObjectBoxDetectedIssueMitigation>();
}

@Entity()
class ObjectBoxDetectedIssueEvidence {
  ObjectBoxDetectedIssueEvidence({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept>? code = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? detail = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxDetectedIssueMitigation {
  ObjectBoxDetectedIssueMitigation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.action,
    this.date,
    this.dateElement,
    this.author,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> action = ToOne<ObjectBoxCodeableConcept>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? author = ToOne<ObjectBoxReference>();
}
