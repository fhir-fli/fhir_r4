// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxResearchElementDefinition {
  ObjectBoxResearchElementDefinition({
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.shortTitle,
    this.shortTitleElement,
    this.subtitle,
    this.subtitleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.comment,
    this.commentElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.usage,
    this.usageElement,
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
    this.libraryElement,
    required this.type,
    this.typeElement,
    this.variableType,
    this.variableTypeElement,
    required this.characteristic,
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
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String? shortTitle;
  ToOne<ObjectBoxElement>? shortTitleElement = ToOne<ObjectBoxElement>();
  String? subtitle;
  ToOne<ObjectBoxElement>? subtitleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subjectReference = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  List<String>? comment;
  ToMany<ObjectBoxElement>? commentElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? usage;
  ToOne<ObjectBoxElement>? usageElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement>? approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement>? lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxCodeableConcept>? topic = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxContactDetail>? author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxRelatedArtifact>? relatedArtifact =
      ToMany<ObjectBoxRelatedArtifact>();
  List<String>? library_;
  ToMany<ObjectBoxElement>? libraryElement = ToMany<ObjectBoxElement>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? variableType;
  ToOne<ObjectBoxElement>? variableTypeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxResearchElementDefinitionCharacteristic> characteristic =
      ToMany<ObjectBoxResearchElementDefinitionCharacteristic>();
}

@Entity()
class ObjectBoxResearchElementDefinitionCharacteristic {
  ObjectBoxResearchElementDefinitionCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.definitionCodeableConcept,
    this.definitionCanonical,
    this.definitionCanonicalElement,
    this.definitionExpression,
    this.definitionDataRequirement,
    this.usageContext,
    this.exclude,
    this.excludeElement,
    this.unitOfMeasure,
    this.studyEffectiveDescription,
    this.studyEffectiveDescriptionElement,
    this.studyEffectiveDateTime,
    this.studyEffectiveDateTimeElement,
    this.studyEffectivePeriod,
    this.studyEffectiveDuration,
    this.studyEffectiveTiming,
    this.studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    this.studyEffectiveGroupMeasureElement,
    this.participantEffectiveDescription,
    this.participantEffectiveDescriptionElement,
    this.participantEffectiveDateTime,
    this.participantEffectiveDateTimeElement,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
    this.participantEffectiveGroupMeasureElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? definitionCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? definitionCanonical;
  ToOne<ObjectBoxElement>? definitionCanonicalElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression>? definitionExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxDataRequirement>? definitionDataRequirement =
      ToOne<ObjectBoxDataRequirement>();
  ToMany<ObjectBoxUsageContext>? usageContext = ToMany<ObjectBoxUsageContext>();
  bool? exclude;
  ToOne<ObjectBoxElement>? excludeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? unitOfMeasure =
      ToOne<ObjectBoxCodeableConcept>();
  String? studyEffectiveDescription;
  ToOne<ObjectBoxElement>? studyEffectiveDescriptionElement =
      ToOne<ObjectBoxElement>();
  String? studyEffectiveDateTime;
  ToOne<ObjectBoxElement>? studyEffectiveDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? studyEffectivePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration>? studyEffectiveDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxTiming>? studyEffectiveTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxFhirDuration>? studyEffectiveTimeFromStart =
      ToOne<ObjectBoxFhirDuration>();
  String? studyEffectiveGroupMeasure;
  ToOne<ObjectBoxElement>? studyEffectiveGroupMeasureElement =
      ToOne<ObjectBoxElement>();
  String? participantEffectiveDescription;
  ToOne<ObjectBoxElement>? participantEffectiveDescriptionElement =
      ToOne<ObjectBoxElement>();
  String? participantEffectiveDateTime;
  ToOne<ObjectBoxElement>? participantEffectiveDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? participantEffectivePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxFhirDuration>? participantEffectiveDuration =
      ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxTiming>? participantEffectiveTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxFhirDuration>? participantEffectiveTimeFromStart =
      ToOne<ObjectBoxFhirDuration>();
  String? participantEffectiveGroupMeasure;
  ToOne<ObjectBoxElement>? participantEffectiveGroupMeasureElement =
      ToOne<ObjectBoxElement>();
}
