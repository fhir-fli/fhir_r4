// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxChargeItem {
  ObjectBoxChargeItem({
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
    this.definitionUri,
    List<ObjectBoxElement>? definitionUriElement,
    this.definitionCanonical,
    List<ObjectBoxElement>? definitionCanonicalElement,
    required this.status,
    ObjectBoxElement? statusElement,
    List<ObjectBoxReference>? partOf,
    ObjectBoxCodeableConcept? code,
    ObjectBoxReference? subject,
    ObjectBoxReference? context,
    this.occurrenceDateTime,
    ObjectBoxElement? occurrenceDateTimeElement,
    ObjectBoxPeriod? occurrencePeriod,
    ObjectBoxTiming? occurrenceTiming,
    List<ObjectBoxChargeItemPerformer>? performer,
    ObjectBoxReference? performingOrganization,
    ObjectBoxReference? requestingOrganization,
    ObjectBoxReference? costCenter,
    ObjectBoxQuantity? quantity,
    List<ObjectBoxCodeableConcept>? bodysite,
    this.factorOverride,
    ObjectBoxElement? factorOverrideElement,
    ObjectBoxMoney? priceOverride,
    this.overrideReason,
    ObjectBoxElement? overrideReasonElement,
    ObjectBoxReference? enterer,
    this.enteredDate,
    ObjectBoxElement? enteredDateElement,
    List<ObjectBoxCodeableConcept>? reason,
    List<ObjectBoxReference>? service,
    ObjectBoxReference? productReference,
    ObjectBoxCodeableConcept? productCodeableConcept,
    List<ObjectBoxReference>? account,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxReference>? supportingInformation,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.definitionUriElement.addAll(definitionUriElement ?? []);
    this.definitionCanonicalElement.addAll(definitionCanonicalElement ?? []);
    this.statusElement.target = statusElement;
    this.partOf.addAll(partOf ?? []);
    this.code.target = code;
    this.subject.target = subject;
    this.context.target = context;
    this.occurrenceDateTimeElement.target = occurrenceDateTimeElement;
    this.occurrencePeriod.target = occurrencePeriod;
    this.occurrenceTiming.target = occurrenceTiming;
    this.performer.addAll(performer ?? []);
    this.performingOrganization.target = performingOrganization;
    this.requestingOrganization.target = requestingOrganization;
    this.costCenter.target = costCenter;
    this.quantity.target = quantity;
    this.bodysite.addAll(bodysite ?? []);
    this.factorOverrideElement.target = factorOverrideElement;
    this.priceOverride.target = priceOverride;
    this.overrideReasonElement.target = overrideReasonElement;
    this.enterer.target = enterer;
    this.enteredDateElement.target = enteredDateElement;
    this.reason.addAll(reason ?? []);
    this.service.addAll(service ?? []);
    this.productReference.target = productReference;
    this.productCodeableConcept.target = productCodeableConcept;
    this.account.addAll(account ?? []);
    this.note.addAll(note ?? []);
    this.supportingInformation.addAll(supportingInformation ?? []);
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
  List<String>? definitionUri;
  ToMany<ObjectBoxElement> definitionUriElement = ToMany<ObjectBoxElement>();
  List<String>? definitionCanonical;
  ToMany<ObjectBoxElement> definitionCanonicalElement =
      ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> context = ToOne<ObjectBoxReference>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement> occurrenceDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming> occurrenceTiming = ToOne<ObjectBoxTiming>();
  ToMany<ObjectBoxChargeItemPerformer> performer =
      ToMany<ObjectBoxChargeItemPerformer>();
  ToOne<ObjectBoxReference> performingOrganization =
      ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> requestingOrganization =
      ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> costCenter = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxCodeableConcept> bodysite =
      ToMany<ObjectBoxCodeableConcept>();
  double? factorOverride;
  ToOne<ObjectBoxElement> factorOverrideElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> priceOverride = ToOne<ObjectBoxMoney>();
  String? overrideReason;
  ToOne<ObjectBoxElement> overrideReasonElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> enterer = ToOne<ObjectBoxReference>();
  String? enteredDate;
  ToOne<ObjectBoxElement> enteredDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> reason = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> service = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> productReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> productCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> account = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference> supportingInformation =
      ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxChargeItemPerformer {
  ObjectBoxChargeItemPerformer({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? function_,
    ObjectBoxReference? actor,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.function_.target = function_;
    this.actor.target = actor;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> function_ = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
}
