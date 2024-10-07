import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponse] /// This resource provides the adjudication details from the processing of a
/// Claim resource.
class ClaimResponse extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this claim response.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FhirCode status;
  final Element? statusElement;

  /// [type] /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  final CodeableConcept type;

  /// [subType] /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  final CodeableConcept? subType;

  /// [use] /// A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or requesting
  /// authorization and adjudication for provision in the future; or requesting
  /// the non-binding adjudication of the listed products and services which
  /// could be provided in the future.
  final FhirCode use;
  final Element? useElement;

  /// [patient] /// The party to whom the professional services and/or products have been
  /// supplied or are being considered and for whom actual for facast
  /// reimbursement is sought.
  final Reference patient;

  /// [created] /// The date this resource was created.
  final FhirDateTime created;
  final Element? createdElement;

  /// [insurer] /// The party responsible for authorization, adjudication and reimbursement.
  final Reference insurer;

  /// [requestor] /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  final Reference? requestor;

  /// [request] /// Original request resource reference.
  final Reference? request;

  /// [outcome] /// The outcome of the claim, predetermination, or preauthorization processing.
  final FhirCode outcome;
  final Element? outcomeElement;

  /// [disposition] /// A human readable description of the status of the adjudication.
  final FhirString? disposition;
  final Element? dispositionElement;

  /// [preAuthRef] /// Reference from the Insurer which is used in later communications which
  /// refers to this adjudication.
  final FhirString? preAuthRef;
  final Element? preAuthRefElement;

  /// [preAuthPeriod] /// The time frame during which this authorization is effective.
  final Period? preAuthPeriod;

  /// [payeeType] /// Type of Party to be reimbursed: subscriber, provider, other.
  final CodeableConcept? payeeType;

  /// [item] /// A claim line. Either a simple (a product or service) or a 'group' of
  /// details which can also be a simple items or groups of sub-details.
  final List<ClaimResponseItem>? item;

  /// [addItem] /// The first-tier service adjudications for payor added product or service
  /// lines.
  final List<ClaimResponseAddItem>? addItem;

  /// [adjudication] /// The adjudication results which are presented at the header level rather
  /// than at the line-item or add-item levels.
  final List<ClaimResponseAdjudication>? adjudication;

  /// [total] /// Categorized monetary totals for the adjudication.
  final List<ClaimResponseTotal>? total;

  /// [payment] /// Payment details for the adjudication of the claim.
  final ClaimResponsePayment? payment;

  /// [fundsReserve] /// A code, used only on a response to a preauthorization, to indicate whether
  /// the benefits payable have been reserved and for whom.
  final CodeableConcept? fundsReserve;

  /// [formCode] /// A code for the form to be used for printing the content.
  final CodeableConcept? formCode;

  /// [form] /// The actual form, by reference or inclusion, for printing the content or an
  /// EOB.
  final Attachment? form;

  /// [processNote] /// A note that describes or explains adjudication results in a human readable
  /// form.
  final List<ClaimResponseProcessNote>? processNote;

  /// [communicationRequest] /// Request for additional supporting or authorizing information.
  final List<Reference>? communicationRequest;

  /// [insurance] /// Financial instruments for reimbursement for the health care products and
  /// services specified on the claim.
  final List<ClaimResponseInsurance>? insurance;

  /// [error] /// Errors encountered during the processing of the adjudication.
  final List<ClaimResponseError>? error;
  @override
  ClaimResponse clone() => throw UnimplementedError();
  ClaimResponse copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? type,
    CodeableConcept? subType,
    FhirCode? use,
    Element? useElement,
    Reference? patient,
    FhirDateTime? created,
    Element? createdElement,
    Reference? insurer,
    Reference? requestor,
    Reference? request,
    FhirCode? outcome,
    Element? outcomeElement,
    FhirString? disposition,
    Element? dispositionElement,
    FhirString? preAuthRef,
    Element? preAuthRefElement,
    Period? preAuthPeriod,
    CodeableConcept? payeeType,
    List<ClaimResponseItem>? item,
    List<ClaimResponseAddItem>? addItem,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseTotal>? total,
    ClaimResponsePayment? payment,
    CodeableConcept? fundsReserve,
    CodeableConcept? formCode,
    Attachment? form,
    List<ClaimResponseProcessNote>? processNote,
    List<Reference>? communicationRequest,
    List<ClaimResponseInsurance>? insurance,
    List<ClaimResponseError>? error,
  }) {
    return ClaimResponse(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      subType: subType ?? this.subType,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      patient: patient ?? this.patient,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      insurer: insurer ?? this.insurer,
      requestor: requestor ?? this.requestor,
      request: request ?? this.request,
      outcome: outcome ?? this.outcome,
      outcomeElement: outcomeElement ?? this.outcomeElement,
      disposition: disposition ?? this.disposition,
      dispositionElement: dispositionElement ?? this.dispositionElement,
      preAuthRef: preAuthRef ?? this.preAuthRef,
      preAuthRefElement: preAuthRefElement ?? this.preAuthRefElement,
      preAuthPeriod: preAuthPeriod ?? this.preAuthPeriod,
      payeeType: payeeType ?? this.payeeType,
      item: item ?? this.item,
      addItem: addItem ?? this.addItem,
      adjudication: adjudication ?? this.adjudication,
      total: total ?? this.total,
      payment: payment ?? this.payment,
      fundsReserve: fundsReserve ?? this.fundsReserve,
      formCode: formCode ?? this.formCode,
      form: form ?? this.form,
      processNote: processNote ?? this.processNote,
      communicationRequest: communicationRequest ?? this.communicationRequest,
      insurance: insurance ?? this.insurance,
      error: error ?? this.error,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseItem] /// A claim line. Either a simple (a product or service) or a 'group' of
/// details which can also be a simple items or groups of sub-details.
class ClaimResponseItem extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemSequence] /// A number to uniquely reference the claim item entries.
  final FhirPositiveInt itemSequence;
  final Element? itemSequenceElement;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// If this item is a group then the values here are a summary of the
  /// adjudication of the detail items. If this item is a simple product or
  /// service then this is the result of the adjudication of this item.
  final List<ClaimResponseAdjudication> adjudication;

  /// [detail] /// A claim detail. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  final List<ClaimResponseDetail>? detail;
  @override
  ClaimResponseItem clone() => throw UnimplementedError();
  ClaimResponseItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? itemSequence,
    Element? itemSequenceElement,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseDetail>? detail,
  }) {
    return ClaimResponseItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      itemSequenceElement: itemSequenceElement ?? this.itemSequenceElement,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      detail: detail ?? this.detail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseAdjudication] /// If this item is a group then the values here are a summary of the
