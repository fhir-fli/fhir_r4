// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxActivityDefinition {
  ObjectBoxActivityDefinition({
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
    this.subtitle,
    this.subtitleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.subjectCanonicalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
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
    this.kind,
    this.kindElement,
    this.profile,
    this.profileElement,
    this.code,
    this.intent,
    this.intentElement,
    this.priority,
    this.priorityElement,
    this.doNotPerform,
    this.doNotPerformElement,
    this.timingTiming,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.timingAge,
    this.timingPeriod,
    this.timingRange,
    this.timingDuration,
    this.location,
    this.participant,
    this.productReference,
    this.productCodeableConcept,
    this.quantity,
    this.dosage,
    this.bodySite,
    this.specimenRequirement,
    this.observationRequirement,
    this.observationResultRequirement,
    this.transform,
    this.transformElement,
    this.dynamicValue,
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
  String? subtitle;
  ToOne<ObjectBoxElement>? subtitleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? subjectReference = ToOne<ObjectBoxReference>();
  String? subjectCanonical;
  ToOne<ObjectBoxElement>? subjectCanonicalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
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
  String? kind;
  ToOne<ObjectBoxElement>? kindElement = ToOne<ObjectBoxElement>();
  String? profile;
  ToOne<ObjectBoxElement>? profileElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  String? intent;
  ToOne<ObjectBoxElement>? intentElement = ToOne<ObjectBoxElement>();
  String? priority;
  ToOne<ObjectBoxElement>? priorityElement = ToOne<ObjectBoxElement>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement>? doNotPerformElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTiming>? timingTiming = ToOne<ObjectBoxTiming>();
  String? timingDateTime;
  ToOne<ObjectBoxElement>? timingDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge>? timingAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod>? timingPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxRange>? timingRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxFhirDuration>? timingDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxReference>? location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxActivityDefinitionParticipant>? participant =
      ToMany<ObjectBoxActivityDefinitionParticipant>();
  ToOne<ObjectBoxReference>? productReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? productCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxDosage>? dosage = ToMany<ObjectBoxDosage>();
  ToMany<ObjectBoxCodeableConcept>? bodySite =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? specimenRequirement =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? observationRequirement =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? observationResultRequirement =
      ToMany<ObjectBoxReference>();
  String? transform;
  ToOne<ObjectBoxElement>? transformElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxActivityDefinitionDynamicValue>? dynamicValue =
      ToMany<ObjectBoxActivityDefinitionDynamicValue>();
}

@Entity()
class ObjectBoxActivityDefinitionParticipant {
  ObjectBoxActivityDefinitionParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.typeElement,
    this.role,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? role = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxActivityDefinitionDynamicValue {
  ObjectBoxActivityDefinitionDynamicValue({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.path,
    this.pathElement,
    required this.expression,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String path;
  ToOne<ObjectBoxElement>? pathElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression> expression = ToOne<ObjectBoxFhirExpression>();
}
