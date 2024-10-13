// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDeviceRequest {
  ObjectBoxDeviceRequest({
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
    this.instantiatesCanonical,
    List<ObjectBoxElement>? instantiatesCanonicalElement,
    this.instantiatesUri,
    List<ObjectBoxElement>? instantiatesUriElement,
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxReference>? priorRequest,
    ObjectBoxIdentifier? groupIdentifier,
    this.status,
    ObjectBoxElement? statusElement,
    required this.intent,
    ObjectBoxElement? intentElement,
    this.priority,
    ObjectBoxElement? priorityElement,
    ObjectBoxReference? codeReference,
    ObjectBoxCodeableConcept? codeCodeableConcept,
    List<ObjectBoxDeviceRequestParameter>? parameter,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.occurrenceDateTime,
    ObjectBoxElement? occurrenceDateTimeElement,
    ObjectBoxPeriod? occurrencePeriod,
    ObjectBoxTiming? occurrenceTiming,
    this.authoredOn,
    ObjectBoxElement? authoredOnElement,
    ObjectBoxReference? requester,
    ObjectBoxCodeableConcept? performerType,
    ObjectBoxReference? performer,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxReference>? insurance,
    List<ObjectBoxReference>? supportingInfo,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxReference>? relevantHistory,
  }) {
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
    this.priorRequest.addAll(priorRequest ?? []);
    this.groupIdentifier.target = groupIdentifier;
    this.statusElement.target = statusElement;
    this.intentElement.target = intentElement;
    this.priorityElement.target = priorityElement;
    this.codeReference.target = codeReference;
    this.codeCodeableConcept.target = codeCodeableConcept;
    this.parameter.addAll(parameter ?? []);
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.occurrenceDateTimeElement.target = occurrenceDateTimeElement;
    this.occurrencePeriod.target = occurrencePeriod;
    this.occurrenceTiming.target = occurrenceTiming;
    this.authoredOnElement.target = authoredOnElement;
    this.requester.target = requester;
    this.performerType.target = performerType;
    this.performer.target = performer;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.insurance.addAll(insurance ?? []);
    this.supportingInfo.addAll(supportingInfo ?? []);
    this.note.addAll(note ?? []);
    this.relevantHistory.addAll(relevantHistory ?? []);
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
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement> instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement> instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> priorRequest = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier> groupIdentifier = ToOne<ObjectBoxIdentifier>();
  String? status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String intent;
  ToOne<ObjectBoxElement> intentElement = ToOne<ObjectBoxElement>();
  String? priority;
  ToOne<ObjectBoxElement> priorityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> codeReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> codeCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDeviceRequestParameter> parameter =
      ToMany<ObjectBoxDeviceRequestParameter>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement> occurrenceDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming> occurrenceTiming = ToOne<ObjectBoxTiming>();
  String? authoredOn;
  ToOne<ObjectBoxElement> authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> requester = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> performerType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> performer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> insurance = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> supportingInfo = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference> relevantHistory = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxDeviceRequestParameter {
  ObjectBoxDeviceRequestParameter({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? code,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxRange? valueRange,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.code.target = code;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueQuantity.target = valueQuantity;
    this.valueRange.target = valueRange;
    this.valueBooleanElement.target = valueBooleanElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> valueRange = ToOne<ObjectBoxRange>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
}
