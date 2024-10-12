// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxPaymentNotice {
  ObjectBoxPaymentNotice({
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
    this.request,
    this.response,
    required this.created,
    this.createdElement,
    this.provider,
    required this.payment,
    this.paymentDate,
    this.paymentDateElement,
    this.payee,
    required this.recipient,
    required this.amount,
    this.paymentStatus,
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
  ToOne<ObjectBoxReference>? request = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? response = ToOne<ObjectBoxReference>();
  String created;
  ToOne<ObjectBoxElement>? createdElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? provider = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> payment = ToOne<ObjectBoxReference>();
  String? paymentDate;
  ToOne<ObjectBoxElement>? paymentDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? payee = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> recipient = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxMoney> amount = ToOne<ObjectBoxMoney>();
  ToOne<ObjectBoxCodeableConcept>? paymentStatus =
      ToOne<ObjectBoxCodeableConcept>();
}
