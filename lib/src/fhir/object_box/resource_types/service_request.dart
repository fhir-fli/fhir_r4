// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxServiceRequest {
  ObjectBoxServiceRequest({
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
    this.replaces,
    this.requisition,
    required this.status,
    this.statusElement,
    required this.intent,
    this.intentElement,
    this.category,
    this.priority,
    this.priorityElement,
    this.doNotPerform,
    this.doNotPerformElement,
    this.code,
    this.orderDetail,
    this.quantityQuantity,
    this.quantityRatio,
    this.quantityRange,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.asNeededBoolean,
    this.asNeededBooleanElement,
    this.asNeededCodeableConcept,
    this.authoredOn,
    this.authoredOnElement,
    this.requester,
    this.performerType,
    this.performer,
    this.locationCode,
    this.locationReference,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.specimen,
    this.bodySite,
    this.note,
    this.patientInstruction,
    this.patientInstructionElement,
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
  ToMany<ObjectBoxReference>? replaces = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxIdentifier>? requisition = ToOne<ObjectBoxIdentifier>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  String intent;
  ToOne<ObjectBoxElement>? intentElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? category =
      ToMany<ObjectBoxCodeableConcept>();
  String? priority;
  ToOne<ObjectBoxElement>? priorityElement = ToOne<ObjectBoxElement>();
  bool? doNotPerform;
  ToOne<ObjectBoxElement>? doNotPerformElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? orderDetail =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity>? quantityQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRatio>? quantityRatio = ToOne<ObjectBoxRatio>();
  ToOne<ObjectBoxRange>? quantityRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement>? occurrenceDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming>? occurrenceTiming = ToOne<ObjectBoxTiming>();
  bool? asNeededBoolean;
  ToOne<ObjectBoxElement>? asNeededBooleanElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? asNeededCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String? authoredOn;
  ToOne<ObjectBoxElement>? authoredOnElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? requester = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? performerType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? performer = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? locationCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? locationReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? insurance = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? supportingInfo = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? specimen = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? bodySite =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  String? patientInstruction;
  ToOne<ObjectBoxElement>? patientInstructionElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? relevantHistory = ToMany<ObjectBoxReference>();
}