/// adjudication of the detail items. If this item is a simple product or
/// service then this is the result of the adjudication of this item.
class ClaimResponseAdjudication extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// A code to indicate the information type of this adjudication record.
  /// Information types may include the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that: the patient is
  /// responsible for in aggregate or pertaining to this item; amounts paid by
  /// other coverages; and, the benefit payable for this item.
  final CodeableConcept category;

  /// [reason] /// A code supporting the understanding of the adjudication result and
  /// explaining variance from expected amount.
  final CodeableConcept? reason;

  /// [amount] /// Monetary amount associated with the category.
  final Money? amount;

  /// [value] /// A non-monetary value associated with the category. Mutually exclusive to
  /// the amount element above.
  final FhirDecimal? value;
  final Element? valueElement;
  @override
  ClaimResponseAdjudication clone() => throw UnimplementedError();
  ClaimResponseAdjudication copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? reason,
    Money? amount,
    FhirDecimal? value,
    Element? valueElement,
  }) {
    return ClaimResponseAdjudication(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      reason: reason ?? this.reason,
      amount: amount ?? this.amount,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseDetail] /// A claim detail. Either a simple (a product or service) or a 'group' of
/// sub-details which are simple items.
class ClaimResponseDetail extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [detailSequence] /// A number to uniquely reference the claim detail entry.
  final FhirPositiveInt detailSequence;
  final Element? detailSequenceElement;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  final List<ClaimResponseAdjudication> adjudication;

  /// [subDetail] /// A sub-detail adjudication of a simple product or service.
  final List<ClaimResponseSubDetail>? subDetail;
  @override
  ClaimResponseDetail clone() => throw UnimplementedError();
  ClaimResponseDetail copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? detailSequence,
    Element? detailSequenceElement,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseSubDetail>? subDetail,
  }) {
    return ClaimResponseDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      detailSequence: detailSequence ?? this.detailSequence,
      detailSequenceElement:
          detailSequenceElement ?? this.detailSequenceElement,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      subDetail: subDetail ?? this.subDetail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseSubDetail] /// A sub-detail adjudication of a simple product or service.
