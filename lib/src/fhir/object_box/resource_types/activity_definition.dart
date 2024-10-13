// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxActivityDefinition {
  ObjectBoxActivityDefinition({
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
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    this.subtitle,
    ObjectBoxElement? subtitleElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    ObjectBoxCodeableConcept? subjectCodeableConcept,
    ObjectBoxReference? subjectReference,
    this.subjectCanonical,
    ObjectBoxElement? subjectCanonicalElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
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
    this.kind,
    ObjectBoxElement? kindElement,
    this.profile,
    ObjectBoxElement? profileElement,
    ObjectBoxCodeableConcept? code,
    this.intent,
    ObjectBoxElement? intentElement,
    this.priority,
    ObjectBoxElement? priorityElement,
    this.doNotPerform,
    ObjectBoxElement? doNotPerformElement,
    ObjectBoxTiming? timingTiming,
    this.timingDateTime,
    ObjectBoxElement? timingDateTimeElement,
    ObjectBoxAge? timingAge,
    ObjectBoxPeriod? timingPeriod,
    ObjectBoxRange? timingRange,
    ObjectBoxFhirDuration? timingDuration,
    ObjectBoxReference? location,
    List<ObjectBoxActivityDefinitionParticipant>? participant,
    ObjectBoxReference? productReference,
    ObjectBoxCodeableConcept? productCodeableConcept,
    ObjectBoxQuantity? quantity,
    List<ObjectBoxDosage>? dosage,
    List<ObjectBoxCodeableConcept>? bodySite,
    List<ObjectBoxReference>? specimenRequirement,
    List<ObjectBoxReference>? observationRequirement,
    List<ObjectBoxReference>? observationResultRequirement,
    this.transform,
    ObjectBoxElement? transformElement,
    List<ObjectBoxActivityDefinitionDynamicValue>? dynamicValue,
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
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.subtitleElement.target = subtitleElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.subjectCodeableConcept.target = subjectCodeableConcept;
    this.subjectReference.target = subjectReference;
    this.subjectCanonicalElement.target = subjectCanonicalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
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
    this.kindElement.target = kindElement;
    this.profileElement.target = profileElement;
    this.code.target = code;
    this.intentElement.target = intentElement;
    this.priorityElement.target = priorityElement;
    this.doNotPerformElement.target = doNotPerformElement;
    this.timingTiming.target = timingTiming;
    this.timingDateTimeElement.target = timingDateTimeElement;
    this.timingAge.target = timingAge;
    this.timingPeriod.target = timingPeriod;
    this.timingRange.target = timingRange;
    this.timingDuration.target = timingDuration;
    this.location.target = location;
    this.participant.addAll(participant ?? []);
    this.productReference.target = productReference;
    this.productCodeableConcept.target = productCodeableConcept;
    this.quantity.target = quantity;
    this.dosage.addAll(dosage ?? []);
    this.bodySite.addAll(bodySite ?? []);
    this.specimenRequirement.addAll(specimenRequirement ?? []);
    this.observationRequirement.addAll(observationRequirement ?? []);
    this
        .observationResultRequirement
        .addAll(observationResultRequirement ?? []);
    this.transformElement.target = transformElement;
    this.dynamicValue.addAll(dynamicValue ?? []);
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? subtitle;
  ToOne<ObjectBoxElement> subtitleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> subjectCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subjectReference = ToOne<ObjectBoxReference>();
  String? subjectCanonical;
  ToOne<ObjectBoxElement> subjectCanonicalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
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
  String? kind;
  ToOne<ObjectBoxElement> kindElement = ToOne<ObjectBoxElement>();
  String? profile;
  ToOne<ObjectBoxElement> profileElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  String? intent;
  ToOne<ObjectBoxElement> intentElement = ToOne<ObjectBoxElement>();
  String? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement> doNotPerformElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTiming> timingTiming = ToOne<ObjectBoxTiming>();
  String? timingDateTime;
  ToOne<ObjectBoxElement> timingDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge> timingAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxPeriod> timingPeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxRange> timingRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxFhirDuration> timingDuration = ToOne<ObjectBoxFhirDuration>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxActivityDefinitionParticipant> participant =
      ToMany<ObjectBoxActivityDefinitionParticipant>();
  ToOne<ObjectBoxReference> productReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> productCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxDosage> dosage = ToMany<ObjectBoxDosage>();
  ToMany<ObjectBoxCodeableConcept> bodySite =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> specimenRequirement = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> observationRequirement =
      ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> observationResultRequirement =
      ToMany<ObjectBoxReference>();
  String? transform;
  ToOne<ObjectBoxElement> transformElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxActivityDefinitionDynamicValue> dynamicValue =
      ToMany<ObjectBoxActivityDefinitionDynamicValue>();
}

@Entity()
class ObjectBoxActivityDefinitionParticipant {
  ObjectBoxActivityDefinitionParticipant({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    ObjectBoxCodeableConcept? role,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.role.target = role;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxActivityDefinitionDynamicValue {
  ObjectBoxActivityDefinitionDynamicValue({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.path,
    ObjectBoxElement? pathElement,
    ObjectBoxFhirExpression? expression,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.pathElement.target = pathElement;
    this.expression.target = expression;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String path;
  ToOne<ObjectBoxElement> pathElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirExpression> expression = ToOne<ObjectBoxFhirExpression>();
}
