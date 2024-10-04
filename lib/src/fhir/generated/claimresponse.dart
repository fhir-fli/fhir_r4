import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ClaimResponse {
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
  final CodeableConcept type;
  final CodeableConcept subType;
  final FhirCode use;
  final PrimitiveElement Use;
  final Reference patient;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference insurer;
  final Reference requestor;
  final Reference request;
  final FhirCode outcome;
  final PrimitiveElement Outcome;
  final String disposition;
  final PrimitiveElement Disposition;
  final String preAuthRef;
  final PrimitiveElement PreAuthRef;
  final Period preAuthPeriod;
  final CodeableConcept payeeType;
  final List<ClaimResponseItem> item;
  final List<ClaimResponseAddItem> addItem;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseTotal> total;
  final ClaimResponse_Payment payment;
  final CodeableConcept fundsReserve;
  final CodeableConcept formCode;
  final Attachment form;
  final List<ClaimResponseProcessNote> processNote;
  final List<Reference> communicationRequest;
  final List<ClaimResponseInsurance> insurance;
  final List<ClaimResponseError> error;
  const ClaimResponse({
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
    required this.type,
    this.subType,
    this.use,
    this.Use,
    required this.patient,
    this.created,
    this.Created,
    required this.insurer,
    this.requestor,
    this.request,
    this.outcome,
    this.Outcome,
    this.disposition,
    this.Disposition,
    this.preAuthRef,
    this.PreAuthRef,
    this.preAuthPeriod,
    this.payeeType,
    this.item,
    this.addItem,
    this.adjudication,
    this.total,
    this.payment,
    this.fundsReserve,
    this.formCode,
    this.form,
    this.processNote,
    this.communicationRequest,
    this.insurance,
    this.error,
  });
}