class ClaimResponseSubDetail extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [subDetailSequence] /// A number to uniquely reference the claim sub-detail entry.
  final FhirPositiveInt subDetailSequence;
  final Element? subDetailSequenceElement;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  final List<ClaimResponseAdjudication>? adjudication;
  @override
  ClaimResponseSubDetail clone() => throw UnimplementedError();
  ClaimResponseSubDetail copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? subDetailSequence,
    Element? subDetailSequenceElement,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ClaimResponseAdjudication>? adjudication,
  }) {
    return ClaimResponseSubDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
      subDetailSequenceElement:
          subDetailSequenceElement ?? this.subDetailSequenceElement,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseAddItem] /// The first-tier service adjudications for payor added product or service
/// lines.
class ClaimResponseAddItem extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemSequence] /// Claim items which this service line is intended to replace.
  final List<FhirPositiveInt>? itemSequence;
  final List<Element>? itemSequenceElement;

  /// [detailSequence] /// The sequence number of the details within the claim item which this line is
  /// intended to replace.
  final List<FhirPositiveInt>? detailSequence;
  final List<Element>? detailSequenceElement;

  /// [subdetailSequence] /// The sequence number of the sub-details within the details within the claim
  /// item which this line is intended to replace.
  final List<FhirPositiveInt>? subdetailSequence;
  final List<Element>? subdetailSequenceElement;

  /// [provider] /// The providers who are authorized for the services rendered to the patient.
  final List<Reference>? provider;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [programCode] /// Identifies the program under which this may be recovered.
  final List<CodeableConcept>? programCode;

  /// [servicedDate] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  final FhirDate? servicedDate;
  final Element? servicedDateElement;

  /// [servicedPeriod] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  final Period? servicedPeriod;

  /// [locationCodeableConcept] /// Where the product or service was provided.
  final CodeableConcept? locationCodeableConcept;

  /// [locationAddress] /// Where the product or service was provided.
  final Address? locationAddress;

  /// [locationReference] /// Where the product or service was provided.
  final Reference? locationReference;

  /// [quantity] /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  final Money? net;

  /// [bodySite] /// Physical service site on the patient (limb, tooth, etc.).
  final CodeableConcept? bodySite;

  /// [subSite] /// A region or surface of the bodySite, e.g. limb region or tooth surface(s).
  final List<CodeableConcept>? subSite;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  final List<ClaimResponseAdjudication> adjudication;

  /// [detail] /// The second-tier service adjudications for payor added services.
  final List<ClaimResponseDetail>? detail;
  @override
  ClaimResponseAddItem clone() => throw UnimplementedError();
  ClaimResponseAddItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirPositiveInt>? itemSequence,
    List<Element>? itemSequenceElement,
    List<FhirPositiveInt>? detailSequence,
    List<Element>? detailSequenceElement,
    List<FhirPositiveInt>? subdetailSequence,
    List<Element>? subdetailSequenceElement,
    List<Reference>? provider,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    List<CodeableConcept>? programCode,
    FhirDate? servicedDate,
    Element? servicedDateElement,
    Period? servicedPeriod,
    CodeableConcept? locationCodeableConcept,
    Address? locationAddress,
    Reference? locationReference,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    CodeableConcept? bodySite,
    List<CodeableConcept>? subSite,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseDetail>? detail,
  }) {
    return ClaimResponseAddItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      itemSequenceElement: itemSequenceElement ?? this.itemSequenceElement,
      detailSequence: detailSequence ?? this.detailSequence,
      detailSequenceElement:
          detailSequenceElement ?? this.detailSequenceElement,
      subdetailSequence: subdetailSequence ?? this.subdetailSequence,
      subdetailSequenceElement:
          subdetailSequenceElement ?? this.subdetailSequenceElement,
      provider: provider ?? this.provider,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      programCode: programCode ?? this.programCode,
      servicedDate: servicedDate ?? this.servicedDate,
      servicedDateElement: servicedDateElement ?? this.servicedDateElement,
      servicedPeriod: servicedPeriod ?? this.servicedPeriod,
      locationCodeableConcept:
          locationCodeableConcept ?? this.locationCodeableConcept,
      locationAddress: locationAddress ?? this.locationAddress,
      locationReference: locationReference ?? this.locationReference,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      bodySite: bodySite ?? this.bodySite,
      subSite: subSite ?? this.subSite,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      detail: detail ?? this.detail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseDetail1] /// The second-tier service adjudications for payor added services.
