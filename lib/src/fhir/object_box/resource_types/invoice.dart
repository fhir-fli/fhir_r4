// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxInvoice {
  ObjectBoxInvoice({
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
    required this.status,
    ObjectBoxElement? statusElement,
    this.cancelledReason,
    ObjectBoxElement? cancelledReasonElement,
    ObjectBoxCodeableConcept? type,
    ObjectBoxReference? subject,
    ObjectBoxReference? recipient,
    this.date,
    ObjectBoxElement? dateElement,
    List<ObjectBoxInvoiceParticipant>? participant,
    ObjectBoxReference? issuer,
    ObjectBoxReference? account,
    List<ObjectBoxInvoiceLineItem>? lineItem,
    List<ObjectBoxInvoicePriceComponent>? totalPriceComponent,
    ObjectBoxMoney? totalNet,
    ObjectBoxMoney? totalGross,
    this.paymentTerms,
    ObjectBoxElement? paymentTermsElement,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.statusElement.target = statusElement;
    this.cancelledReasonElement.target = cancelledReasonElement;
    this.type.target = type;
    this.subject.target = subject;
    this.recipient.target = recipient;
    this.dateElement.target = dateElement;
    this.participant.addAll(participant ?? []);
    this.issuer.target = issuer;
    this.account.target = account;
    this.lineItem.addAll(lineItem ?? []);
    this.totalPriceComponent.addAll(totalPriceComponent ?? []);
    this.totalNet.target = totalNet;
    this.totalGross.target = totalGross;
    this.paymentTermsElement.target = paymentTermsElement;
    this.note.addAll(note ?? []);
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String? cancelledReason;
  ToOne<ObjectBoxElement> cancelledReasonElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> recipient = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxInvoiceParticipant> participant =
      ToMany<ObjectBoxInvoiceParticipant>();
  ToOne<ObjectBoxReference> issuer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> account = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxInvoiceLineItem> lineItem =
      ToMany<ObjectBoxInvoiceLineItem>();
  ToMany<ObjectBoxInvoicePriceComponent> totalPriceComponent =
      ToMany<ObjectBoxInvoicePriceComponent>();
  ToOne<ObjectBoxMoney> totalNet = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxMoney> totalGross = ToOne<ObjectBoxMoney>();
  String? paymentTerms;
  ToOne<ObjectBoxElement> paymentTermsElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxInvoiceParticipant {
  ObjectBoxInvoiceParticipant({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? role,
    ObjectBoxReference? actor,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.role.target = role;
    this.actor.target = actor;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxInvoiceLineItem {
  ObjectBoxInvoiceLineItem({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.sequence,
    ObjectBoxElement? sequenceElement,
    ObjectBoxReference? chargeItemReference,
    ObjectBoxCodeableConcept? chargeItemCodeableConcept,
    List<ObjectBoxInvoicePriceComponent>? priceComponent,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.sequenceElement.target = sequenceElement;
    this.chargeItemReference.target = chargeItemReference;
    this.chargeItemCodeableConcept.target = chargeItemCodeableConcept;
    this.priceComponent.addAll(priceComponent ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  int? sequence;
  ToOne<ObjectBoxElement> sequenceElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> chargeItemReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> chargeItemCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxInvoicePriceComponent> priceComponent =
      ToMany<ObjectBoxInvoicePriceComponent>();
}

@Entity()
class ObjectBoxInvoicePriceComponent {
  ObjectBoxInvoicePriceComponent({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.type,
    ObjectBoxElement? typeElement,
    ObjectBoxCodeableConcept? code,
    this.factor,
    ObjectBoxElement? factorElement,
    ObjectBoxMoney? amount,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.code.target = code;
    this.factorElement.target = factorElement;
    this.amount.target = amount;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  double? factor;
  ToOne<ObjectBoxElement> factorElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> amount = ToOne<ObjectBoxMoney>();
}
