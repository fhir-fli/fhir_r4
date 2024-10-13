// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxResearchElementDefinition {
  ObjectBoxResearchElementDefinition({
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
    this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.shortTitle,
    ObjectBoxElement? shortTitleElement,
    this.subtitle,
    ObjectBoxElement? subtitleElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    ObjectBoxCodeableConcept? subjectCodeableConcept,
    ObjectBoxReference? subjectReference,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    this.comment,
    List<ObjectBoxElement>? commentElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.usage,
    ObjectBoxElement? usageElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    this.approvalDate,
    ObjectBoxElement? approvalDateElement,
    this.lastReviewDate,
    ObjectBoxElement? lastReviewDateElement,
    ObjectBoxPeriod? effectivePeriod,
    List<ObjectBoxCodeableConcept>? topic,
    List<ObjectBoxContactDetail>? author,
    List<ObjectBoxContactDetail>? editor,
    List<ObjectBoxContactDetail>? reviewer,
    List<ObjectBoxContactDetail>? endorser,
    List<ObjectBoxRelatedArtifact>? relatedArtifact,
    this.library_,
    List<ObjectBoxElement>? libraryElement,
    required this.type,
    ObjectBoxElement? typeElement,
    this.variableType,
    ObjectBoxElement? variableTypeElement,
    List<ObjectBoxResearchElementDefinitionCharacteristic>? characteristic,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.shortTitleElement.target = shortTitleElement;
    this.subtitleElement.target = subtitleElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.subjectCodeableConcept.target = subjectCodeableConcept;
    this.subjectReference.target = subjectReference;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.commentElement.addAll(commentElement ?? []);
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.usageElement.target = usageElement;
    this.copyrightElement.target = copyrightElement;
    this.approvalDateElement.target = approvalDateElement;
    this.lastReviewDateElement.target = lastReviewDateElement;
    this.effectivePeriod.target = effectivePeriod;
    this.topic.addAll(topic ?? []);
    this.author.addAll(author ?? []);
    this.editor.addAll(editor ?? []);
    this.reviewer.addAll(reviewer ?? []);
    this.endorser.addAll(endorser ?? []);
    this.relatedArtifact.addAll(relatedArtifact ?? []);
    this.libraryElement.addAll(libraryElement ?? []);
    this.typeElement.target = typeElement;
    this.variableTypeElement.target = variableTypeElement;
    this.characteristic.addAll(characteristic ?? []);
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
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? shortTitle;
  ToOne<ObjectBoxElement> shortTitleElement = ToOne<ObjectBoxElement>();
  String? subtitle;
  ToOne<ObjectBoxElement> subtitleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subjectReference = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  List<String>? comment;
  ToMany<ObjectBoxElement> commentElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? usage;
  ToOne<ObjectBoxElement> usageElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement> approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement> lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCodeableConcept> topic = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContactDetail> author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxRelatedArtifact> relatedArtifact =
      ToMany<ObjectBoxRelatedArtifact>();
  List<String>? library_;
  ToMany<ObjectBoxElement> libraryElement = ToMany<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? variableType;
  ToOne<ObjectBoxElement> variableTypeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxResearchElementDefinitionCharacteristic> characteristic =
      ToMany<ObjectBoxResearchElementDefinitionCharacteristic>();
}

@Entity()
class ObjectBoxResearchElementDefinitionCharacteristic {
  ObjectBoxResearchElementDefinitionCharacteristic({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? definitionCodeableConcept,
    this.definitionCanonical,
    ObjectBoxElement? definitionCanonicalElement,
    ObjectBoxFhirExpression? definitionExpression,
    ObjectBoxDataRequirement? definitionDataRequirement,
    List<ObjectBoxUsageContext>? usageContext,
    this.exclude,
    ObjectBoxElement? excludeElement,
    ObjectBoxCodeableConcept? unitOfMeasure,
    this.studyEffectiveDescription,
    ObjectBoxElement? studyEffectiveDescriptionElement,
    this.studyEffectiveDateTime,
    ObjectBoxElement? studyEffectiveDateTimeElement,
    ObjectBoxPeriod? studyEffectivePeriod,
    ObjectBoxFhirDuration? studyEffectiveDuration,
    ObjectBoxTiming? studyEffectiveTiming,
    ObjectBoxFhirDuration? studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    ObjectBoxElement? studyEffectiveGroupMeasureElement,
    this.participantEffectiveDescription,
    ObjectBoxElement? participantEffectiveDescriptionElement,
    this.participantEffectiveDateTime,
    ObjectBoxElement? participantEffectiveDateTimeElement,
    ObjectBoxPeriod? participantEffectivePeriod,
    ObjectBoxFhirDuration? participantEffectiveDuration,
    ObjectBoxTiming? participantEffectiveTiming,
    ObjectBoxFhirDuration? participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
    ObjectBoxElement? participantEffectiveGroupMeasureElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.definitionCodeableConcept.target = definitionCodeableConcept;
    this.definitionCanonicalElement.target = definitionCanonicalElement;
    this.definitionExpression.target = definitionExpression;
    this.definitionDataRequirement.target = definitionDataRequirement;
    this.usageContext.addAll(usageContext ?? []);
    this.excludeElement.target = excludeElement;
    this.unitOfMeasure.target = unitOfMeasure;
    this.studyEffectiveDescriptionElement.target =
        studyEffectiveDescriptionElement;
    this.studyEffectiveDateTimeElement.target = studyEffectiveDateTimeElement;
    this.studyEffectivePeriod.target = studyEffectivePeriod;
    this.studyEffectiveDuration.target = studyEffectiveDuration;
    this.studyEffectiveTiming.target = studyEffectiveTiming;
    this.studyEffectiveTimeFromStart.target = studyEffectiveTimeFromStart;
    this.studyEffectiveGroupMeasureElement.target =
        studyEffectiveGroupMeasureElement;
    this.participantEffectiveDescriptionElement.target =
        participantEffectiveDescriptionElement;
    this.participantEffectiveDateTimeElement.target =
        participantEffectiveDateTimeElement;
    this.participantEffectivePeriod.target = participantEffectivePeriod;
    this.participantEffectiveDuration.target = participantEffectiveDuration;
    this.participantEffectiveTiming.target = participantEffectiveTiming;
    this.participantEffectiveTimeFromStart.target =
        participantEffectiveTimeFromStart;
    this.participantEffectiveGroupMeasureElement.target =
        participantEffectiveGroupMeasureElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> definitionCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? definitionCanonical;
  ToOne<ObjectBoxElement> definitionCanonicalElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression> definitionExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxDataRequirement> definitionDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToMany<ObjectBoxUsageContext> usageContext = ToMany<ObjectBoxUsageContext>();
  bool? exclude;
  ToOne<ObjectBoxElement> excludeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> unitOfMeasure =
      ToOne<ObjectBoxCodeableConcept>();
  String? studyEffectiveDescription;
  ToOne<ObjectBoxElement> studyEffectiveDescriptionElement =
      ToOne<ObjectBoxElement>();
  String? studyEffectiveDateTime;
  ToOne<ObjectBoxElement> studyEffectiveDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> studyEffectivePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration> studyEffectiveDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxTiming> studyEffectiveTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxFhirDuration> studyEffectiveTimeFromStart =
      ToOne<ObjectBoxFhirDuration>();
  String? studyEffectiveGroupMeasure;
  ToOne<ObjectBoxElement> studyEffectiveGroupMeasureElement =
      ToOne<ObjectBoxElement>();
  String? participantEffectiveDescription;
  ToOne<ObjectBoxElement> participantEffectiveDescriptionElement =
      ToOne<ObjectBoxElement>();
  String? participantEffectiveDateTime;
  ToOne<ObjectBoxElement> participantEffectiveDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> participantEffectivePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration> participantEffectiveDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxTiming> participantEffectiveTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxFhirDuration> participantEffectiveTimeFromStart =
      ToOne<ObjectBoxFhirDuration>();
  String? participantEffectiveGroupMeasure;
  ToOne<ObjectBoxElement> participantEffectiveGroupMeasureElement =
      ToOne<ObjectBoxElement>();
}