class ClaimResponseDetail1 extends BackboneElement {
  ClaimResponseDetail1({
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [quantity] /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  final Money? net;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  final List<ClaimResponseAdjudication> adjudication;

  /// [subDetail] /// The third-tier service adjudications for payor added services.
  final List<ClaimResponseSubDetail>? subDetail;
  @override
  ClaimResponseDetail1 clone() => throw UnimplementedError();
  ClaimResponseDetail1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseSubDetail>? subDetail,
  }) {
    return ClaimResponseDetail1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
      subDetail: subDetail ?? this.subDetail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseSubDetail1] /// The third-tier service adjudications for payor added services.
class ClaimResponseSubDetail1 extends BackboneElement {
  ClaimResponseSubDetail1({
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  final List<CodeableConcept>? modifier;

  /// [quantity] /// The number of repetitions of a service or product.
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  final FhirDecimal? factor;
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  final Money? net;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  final List<FhirPositiveInt>? noteNumber;
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  final List<ClaimResponseAdjudication> adjudication;
  @override
  ClaimResponseSubDetail1 clone() => throw UnimplementedError();
  ClaimResponseSubDetail1 copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? productOrService,
    List<CodeableConcept>? modifier,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    Element? factorElement,
    Money? net,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ClaimResponseAdjudication>? adjudication,
  }) {
    return ClaimResponseSubDetail1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      productOrService: productOrService ?? this.productOrService,
      modifier: modifier ?? this.modifier,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      net: net ?? this.net,
      noteNumber: noteNumber ?? this.noteNumber,
      noteNumberElement: noteNumberElement ?? this.noteNumberElement,
      adjudication: adjudication ?? this.adjudication,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseTotal] /// Categorized monetary totals for the adjudication.
class ClaimResponseTotal extends BackboneElement {
  ClaimResponseTotal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    required this.amount,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient is
  /// responsible for in aggregate or pertaining to this item, amounts paid by
  /// other coverages, and the benefit payable for this item.
  final CodeableConcept category;

  /// [amount] /// Monetary total amount associated with the category.
  final Money amount;
  @override
  ClaimResponseTotal clone() => throw UnimplementedError();
  ClaimResponseTotal copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    Money? amount,
  }) {
    return ClaimResponseTotal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      amount: amount ?? this.amount,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponsePayment] /// Payment details for the adjudication of the claim.
class ClaimResponsePayment extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Whether this represents partial or complete payment of the benefits
  /// payable.
  final CodeableConcept type;

  /// [adjustment] /// Total amount of all adjustments to this payment included in this
  /// transaction which are not related to this claim's adjudication.
  final Money? adjustment;

  /// [adjustmentReason] /// Reason for the payment adjustment.
  final CodeableConcept? adjustmentReason;

  /// [date] /// Estimated date the payment will be issued or the actual issue date of
  /// payment.
  final FhirDate? date;
  final Element? dateElement;

  /// [amount] /// Benefits payable less any payment adjustment.
  final Money amount;

