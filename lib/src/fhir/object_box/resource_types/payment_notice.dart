// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPaymentNotice {
  ObjectBoxPaymentNotice({
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
    ObjectBoxReference? request,
    ObjectBoxReference? response,
    required this.created,
    ObjectBoxElement? createdElement,
    ObjectBoxReference? provider,
    ObjectBoxReference? payment,
    this.paymentDate,
    ObjectBoxElement? paymentDateElement,
    ObjectBoxReference? payee,
    ObjectBoxReference? recipient,
    ObjectBoxMoney? amount,
    ObjectBoxCodeableConcept? paymentStatus,
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
    this.request.target = request;
    this.response.target = response;
    this.createdElement.target = createdElement;
    this.provider.target = provider;
    this.payment.target = payment;
    this.paymentDateElement.target = paymentDateElement;
    this.payee.target = payee;
    this.recipient.target = recipient;
    this.amount.target = amount;
    this.paymentStatus.target = paymentStatus;
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
  ToOne<ObjectBoxReference> request = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> response = ToOne<ObjectBoxReference>();
  String created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> provider = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> payment = ToOne<ObjectBoxReference>();
  String? paymentDate;
  ToOne<ObjectBoxElement> paymentDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> payee = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> recipient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxMoney> amount = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxCodeableConcept> paymentStatus =
      ToOne<ObjectBoxCodeableConcept>();
}
