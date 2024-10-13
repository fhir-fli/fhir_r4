// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxResearchStudy {
  ObjectBoxResearchStudy({
    this.id,
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
    this.title,
    ObjectBoxElement? titleElement,
    List<ObjectBoxReference>? protocol,
    List<ObjectBoxReference>? partOf,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? primaryPurposeType,
    ObjectBoxCodeableConcept? phase,
    List<ObjectBoxCodeableConcept>? category,
    List<ObjectBoxCodeableConcept>? focus,
    List<ObjectBoxCodeableConcept>? condition,
    List<ObjectBoxContactDetail>? contact,
    List<ObjectBoxRelatedArtifact>? relatedArtifact,
    List<ObjectBoxCodeableConcept>? keyword,
    List<ObjectBoxCodeableConcept>? location,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxReference>? enrollment,
    ObjectBoxPeriod? period,
    ObjectBoxReference? sponsor,
    ObjectBoxReference? principalInvestigator,
    List<ObjectBoxReference>? site,
    ObjectBoxCodeableConcept? reasonStopped,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxResearchStudyArm>? arm,
    List<ObjectBoxResearchStudyObjective>? objective,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.titleElement.target = titleElement;
    this.protocol.addAll(protocol ?? []);
    this.partOf.addAll(partOf ?? []);
    this.statusElement.target = statusElement;
    this.primaryPurposeType.target = primaryPurposeType;
    this.phase.target = phase;
    this.category.addAll(category ?? []);
    this.focus.addAll(focus ?? []);
    this.condition.addAll(condition ?? []);
    this.contact.addAll(contact ?? []);
    this.relatedArtifact.addAll(relatedArtifact ?? []);
    this.keyword.addAll(keyword ?? []);
    this.location.addAll(location ?? []);
    this.descriptionElement.target = descriptionElement;
    this.enrollment.addAll(enrollment ?? []);
    this.period.target = period;
    this.sponsor.target = sponsor;
    this.principalInvestigator.target = principalInvestigator;
    this.site.addAll(site ?? []);
    this.reasonStopped.target = reasonStopped;
    this.note.addAll(note ?? []);
    this.arm.addAll(arm ?? []);
    this.objective.addAll(objective ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> protocol = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> primaryPurposeType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> phase = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> focus = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> condition =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxRelatedArtifact> relatedArtifact =
      ToMany<ObjectBoxRelatedArtifact>();
  ToMany<ObjectBoxCodeableConcept> keyword = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> location =
      ToMany<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> enrollment = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxReference> sponsor = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> principalInvestigator = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> site = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> reasonStopped =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxResearchStudyArm> arm = ToMany<ObjectBoxResearchStudyArm>();
  ToMany<ObjectBoxResearchStudyObjective> objective =
      ToMany<ObjectBoxResearchStudyObjective>();
}

@Entity()
class ObjectBoxResearchStudyArm {
  ObjectBoxResearchStudyArm({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    ObjectBoxCodeableConcept? type,
    this.description,
    ObjectBoxElement? descriptionElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.type.target = type;
    this.descriptionElement.target = descriptionElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxResearchStudyObjective {
  ObjectBoxResearchStudyObjective({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.name,
    ObjectBoxElement? nameElement,
    ObjectBoxCodeableConcept? type,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.type.target = type;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
}
