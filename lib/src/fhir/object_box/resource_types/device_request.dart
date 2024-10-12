// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxDeviceRequest {
  ObjectBoxDeviceRequest({
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
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.priorRequest,
    this.groupIdentifier,
    this.status,
    this.statusElement,
    required this.intent,
    this.intentElement,
    this.priority,
    this.priorityElement,
    this.codeReference,
    this.codeCodeableConcept,
    this.parameter,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
    this.authoredOnElement,
    this.requester,
    this.performerType,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.note,
    this.relevantHistory,
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
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement>? instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement>? instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? priorRequest = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier>? groupIdentifier = ToOne<ObjectBoxIdentifier>();
  String? status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String intent;
  ToOne<ObjectBoxElement>? intentElement = ToOne<ObjectBoxElement>();
  String? priority;
  ToOne<ObjectBoxElement>? priorityElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? codeReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? codeCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxDeviceRequestParameter>? parameter =
      ToMany<ObjectBoxDeviceRequestParameter>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement>? occurrenceDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming>? occurrenceTiming = ToOne<ObjectBoxTiming>();
  String? authoredOn;
  ToOne<ObjectBoxElement>? authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? requester = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? performerType =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? performer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? insurance = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? supportingInfo = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference>? relevantHistory = ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxDeviceRequestParameter {
  ObjectBoxDeviceRequestParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueBoolean,
    this.valueBooleanElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange>? valueRange = ToOne<ObjectBoxRange>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
}
