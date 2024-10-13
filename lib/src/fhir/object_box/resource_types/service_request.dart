// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxServiceRequest {
  ObjectBoxServiceRequest({
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
    ObjectBoxIdentifier? requisition,
    required this.status,
    ObjectBoxElement? statusElement,
    required this.intent,
    ObjectBoxElement? intentElement,
    List<ObjectBoxCodeableConcept>? category,
    this.priority,
    ObjectBoxElement? priorityElement,
    this.doNotPerform,
    ObjectBoxElement? doNotPerformElement,
    ObjectBoxCodeableConcept? code,
    List<ObjectBoxCodeableConcept>? orderDetail,
    ObjectBoxQuantity? quantityQuantity,
    ObjectBoxRatio? quantityRatio,
    ObjectBoxRange? quantityRange,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.occurrenceDateTime,
    ObjectBoxElement? occurrenceDateTimeElement,
    ObjectBoxPeriod? occurrencePeriod,
    ObjectBoxTiming? occurrenceTiming,
    this.asNeededBoolean,
    ObjectBoxElement? asNeededBooleanElement,
    ObjectBoxCodeableConcept? asNeededCodeableConcept,
    this.authoredOn,
    ObjectBoxElement? authoredOnElement,
    ObjectBoxReference? requester,
    ObjectBoxCodeableConcept? performerType,
    List<ObjectBoxReference>? performer,
    List<ObjectBoxCodeableConcept>? locationCode,
    List<ObjectBoxReference>? locationReference,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxReference>? insurance,
    List<ObjectBoxReference>? supportingInfo,
    List<ObjectBoxReference>? specimen,
    List<ObjectBoxCodeableConcept>? bodySite,
    List<ObjectBoxAnnotation>? note,
    this.patientInstruction,
    ObjectBoxElement? patientInstructionElement,
    List<ObjectBoxReference>? relevantHistory,
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
    this.requisition.target = requisition;
    this.statusElement.target = statusElement;
    this.intentElement.target = intentElement;
    this.category.addAll(category ?? []);
    this.priorityElement.target = priorityElement;
    this.doNotPerformElement.target = doNotPerformElement;
    this.code.target = code;
    this.orderDetail.addAll(orderDetail ?? []);
    this.quantityQuantity.target = quantityQuantity;
    this.quantityRatio.target = quantityRatio;
    this.quantityRange.target = quantityRange;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.occurrenceDateTimeElement.target = occurrenceDateTimeElement;
    this.occurrencePeriod.target = occurrencePeriod;
    this.occurrenceTiming.target = occurrenceTiming;
    this.asNeededBooleanElement.target = asNeededBooleanElement;
    this.asNeededCodeableConcept.target = asNeededCodeableConcept;
    this.authoredOnElement.target = authoredOnElement;
    this.requester.target = requester;
    this.performerType.target = performerType;
    this.performer.addAll(performer ?? []);
    this.locationCode.addAll(locationCode ?? []);
    this.locationReference.addAll(locationReference ?? []);
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.insurance.addAll(insurance ?? []);
    this.supportingInfo.addAll(supportingInfo ?? []);
    this.specimen.addAll(specimen ?? []);
    this.bodySite.addAll(bodySite ?? []);
    this.note.addAll(note ?? []);
    this.patientInstructionElement.target = patientInstructionElement;
    this.relevantHistory.addAll(relevantHistory ?? []);
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
  ToOne<ObjectBoxIdentifier> requisition = ToOne<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String intent;
  ToOne<ObjectBoxElement> intentElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> category =
      ToMany<ObjectBoxCodeableConcept>();
  String? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement> doNotPerformElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> orderDetail =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> quantityQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio> quantityRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRange> quantityRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement> occurrenceDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming> occurrenceTiming = ToOne<ObjectBoxTiming>();
  bool? asNeededBoolean;
  ToOne<ObjectBoxElement> asNeededBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> asNeededCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? authoredOn;
  ToOne<ObjectBoxElement> authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> requester = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> performerType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> performer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> locationCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> locationReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> insurance = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> supportingInfo = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> specimen = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> bodySite =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  String? patientInstruction;
  ToOne<ObjectBoxElement> patientInstructionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> relevantHistory = ToMany<ObjectBoxReference>();
}
