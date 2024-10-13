// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCarePlan {
  ObjectBoxCarePlan({
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
    this.instantiatesCanonical,
    List<ObjectBoxElement>? instantiatesCanonicalElement,
    this.instantiatesUri,
    List<ObjectBoxElement>? instantiatesUriElement,
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxReference>? replaces,
    List<ObjectBoxReference>? partOf,
    required this.status,
    ObjectBoxElement? statusElement,
    required this.intent,
    ObjectBoxElement? intentElement,
    List<ObjectBoxCodeableConcept>? category,
    this.title,
    ObjectBoxElement? titleElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    ObjectBoxPeriod? period,
    this.created,
    ObjectBoxElement? createdElement,
    ObjectBoxReference? author,
    List<ObjectBoxReference>? contributor,
    List<ObjectBoxReference>? careTeam,
    List<ObjectBoxReference>? addresses,
    List<ObjectBoxReference>? supportingInfo,
    List<ObjectBoxReference>? goal,
    List<ObjectBoxCarePlanActivity>? activity,
    List<ObjectBoxAnnotation>? note,
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
    this
        .instantiatesCanonicalElement
        .addAll(instantiatesCanonicalElement ?? []);
    this.instantiatesUriElement.addAll(instantiatesUriElement ?? []);
    this.basedOn.addAll(basedOn ?? []);
    this.replaces.addAll(replaces ?? []);
    this.partOf.addAll(partOf ?? []);
    this.statusElement.target = statusElement;
    this.intentElement.target = intentElement;
    this.category.addAll(category ?? []);
    this.titleElement.target = titleElement;
    this.descriptionElement.target = descriptionElement;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.period.target = period;
    this.createdElement.target = createdElement;
    this.author.target = author;
    this.contributor.addAll(contributor ?? []);
    this.careTeam.addAll(careTeam ?? []);
    this.addresses.addAll(addresses ?? []);
    this.supportingInfo.addAll(supportingInfo ?? []);
    this.goal.addAll(goal ?? []);
    this.activity.addAll(activity ?? []);
    this.note.addAll(note ?? []);
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
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement> instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement> instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> replaces = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String intent;
  ToOne<ObjectBoxElement> intentElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  String? created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> author = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> contributor = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> careTeam = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> addresses = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> supportingInfo = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> goal = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCarePlanActivity> activity =
      ToMany<ObjectBoxCarePlanActivity>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxCarePlanActivity {
  ObjectBoxCarePlanActivity({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? outcomeCodeableConcept,
    List<ObjectBoxReference>? outcomeReference,
    List<ObjectBoxAnnotation>? progress,
    ObjectBoxReference? reference,
    ObjectBoxCarePlanDetail? detail,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.outcomeCodeableConcept.addAll(outcomeCodeableConcept ?? []);
    this.outcomeReference.addAll(outcomeReference ?? []);
    this.progress.addAll(progress ?? []);
    this.reference.target = reference;
    this.detail.target = detail;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> outcomeCodeableConcept =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> outcomeReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> progress = ToMany<ObjectBoxAnnotation>();
  ToOne<ObjectBoxReference> reference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCarePlanDetail> detail = ToOne<ObjectBoxCarePlanDetail>();
}

@Entity()
class ObjectBoxCarePlanDetail {
  ObjectBoxCarePlanDetail({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.kind,
    ObjectBoxElement? kindElement,
    this.instantiatesCanonical,
    List<ObjectBoxElement>? instantiatesCanonicalElement,
    this.instantiatesUri,
    List<ObjectBoxElement>? instantiatesUriElement,
    ObjectBoxCodeableConcept? code,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxReference>? goal,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? statusReason,
    this.doNotPerform,
    ObjectBoxElement? doNotPerformElement,
    ObjectBoxTiming? scheduledTiming,
    ObjectBoxPeriod? scheduledPeriod,
    this.scheduledString,
    ObjectBoxElement? scheduledStringElement,
    ObjectBoxReference? location,
    List<ObjectBoxReference>? performer,
    ObjectBoxCodeableConcept? productCodeableConcept,
    ObjectBoxReference? productReference,
    ObjectBoxQuantity? dailyAmount,
    ObjectBoxQuantity? quantity,
    this.description,
    ObjectBoxElement? descriptionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.kindElement.target = kindElement;
    this
        .instantiatesCanonicalElement
        .addAll(instantiatesCanonicalElement ?? []);
    this.instantiatesUriElement.addAll(instantiatesUriElement ?? []);
    this.code.target = code;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.goal.addAll(goal ?? []);
    this.statusElement.target = statusElement;
    this.statusReason.target = statusReason;
    this.doNotPerformElement.target = doNotPerformElement;
    this.scheduledTiming.target = scheduledTiming;
    this.scheduledPeriod.target = scheduledPeriod;
    this.scheduledStringElement.target = scheduledStringElement;
    this.location.target = location;
    this.performer.addAll(performer ?? []);
    this.productCodeableConcept.target = productCodeableConcept;
    this.productReference.target = productReference;
    this.dailyAmount.target = dailyAmount;
    this.quantity.target = quantity;
    this.descriptionElement.target = descriptionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? kind;
  ToOne<ObjectBoxElement> kindElement = ToOne<ObjectBoxElement>();
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement> instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement> instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> goal = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement> doNotPerformElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTiming> scheduledTiming = ToOne<ObjectBoxTiming>();
  ToOne<ObjectBoxPeriod> scheduledPeriod = ToOne<ObjectBoxPeriod>();
  String? scheduledString;
  ToOne<ObjectBoxElement> scheduledStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxReference> performer = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> productCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> productReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity> dailyAmount = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
}
