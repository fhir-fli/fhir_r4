import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class PaymentReconciliation {
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
  final Period period;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference paymentIssuer;
  final Reference request;
  final Reference requestor;
  final FhirCode outcome;
  final PrimitiveElement Outcome;
  final String disposition;
  final PrimitiveElement Disposition;
  final FhirDate paymentDate;
  final PrimitiveElement PaymentDate;
  final Money paymentAmount;
  final Identifier paymentIdentifier;
  final List<PaymentReconciliationDetail> detail;
  final CodeableConcept formCode;
  final List<PaymentReconciliationProcessNote> processNote;
  const PaymentReconciliation({
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
    this.period,
    this.created,
    this.Created,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.Outcome,
    this.disposition,
    this.Disposition,
    this.paymentDate,
    this.PaymentDate,
    required this.paymentAmount,
    this.paymentIdentifier,
    this.detail,
    this.formCode,
    this.processNote,
  });
}
