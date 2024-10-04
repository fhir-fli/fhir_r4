import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Invoice {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final String cancelledReason;
  final PrimitiveElement CancelledReason;
  final CodeableConcept type;
  final Reference subject;
  final Reference recipient;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final List<InvoiceParticipant> participant;
  final Reference issuer;
  final Reference account;
  final List<InvoiceLineItem> lineItem;
  final List<InvoicePriceComponent> totalPriceComponent;
  final Money totalNet;
  final Money totalGross;
  final FhirMarkdown paymentTerms;
  final PrimitiveElement PaymentTerms;
  final List<Annotation> note;
  const Invoice({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.status,
    this.Status,
    this.cancelledReason,
    this.CancelledReason,
    this.type,
    this.subject,
    this.recipient,
    this.date,
    this.Date,
    this.participant,
    this.issuer,
    this.account,
    this.lineItem,
    this.totalPriceComponent,
    this.totalNet,
    this.totalGross,
    this.paymentTerms,
    this.PaymentTerms,
    this.note,
  });
}
