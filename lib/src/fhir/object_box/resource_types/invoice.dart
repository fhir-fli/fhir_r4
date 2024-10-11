import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Invoice extends Resource {
  Invoice({
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
    this.cancelledReason,
    this.type,
    this.subject,
    this.recipient,
    this.date,
    this.participant,
    this.issuer,
    this.account,
    this.lineItem,
    this.totalPriceComponent,
    this.totalNet,
    this.totalGross,
    this.paymentTerms,
    this.note,
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
  String? cancelledReason;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<Reference>? recipient = ToOne<Reference>();
  String? date;
  ToMany<InvoiceParticipant>? participant = ToMany<InvoiceParticipant>();
  ToOne<Reference>? issuer = ToOne<Reference>();
  ToOne<Reference>? account = ToOne<Reference>();
  ToMany<InvoiceLineItem>? lineItem = ToMany<InvoiceLineItem>();
  ToMany<InvoicePriceComponent>? totalPriceComponent =
      ToMany<InvoicePriceComponent>();
  ToOne<Money>? totalNet = ToOne<Money>();
  ToOne<Money>? totalGross = ToOne<Money>();
  String? paymentTerms;
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class InvoiceParticipant {
  InvoiceParticipant({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.role,
    required this.actor,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? role = ToOne<CodeableConcept>();
  ToOne<Reference> actor = ToOne<Reference>();
}

@Entity()
class InvoiceLineItem {
  InvoiceLineItem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.sequence,
    this.chargeItemReference,
    this.chargeItemCodeableConcept,
    this.priceComponent,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  int? sequence;
  ToOne<Reference>? chargeItemReference = ToOne<Reference>();
  ToOne<CodeableConcept>? chargeItemCodeableConcept = ToOne<CodeableConcept>();
  ToMany<InvoicePriceComponent>? priceComponent =
      ToMany<InvoicePriceComponent>();
}

@Entity()
class InvoicePriceComponent {
  InvoicePriceComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.code,
    this.factor,
    this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  double? factor;
  ToOne<Money>? amount = ToOne<Money>();
}
