// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPaymentReconciliation {
  ObjectBoxPaymentReconciliation({
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
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxPeriod? period,
    required this.created,
    ObjectBoxElement? createdElement,
    ObjectBoxReference? paymentIssuer,
    ObjectBoxReference? request,
    ObjectBoxReference? requestor,
    this.outcome,
    ObjectBoxElement? outcomeElement,
    this.disposition,
    ObjectBoxElement? dispositionElement,
    required this.paymentDate,
    ObjectBoxElement? paymentDateElement,
    ObjectBoxMoney? paymentAmount,
    ObjectBoxIdentifier? paymentIdentifier,
    List<ObjectBoxPaymentReconciliationDetail>? detail,
    ObjectBoxCodeableConcept? formCode,
    List<ObjectBoxPaymentReconciliationProcessNote>? processNote,
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
    this.statusElement.target = statusElement;
    this.period.target = period;
    this.createdElement.target = createdElement;
    this.paymentIssuer.target = paymentIssuer;
    this.request.target = request;
    this.requestor.target = requestor;
    this.outcomeElement.target = outcomeElement;
    this.dispositionElement.target = dispositionElement;
    this.paymentDateElement.target = paymentDateElement;
    this.paymentAmount.target = paymentAmount;
    this.paymentIdentifier.target = paymentIdentifier;
    this.detail.addAll(detail ?? []);
    this.formCode.target = formCode;
    this.processNote.addAll(processNote ?? []);
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
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
  String created;
  ToOne<ObjectBoxElement> createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> paymentIssuer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> request = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> requestor = ToOne<ObjectBoxReference>();
  String? outcome;
  ToOne<ObjectBoxElement> outcomeElement = ToOne<ObjectBoxElement>();
  String? disposition;
  ToOne<ObjectBoxElement> dispositionElement = ToOne<ObjectBoxElement>();
  String paymentDate;
  ToOne<ObjectBoxElement> paymentDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> paymentAmount = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxIdentifier> paymentIdentifier = ToOne<ObjectBoxIdentifier>();
  ToMany<ObjectBoxPaymentReconciliationDetail> detail =
      ToMany<ObjectBoxPaymentReconciliationDetail>();
  ToOne<ObjectBoxCodeableConcept> formCode = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxPaymentReconciliationProcessNote> processNote =
      ToMany<ObjectBoxPaymentReconciliationProcessNote>();
}

@Entity()
class ObjectBoxPaymentReconciliationDetail {
  ObjectBoxPaymentReconciliationDetail({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? identifier,
    ObjectBoxIdentifier? predecessor,
    ObjectBoxCodeableConcept? type,
    ObjectBoxReference? request,
    ObjectBoxReference? submitter,
    ObjectBoxReference? response,
    this.date,
    ObjectBoxElement? dateElement,
    ObjectBoxReference? responsible,
    ObjectBoxReference? payee,
    ObjectBoxMoney? amount,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.target = identifier;
    this.predecessor.target = predecessor;
    this.type.target = type;
    this.request.target = request;
    this.submitter.target = submitter;
    this.response.target = response;
    this.dateElement.target = dateElement;
    this.responsible.target = responsible;
    this.payee.target = payee;
    this.amount.target = amount;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier> identifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxIdentifier> predecessor = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> request = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> submitter = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> response = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> responsible = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> payee = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxMoney> amount = ToOne<ObjectBoxMoney>();
}

@Entity()
class ObjectBoxPaymentReconciliationProcessNote {
  ObjectBoxPaymentReconciliationProcessNote({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.type,
    ObjectBoxElement? typeElement,
    this.text,
    ObjectBoxElement? textElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.typeElement.target = typeElement;
    this.textElement.target = textElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? type;
  ToOne<ObjectBoxElement> typeElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
}
