import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class PaymentReconciliation extends Resource {
  PaymentReconciliation({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.period,
    required this.created,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.disposition,
    required this.paymentDate,
    required this.paymentAmount,
    this.paymentIdentifier,
    this.detail,
    this.formCode,
    this.processNote,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToOne<Period>? period = ToOne<Period>();
  String created;
  ToOne<Reference>? paymentIssuer = ToOne<Reference>();
  ToOne<Reference>? request = ToOne<Reference>();
  ToOne<Reference>? requestor = ToOne<Reference>();
  String? outcome;
  String? disposition;
  String paymentDate;
  ToOne<Money> paymentAmount = ToOne<Money>();
  ToOne<Identifier>? paymentIdentifier = ToOne<Identifier>();
  ToMany<PaymentReconciliationDetail>? detail =
      ToMany<PaymentReconciliationDetail>();
  ToOne<CodeableConcept>? formCode = ToOne<CodeableConcept>();
  ToMany<PaymentReconciliationProcessNote>? processNote =
      ToMany<PaymentReconciliationProcessNote>();
}

@Entity()
class PaymentReconciliationDetail {
  PaymentReconciliationDetail({
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
    this.responsible,
    this.payee,
    this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  ToOne<Identifier>? predecessor = ToOne<Identifier>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  ToOne<Reference>? request = ToOne<Reference>();
  ToOne<Reference>? submitter = ToOne<Reference>();
  ToOne<Reference>? response = ToOne<Reference>();
  String? date;
  ToOne<Reference>? responsible = ToOne<Reference>();
  ToOne<Reference>? payee = ToOne<Reference>();
  ToOne<Money>? amount = ToOne<Money>();
}

@Entity()
class PaymentReconciliationProcessNote {
  PaymentReconciliationProcessNote({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.text,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? type;
  String? text;
}
