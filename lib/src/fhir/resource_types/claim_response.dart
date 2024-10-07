import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ClaimResponse extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept type;
  final CodeableConcept? subType;
  final FhirCode use;
  final Element? useElement;
  final Reference patient;
  final FhirDateTime created;
  final Element? createdElement;
  final Reference insurer;
  final Reference? requestor;
  final Reference? request;
  final FhirCode outcome;
  final Element? outcomeElement;
  final FhirString? disposition;
  final Element? dispositionElement;
  final FhirString? preAuthRef;
  final Element? preAuthRefElement;
  final Period? preAuthPeriod;
  final CodeableConcept? payeeType;
  final List<ClaimResponseItem>? item;
  final List<ClaimResponseAddItem>? addItem;
  final List<ClaimResponseAdjudication>? adjudication;
  final List<ClaimResponseTotal>? total;
  final ClaimResponsePayment? payment;
  final CodeableConcept? fundsReserve;
  final CodeableConcept? formCode;
  final Attachment? form;
  final List<ClaimResponseProcessNote>? processNote;
  final List<Reference>? communicationRequest;
  final List<ClaimResponseInsurance>? insurance;
  final List<ClaimResponseError>? error;

  ClaimResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    required this.type,
    this.subType,
    required this.use,
    this.useElement,
    required this.patient,
    required this.created,
    this.createdElement,
    required this.insurer,
    this.requestor,
    this.request,
    required this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    this.preAuthRef,
    this.preAuthRefElement,
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
  }) : super(resourceType: R4ResourceType.ClaimResponse);

  @override
  ClaimResponse clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseItem extends BackboneElement {
  final FhirPositiveInt itemSequence;
  final Element? itemSequenceElement;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseDetail>? detail;

  ClaimResponseItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemSequence,
    this.itemSequenceElement,
    this.noteNumber,
    this.noteNumberElement,
    required this.adjudication,
    this.detail,
  });

  @override
  ClaimResponseItem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseAdjudication extends BackboneElement {
  final CodeableConcept category;
  final CodeableConcept? reason;
  final Money? amount;
  final FhirDecimal? value;
  final Element? valueElement;

  ClaimResponseAdjudication({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    this.reason,
    this.amount,
    this.value,
    this.valueElement,
  });

  @override
  ClaimResponseAdjudication clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseDetail extends BackboneElement {
  final FhirPositiveInt detailSequence;
  final Element? detailSequenceElement;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseSubDetail>? subDetail;

  ClaimResponseDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.detailSequence,
    this.detailSequenceElement,
    this.noteNumber,
    this.noteNumberElement,
    required this.adjudication,
    this.subDetail,
  });

  @override
  ClaimResponseDetail clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseSubDetail extends BackboneElement {
  final FhirPositiveInt subDetailSequence;
  final Element? subDetailSequenceElement;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<ClaimResponseAdjudication>? adjudication;

  ClaimResponseSubDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.subDetailSequence,
    this.subDetailSequenceElement,
    this.noteNumber,
    this.noteNumberElement,
    this.adjudication,
  });

  @override
  ClaimResponseSubDetail clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseAddItem extends BackboneElement {
  final List<FhirPositiveInt>? itemSequence;
  final List<Element>? itemSequenceElement;
  final List<FhirPositiveInt>? detailSequence;
  final List<Element>? detailSequenceElement;
  final List<FhirPositiveInt>? subdetailSequence;
  final List<Element>? subdetailSequenceElement;
  final List<Reference>? provider;
  final CodeableConcept productOrService;
  final List<CodeableConcept>? modifier;
  final List<CodeableConcept>? programCode;
  final FhirDate? servicedDate;
  final Element? servicedDateElement;
  final Period? servicedPeriod;
  final CodeableConcept? locationCodeableConcept;
  final Address? locationAddress;
  final Reference? locationReference;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? net;
  final CodeableConcept? bodySite;
  final List<CodeableConcept>? subSite;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseDetail>? detail;

  ClaimResponseAddItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.itemSequenceElement,
    this.detailSequence,
    this.detailSequenceElement,
    this.subdetailSequence,
    this.subdetailSequenceElement,
    this.provider,
    required this.productOrService,
    this.modifier,
    this.programCode,
    this.servicedDate,
    this.servicedDateElement,
    this.servicedPeriod,
    this.locationCodeableConcept,
    this.locationAddress,
    this.locationReference,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.bodySite,
    this.subSite,
    this.noteNumber,
    this.noteNumberElement,
    required this.adjudication,
    this.detail,
  });

  @override
  ClaimResponseAddItem clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseDetail extends BackboneElement {
  final CodeableConcept productOrService;
  final List<CodeableConcept>? modifier;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? net;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;
  final List<ClaimResponseSubDetail>? subDetail;

  ClaimResponseDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.noteNumber,
    this.noteNumberElement,
    required this.adjudication,
    this.subDetail,
  });

  @override
  ClaimResponseDetail clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseSubDetail extends BackboneElement {
  final CodeableConcept productOrService;
  final List<CodeableConcept>? modifier;
  final Quantity? quantity;
  final Money? unitPrice;
  final FhirDecimal? factor;
  final Element? factorElement;
  final Money? net;
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;
  final List<ClaimResponseAdjudication> adjudication;

  ClaimResponseSubDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.productOrService,
    this.modifier,
    this.quantity,
    this.unitPrice,
    this.factor,
    this.factorElement,
    this.net,
    this.noteNumber,
    this.noteNumberElement,
    required this.adjudication,
  });

  @override
  ClaimResponseSubDetail clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseTotal extends BackboneElement {
  final CodeableConcept category;
  final Money amount;

  ClaimResponseTotal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    required this.amount,
  });

  @override
  ClaimResponseTotal clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponsePayment extends BackboneElement {
  final CodeableConcept type;
  final Money? adjustment;
  final CodeableConcept? adjustmentReason;
  final FhirDate? date;
  final Element? dateElement;
  final Money amount;
  final Identifier? identifier;

  ClaimResponsePayment({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.adjustment,
    this.adjustmentReason,
    this.date,
    this.dateElement,
    required this.amount,
    this.identifier,
  });

  @override
  ClaimResponsePayment clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseProcessNote extends BackboneElement {
  final FhirPositiveInt? number;
  final Element? numberElement;
  final FhirCode? type;
  final Element? typeElement;
  final FhirString text;
  final Element? textElement;
  final CodeableConcept? language;

  ClaimResponseProcessNote({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.number,
    this.numberElement,
    this.type,
    this.typeElement,
    required this.text,
    this.textElement,
    this.language,
  });

  @override
  ClaimResponseProcessNote clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseInsurance extends BackboneElement {
  final FhirPositiveInt sequence;
  final Element? sequenceElement;
  final FhirBoolean focal;
  final Element? focalElement;
  final Reference coverage;
  final FhirString? businessArrangement;
  final Element? businessArrangementElement;
  final Reference? claimResponse;

  ClaimResponseInsurance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.sequence,
    this.sequenceElement,
    required this.focal,
    this.focalElement,
    required this.coverage,
    this.businessArrangement,
    this.businessArrangementElement,
    this.claimResponse,
  });

  @override
  ClaimResponseInsurance clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClaimResponseError extends BackboneElement {
  final FhirPositiveInt? itemSequence;
  final Element? itemSequenceElement;
  final FhirPositiveInt? detailSequence;
  final Element? detailSequenceElement;
  final FhirPositiveInt? subDetailSequence;
  final Element? subDetailSequenceElement;
  final CodeableConcept code;

  ClaimResponseError({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemSequence,
    this.itemSequenceElement,
    this.detailSequence,
    this.detailSequenceElement,
    this.subDetailSequence,
    this.subDetailSequenceElement,
    required this.code,
  });

  @override
  ClaimResponseError clone() => throw UnimplementedError();
}