  /// [identifier] /// Issuer's unique identifier for the payment instrument.
  final Identifier? identifier;
  @override
  ClaimResponsePayment clone() => throw UnimplementedError();
  ClaimResponsePayment copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    Money? adjustment,
    CodeableConcept? adjustmentReason,
    FhirDate? date,
    Element? dateElement,
    Money? amount,
    Identifier? identifier,
  }) {
    return ClaimResponsePayment(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      adjustment: adjustment ?? this.adjustment,
      adjustmentReason: adjustmentReason ?? this.adjustmentReason,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      amount: amount ?? this.amount,
      identifier: identifier ?? this.identifier,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseProcessNote] /// A note that describes or explains adjudication results in a human readable
/// form.
class ClaimResponseProcessNote extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [number] /// A number to uniquely identify a note entry.
  final FhirPositiveInt? number;
  final Element? numberElement;

  /// [type] /// The business purpose of the note text.
  final FhirCode? type;
  final Element? typeElement;

  /// [text] /// The explanation or description associated with the processing.
  final FhirString text;
  final Element? textElement;

  /// [language] /// A code to define the language used in the text of the note.
  final CodeableConcept? language;
  @override
  ClaimResponseProcessNote clone() => throw UnimplementedError();
  ClaimResponseProcessNote copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? number,
    Element? numberElement,
    FhirCode? type,
    Element? typeElement,
    FhirString? text,
    Element? textElement,
    CodeableConcept? language,
  }) {
    return ClaimResponseProcessNote(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      number: number ?? this.number,
      numberElement: numberElement ?? this.numberElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      language: language ?? this.language,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseInsurance] /// Financial instruments for reimbursement for the health care products and
/// services specified on the claim.
class ClaimResponseInsurance extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify insurance entries and provide a sequence of
  /// coverages to convey coordination of benefit order.
  final FhirPositiveInt sequence;
  final Element? sequenceElement;

  /// [focal] /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  final FhirBoolean focal;
  final Element? focalElement;

  /// [coverage] /// Reference to the insurance card level information contained in the Coverage
  /// resource. The coverage issuing insurer will use these details to locate the
  /// patient's actual coverage within the insurer's information system.
  final Reference coverage;

  /// [businessArrangement] /// A business agreement number established between the provider and the
  /// insurer for special business processing purposes.
  final FhirString? businessArrangement;
  final Element? businessArrangementElement;

  /// [claimResponse] /// The result of the adjudication of the line items for the Coverage specified
  /// in this insurance.
  final Reference? claimResponse;
  @override
  ClaimResponseInsurance clone() => throw UnimplementedError();
  ClaimResponseInsurance copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
    FhirBoolean? focal,
    Element? focalElement,
    Reference? coverage,
    FhirString? businessArrangement,
    Element? businessArrangementElement,
    Reference? claimResponse,
  }) {
    return ClaimResponseInsurance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      sequenceElement: sequenceElement ?? this.sequenceElement,
      focal: focal ?? this.focal,
      focalElement: focalElement ?? this.focalElement,
      coverage: coverage ?? this.coverage,
      businessArrangement: businessArrangement ?? this.businessArrangement,
      businessArrangementElement:
          businessArrangementElement ?? this.businessArrangementElement,
      claimResponse: claimResponse ?? this.claimResponse,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ClaimResponseError] /// Errors encountered during the processing of the adjudication.
class ClaimResponseError extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemSequence] /// The sequence number of the line item submitted which contains the error.
  /// This value is omitted when the error occurs outside of the item structure.
  final FhirPositiveInt? itemSequence;
  final Element? itemSequenceElement;

  /// [detailSequence] /// The sequence number of the detail within the line item submitted which
  /// contains the error. This value is omitted when the error occurs outside of
  /// the item structure.
  final FhirPositiveInt? detailSequence;
  final Element? detailSequenceElement;

  /// [subDetailSequence] /// The sequence number of the sub-detail within the detail within the line
  /// item submitted which contains the error. This value is omitted when the
  /// error occurs outside of the item structure.
  final FhirPositiveInt? subDetailSequence;
  final Element? subDetailSequenceElement;

  /// [code] /// An error code, from a specified code system, which details why the claim
  /// could not be adjudicated.
  final CodeableConcept code;
  @override
  ClaimResponseError clone() => throw UnimplementedError();
  ClaimResponseError copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? itemSequence,
    Element? itemSequenceElement,
    FhirPositiveInt? detailSequence,
    Element? detailSequenceElement,
    FhirPositiveInt? subDetailSequence,
    Element? subDetailSequenceElement,
    CodeableConcept? code,
  }) {
    return ClaimResponseError(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemSequence: itemSequence ?? this.itemSequence,
      itemSequenceElement: itemSequenceElement ?? this.itemSequenceElement,
      detailSequence: detailSequence ?? this.detailSequence,
      detailSequenceElement:
          detailSequenceElement ?? this.detailSequenceElement,
      subDetailSequence: subDetailSequence ?? this.subDetailSequence,
      subDetailSequenceElement:
          subDetailSequenceElement ?? this.subDetailSequenceElement,
      code: code ?? this.code,
    );
  }
}
