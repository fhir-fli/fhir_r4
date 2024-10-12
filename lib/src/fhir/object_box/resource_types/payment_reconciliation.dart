// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPaymentReconciliation {
  ObjectBoxPaymentReconciliation({
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
    required this.status,
    this.statusElement,
    this.period,
    required this.created,
    this.createdElement,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    required this.paymentDate,
    this.paymentDateElement,
    required this.paymentAmount,
    this.paymentIdentifier,
    this.detail,
    this.formCode,
    this.processNote,
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
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? period = ToOne<ObjectBoxPeriod>();
  String created;
  ToOne<ObjectBoxElement>? createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? paymentIssuer = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? request = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? requestor = ToOne<ObjectBoxReference>();
  String? outcome;
  ToOne<ObjectBoxElement>? outcomeElement = ToOne<ObjectBoxElement>();
  String? disposition;
  ToOne<ObjectBoxElement>? dispositionElement = ToOne<ObjectBoxElement>();
  String paymentDate;
  ToOne<ObjectBoxElement>? paymentDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney> paymentAmount = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxIdentifier>? paymentIdentifier = ToOne<ObjectBoxIdentifier>();
  ToMany<ObjectBoxPaymentReconciliationDetail>? detail =
      ToMany<ObjectBoxPaymentReconciliationDetail>();
  ToOne<ObjectBoxCodeableConcept>? formCode = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxPaymentReconciliationProcessNote>? processNote =
      ToMany<ObjectBoxPaymentReconciliationProcessNote>();
}

@Entity()
class ObjectBoxPaymentReconciliationDetail {
  ObjectBoxPaymentReconciliationDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.predecessor,
    required this.type,
    this.request,
    this.submitter,
    this.response,
    this.date,
    this.dateElement,
    this.responsible,
    this.payee,
    this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxIdentifier>? predecessor = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference>? request = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? submitter = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? response = ToOne<ObjectBoxReference>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? responsible = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? payee = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxMoney>? amount = ToOne<ObjectBoxMoney>();
}

@Entity()
class ObjectBoxPaymentReconciliationProcessNote {
  ObjectBoxPaymentReconciliationProcessNote({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? type;
  ToOne<ObjectBoxElement>? typeElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
}
