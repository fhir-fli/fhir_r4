import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.ClaimResponse);

  @override
  String get fhirType => 'ClaimResponse';

  @Id()
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this claim response.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FinancialResourceStatusCodes status;
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
  final Use use;
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
  final RemittanceOutcome outcome;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['type'] = type.toJson();
    if (subType != null) {
      json['subType'] = subType!.toJson();
    }
    json['use'] = use.toJson();
    json['patient'] = patient.toJson();
    json['created'] = created.value;
    if (createdElement != null) {
      json['_created'] = createdElement!.toJson();
    }
    json['insurer'] = insurer.toJson();
    if (requestor != null) {
      json['requestor'] = requestor!.toJson();
    }
    if (request != null) {
      json['request'] = request!.toJson();
    }
    json['outcome'] = outcome.toJson();
    if (disposition?.value != null) {
      json['disposition'] = disposition!.value;
    }
    if (dispositionElement != null) {
      json['_disposition'] = dispositionElement!.toJson();
    }
    if (preAuthRef?.value != null) {
      json['preAuthRef'] = preAuthRef!.value;
    }
    if (preAuthRefElement != null) {
      json['_preAuthRef'] = preAuthRefElement!.toJson();
    }
    if (preAuthPeriod != null) {
      json['preAuthPeriod'] = preAuthPeriod!.toJson();
    }
    if (payeeType != null) {
      json['payeeType'] = payeeType!.toJson();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] =
          item!.map<dynamic>((ClaimResponseItem v) => v.toJson()).toList();
    }
    if (addItem != null && addItem!.isNotEmpty) {
      json['addItem'] = addItem!
          .map<dynamic>((ClaimResponseAddItem v) => v.toJson())
          .toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map<dynamic>((ClaimResponseAdjudication v) => v.toJson())
          .toList();
    }
    if (total != null && total!.isNotEmpty) {
      json['total'] =
          total!.map<dynamic>((ClaimResponseTotal v) => v.toJson()).toList();
    }
    if (payment != null) {
      json['payment'] = payment!.toJson();
    }
    if (fundsReserve != null) {
      json['fundsReserve'] = fundsReserve!.toJson();
    }
    if (formCode != null) {
      json['formCode'] = formCode!.toJson();
    }
    if (form != null) {
      json['form'] = form!.toJson();
    }
    if (processNote != null && processNote!.isNotEmpty) {
      json['processNote'] = processNote!
          .map<dynamic>((ClaimResponseProcessNote v) => v.toJson())
          .toList();
    }
    if (communicationRequest != null && communicationRequest!.isNotEmpty) {
      json['communicationRequest'] = communicationRequest!
          .map<dynamic>((Reference v) => v.toJson())
          .toList();
    }
    if (insurance != null && insurance!.isNotEmpty) {
      json['insurance'] = insurance!
          .map<dynamic>((ClaimResponseInsurance v) => v.toJson())
          .toList();
    }
    if (error != null && error!.isNotEmpty) {
      json['error'] =
          error!.map<dynamic>((ClaimResponseError v) => v.toJson()).toList();
    }
    return json;
  }

  factory ClaimResponse.fromJson(Map<String, dynamic> json) {
    return ClaimResponse(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: FinancialResourceStatusCodes.fromJson(
          json['status'] as Map<String, dynamic>),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      subType: json['subType'] != null
          ? CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>)
          : null,
      use: Use.fromJson(json['use'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      created: FhirDateTime(json['created']),
      createdElement:
          Element.fromJson(json['_created'] as Map<String, dynamic>),
      insurer: Reference.fromJson(json['insurer'] as Map<String, dynamic>),
      requestor: json['requestor'] != null
          ? Reference.fromJson(json['requestor'] as Map<String, dynamic>)
          : null,
      request: json['request'] != null
          ? Reference.fromJson(json['request'] as Map<String, dynamic>)
          : null,
      outcome:
          RemittanceOutcome.fromJson(json['outcome'] as Map<String, dynamic>),
      disposition:
          json['disposition'] != null ? FhirString(json['disposition']) : null,
      dispositionElement: json['_disposition'] != null
          ? Element.fromJson(json['_disposition'] as Map<String, dynamic>)
          : null,
      preAuthRef:
          json['preAuthRef'] != null ? FhirString(json['preAuthRef']) : null,
      preAuthRefElement: json['_preAuthRef'] != null
          ? Element.fromJson(json['_preAuthRef'] as Map<String, dynamic>)
          : null,
      preAuthPeriod: json['preAuthPeriod'] != null
          ? Period.fromJson(json['preAuthPeriod'] as Map<String, dynamic>)
          : null,
      payeeType: json['payeeType'] != null
          ? CodeableConcept.fromJson(json['payeeType'] as Map<String, dynamic>)
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<ClaimResponseItem>((dynamic v) =>
                  ClaimResponseItem.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      addItem: json['addItem'] != null
          ? (json['addItem'] as List<dynamic>)
              .map<ClaimResponseAddItem>((dynamic v) =>
                  ClaimResponseAddItem.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ClaimResponseAdjudication>((dynamic v) =>
                  ClaimResponseAdjudication.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      total: json['total'] != null
          ? (json['total'] as List<dynamic>)
              .map<ClaimResponseTotal>((dynamic v) =>
                  ClaimResponseTotal.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      payment: json['payment'] != null
          ? ClaimResponsePayment.fromJson(
              json['payment'] as Map<String, dynamic>)
          : null,
      fundsReserve: json['fundsReserve'] != null
          ? CodeableConcept.fromJson(
              json['fundsReserve'] as Map<String, dynamic>)
          : null,
      formCode: json['formCode'] != null
          ? CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>)
          : null,
      form: json['form'] != null
          ? Attachment.fromJson(json['form'] as Map<String, dynamic>)
          : null,
      processNote: json['processNote'] != null
          ? (json['processNote'] as List<dynamic>)
              .map<ClaimResponseProcessNote>((dynamic v) =>
                  ClaimResponseProcessNote.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      communicationRequest: json['communicationRequest'] != null
          ? (json['communicationRequest'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      insurance: json['insurance'] != null
          ? (json['insurance'] as List<dynamic>)
              .map<ClaimResponseInsurance>((dynamic v) =>
                  ClaimResponseInsurance.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      error: json['error'] != null
          ? (json['error'] as List<dynamic>)
              .map<ClaimResponseError>((dynamic v) =>
                  ClaimResponseError.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ClaimResponse clone() => throw UnimplementedError();
  @override
  ClaimResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    Element? statusElement,
    CodeableConcept? type,
    CodeableConcept? subType,
    Use? use,
    Element? useElement,
    Reference? patient,
    FhirDateTime? created,
    Element? createdElement,
    Reference? insurer,
    Reference? requestor,
    Reference? request,
    RemittanceOutcome? outcome,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponse.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponse cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseItem';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['itemSequence'] = itemSequence.value;
    if (itemSequenceElement != null) {
      json['_itemSequence'] = itemSequenceElement!.toJson();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    json['adjudication'] = adjudication
        .map<dynamic>((ClaimResponseAdjudication v) => v.toJson())
        .toList();
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] =
          detail!.map<dynamic>((ClaimResponseDetail v) => v.toJson()).toList();
    }
    return json;
  }

  factory ClaimResponseItem.fromJson(Map<String, dynamic> json) {
    return ClaimResponseItem(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      itemSequence: FhirPositiveInt(json['itemSequence']),
      itemSequenceElement:
          Element.fromJson(json['_itemSequence'] as Map<String, dynamic>),
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: (json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>((dynamic v) =>
              ClaimResponseAdjudication.fromJson(v as Map<String, dynamic>))
          .toList(),
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<ClaimResponseDetail>((dynamic v) =>
                  ClaimResponseDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ClaimResponseItem clone() => throw UnimplementedError();
  @override
  ClaimResponseItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? itemSequence,
    Element? itemSequenceElement,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseDetail>? detail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseItem.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseAdjudication';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['category'] = category.toJson();
    if (reason != null) {
      json['reason'] = reason!.toJson();
    }
    if (amount != null) {
      json['amount'] = amount!.toJson();
    }
    if (value?.value != null) {
      json['value'] = value!.value;
    }
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    return json;
  }

  factory ClaimResponseAdjudication.fromJson(Map<String, dynamic> json) {
    return ClaimResponseAdjudication(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      reason: json['reason'] != null
          ? CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>)
          : null,
      amount: json['amount'] != null
          ? Money.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
      value: json['value'] != null ? FhirDecimal(json['value']) : null,
      valueElement: json['_value'] != null
          ? Element.fromJson(json['_value'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ClaimResponseAdjudication clone() => throw UnimplementedError();
  @override
  ClaimResponseAdjudication copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? reason,
    Money? amount,
    FhirDecimal? value,
    Element? valueElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseAdjudication.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseAdjudication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseAdjudication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseAdjudication cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseAdjudication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseAdjudication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseDetail';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['detailSequence'] = detailSequence.value;
    if (detailSequenceElement != null) {
      json['_detailSequence'] = detailSequenceElement!.toJson();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    json['adjudication'] = adjudication
        .map<dynamic>((ClaimResponseAdjudication v) => v.toJson())
        .toList();
    if (subDetail != null && subDetail!.isNotEmpty) {
      json['subDetail'] = subDetail!
          .map<dynamic>((ClaimResponseSubDetail v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ClaimResponseDetail.fromJson(Map<String, dynamic> json) {
    return ClaimResponseDetail(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      detailSequence: FhirPositiveInt(json['detailSequence']),
      detailSequenceElement:
          Element.fromJson(json['_detailSequence'] as Map<String, dynamic>),
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: (json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>((dynamic v) =>
              ClaimResponseAdjudication.fromJson(v as Map<String, dynamic>))
          .toList(),
      subDetail: json['subDetail'] != null
          ? (json['subDetail'] as List<dynamic>)
              .map<ClaimResponseSubDetail>((dynamic v) =>
                  ClaimResponseSubDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ClaimResponseDetail clone() => throw UnimplementedError();
  @override
  ClaimResponseDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? detailSequence,
    Element? detailSequenceElement,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ClaimResponseAdjudication>? adjudication,
    List<ClaimResponseSubDetail>? subDetail,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseDetail cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseSubDetail';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['subDetailSequence'] = subDetailSequence.value;
    if (subDetailSequenceElement != null) {
      json['_subDetailSequence'] = subDetailSequenceElement!.toJson();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    if (adjudication != null && adjudication!.isNotEmpty) {
      json['adjudication'] = adjudication!
          .map<dynamic>((ClaimResponseAdjudication v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ClaimResponseSubDetail.fromJson(Map<String, dynamic> json) {
    return ClaimResponseSubDetail(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      subDetailSequence: FhirPositiveInt(json['subDetailSequence']),
      subDetailSequenceElement:
          Element.fromJson(json['_subDetailSequence'] as Map<String, dynamic>),
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: json['adjudication'] != null
          ? (json['adjudication'] as List<dynamic>)
              .map<ClaimResponseAdjudication>((dynamic v) =>
                  ClaimResponseAdjudication.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ClaimResponseSubDetail clone() => throw UnimplementedError();
  @override
  ClaimResponseSubDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? subDetailSequence,
    Element? subDetailSequenceElement,
    List<FhirPositiveInt>? noteNumber,
    List<Element>? noteNumberElement,
    List<ClaimResponseAdjudication>? adjudication,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseSubDetail.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseSubDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseSubDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseSubDetail cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseSubDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseSubDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseAddItem';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (itemSequence != null && itemSequence!.isNotEmpty) {
      json['itemSequence'] =
          itemSequence!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (itemSequenceElement != null && itemSequenceElement!.isNotEmpty) {
      json['_itemSequence'] =
          itemSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (detailSequence != null && detailSequence!.isNotEmpty) {
      json['detailSequence'] =
          detailSequence!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (detailSequenceElement != null && detailSequenceElement!.isNotEmpty) {
      json['_detailSequence'] =
          detailSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (subdetailSequence != null && subdetailSequence!.isNotEmpty) {
      json['subdetailSequence'] =
          subdetailSequence!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (subdetailSequenceElement != null &&
        subdetailSequenceElement!.isNotEmpty) {
      json['_subdetailSequence'] =
          subdetailSequenceElement!.map((Element v) => v.toJson()).toList();
    }
    if (provider != null && provider!.isNotEmpty) {
      json['provider'] =
          provider!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (programCode != null && programCode!.isNotEmpty) {
      json['programCode'] =
          programCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (servicedDate?.value != null) {
      json['servicedDate'] = servicedDate!.value;
    }
    if (servicedDateElement != null) {
      json['_servicedDate'] = servicedDateElement!.toJson();
    }
    if (servicedPeriod != null) {
      json['servicedPeriod'] = servicedPeriod!.toJson();
    }
    if (locationCodeableConcept != null) {
      json['locationCodeableConcept'] = locationCodeableConcept!.toJson();
    }
    if (locationAddress != null) {
      json['locationAddress'] = locationAddress!.toJson();
    }
    if (locationReference != null) {
      json['locationReference'] = locationReference!.toJson();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.value;
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (bodySite != null) {
      json['bodySite'] = bodySite!.toJson();
    }
    if (subSite != null && subSite!.isNotEmpty) {
      json['subSite'] =
          subSite!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    json['adjudication'] = adjudication
        .map<dynamic>((ClaimResponseAdjudication v) => v.toJson())
        .toList();
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] =
          detail!.map<dynamic>((ClaimResponseDetail v) => v.toJson()).toList();
    }
    return json;
  }

  factory ClaimResponseAddItem.fromJson(Map<String, dynamic> json) {
    return ClaimResponseAddItem(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      itemSequence: json['itemSequence'] != null
          ? (json['itemSequence'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      itemSequenceElement: json['_itemSequence'] != null
          ? (json['_itemSequence'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      detailSequence: json['detailSequence'] != null
          ? (json['detailSequence'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      detailSequenceElement: json['_detailSequence'] != null
          ? (json['_detailSequence'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      subdetailSequence: json['subdetailSequence'] != null
          ? (json['subdetailSequence'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      subdetailSequenceElement: json['_subdetailSequence'] != null
          ? (json['_subdetailSequence'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      provider: json['provider'] != null
          ? (json['provider'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      programCode: json['programCode'] != null
          ? (json['programCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      servicedDate:
          json['servicedDate'] != null ? FhirDate(json['servicedDate']) : null,
      servicedDateElement: json['_servicedDate'] != null
          ? Element.fromJson(json['_servicedDate'] as Map<String, dynamic>)
          : null,
      servicedPeriod: json['servicedPeriod'] != null
          ? Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>)
          : null,
      locationCodeableConcept: json['locationCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['locationCodeableConcept'] as Map<String, dynamic>)
          : null,
      locationAddress: json['locationAddress'] != null
          ? Address.fromJson(json['locationAddress'] as Map<String, dynamic>)
          : null,
      locationReference: json['locationReference'] != null
          ? Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>)
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
      factor: json['factor'] != null ? FhirDecimal(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      bodySite: json['bodySite'] != null
          ? CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>)
          : null,
      subSite: json['subSite'] != null
          ? (json['subSite'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: (json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>((dynamic v) =>
              ClaimResponseAdjudication.fromJson(v as Map<String, dynamic>))
          .toList(),
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<ClaimResponseDetail>((dynamic v) =>
                  ClaimResponseDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ClaimResponseAddItem clone() => throw UnimplementedError();
  @override
  ClaimResponseAddItem copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseAddItem.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseAddItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseAddItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseAddItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseAddItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseAddItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseDetail1';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.value;
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    json['adjudication'] = adjudication
        .map<dynamic>((ClaimResponseAdjudication v) => v.toJson())
        .toList();
    if (subDetail != null && subDetail!.isNotEmpty) {
      json['subDetail'] = subDetail!
          .map<dynamic>((ClaimResponseSubDetail v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ClaimResponseDetail1.fromJson(Map<String, dynamic> json) {
    return ClaimResponseDetail1(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
      factor: json['factor'] != null ? FhirDecimal(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: (json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>((dynamic v) =>
              ClaimResponseAdjudication.fromJson(v as Map<String, dynamic>))
          .toList(),
      subDetail: json['subDetail'] != null
          ? (json['subDetail'] as List<dynamic>)
              .map<ClaimResponseSubDetail>((dynamic v) =>
                  ClaimResponseSubDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ClaimResponseDetail1 clone() => throw UnimplementedError();
  @override
  ClaimResponseDetail1 copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseDetail1.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseDetail1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseDetail1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseSubDetail1';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['productOrService'] = productOrService.toJson();
    if (modifier != null && modifier!.isNotEmpty) {
      json['modifier'] =
          modifier!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }
    if (unitPrice != null) {
      json['unitPrice'] = unitPrice!.toJson();
    }
    if (factor?.value != null) {
      json['factor'] = factor!.value;
    }
    if (factorElement != null) {
      json['_factor'] = factorElement!.toJson();
    }
    if (net != null) {
      json['net'] = net!.toJson();
    }
    if (noteNumber != null && noteNumber!.isNotEmpty) {
      json['noteNumber'] =
          noteNumber!.map((FhirPositiveInt v) => v.value).toList();
    }
    if (noteNumberElement != null && noteNumberElement!.isNotEmpty) {
      json['_noteNumber'] =
          noteNumberElement!.map((Element v) => v.toJson()).toList();
    }
    json['adjudication'] = adjudication
        .map<dynamic>((ClaimResponseAdjudication v) => v.toJson())
        .toList();
    return json;
  }

  factory ClaimResponseSubDetail1.fromJson(Map<String, dynamic> json) {
    return ClaimResponseSubDetail1(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: json['modifier'] != null
          ? (json['modifier'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(json['quantity'] as Map<String, dynamic>)
          : null,
      unitPrice: json['unitPrice'] != null
          ? Money.fromJson(json['unitPrice'] as Map<String, dynamic>)
          : null,
      factor: json['factor'] != null ? FhirDecimal(json['factor']) : null,
      factorElement: json['_factor'] != null
          ? Element.fromJson(json['_factor'] as Map<String, dynamic>)
          : null,
      net: json['net'] != null
          ? Money.fromJson(json['net'] as Map<String, dynamic>)
          : null,
      noteNumber: json['noteNumber'] != null
          ? (json['noteNumber'] as List<dynamic>)
              .map<FhirPositiveInt>((dynamic v) => FhirPositiveInt(v))
              .toList()
          : null,
      noteNumberElement: json['_noteNumber'] != null
          ? (json['_noteNumber'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      adjudication: (json['adjudication'] as List<dynamic>)
          .map<ClaimResponseAdjudication>((dynamic v) =>
              ClaimResponseAdjudication.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
  @override
  ClaimResponseSubDetail1 clone() => throw UnimplementedError();
  @override
  ClaimResponseSubDetail1 copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseSubDetail1.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseSubDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseSubDetail1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseSubDetail1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseSubDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseSubDetail1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ClaimResponseTotal] /// Categorized monetary totals for the adjudication.
class ClaimResponseTotal extends BackboneElement {
  ClaimResponseTotal({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.category,
    required this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseTotal';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['category'] = category.toJson();
    json['amount'] = amount.toJson();
    return json;
  }

  factory ClaimResponseTotal.fromJson(Map<String, dynamic> json) {
    return ClaimResponseTotal(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
    );
  }
  @override
  ClaimResponseTotal clone() => throw UnimplementedError();
  @override
  ClaimResponseTotal copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    Money? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ClaimResponseTotal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseTotal.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseTotal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseTotal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseTotal cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseTotal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseTotal.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponsePayment';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['type'] = type.toJson();
    if (adjustment != null) {
      json['adjustment'] = adjustment!.toJson();
    }
    if (adjustmentReason != null) {
      json['adjustmentReason'] = adjustmentReason!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    json['amount'] = amount.toJson();
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    return json;
  }

  factory ClaimResponsePayment.fromJson(Map<String, dynamic> json) {
    return ClaimResponsePayment(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      adjustment: json['adjustment'] != null
          ? Money.fromJson(json['adjustment'] as Map<String, dynamic>)
          : null,
      adjustmentReason: json['adjustmentReason'] != null
          ? CodeableConcept.fromJson(
              json['adjustmentReason'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDate(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ClaimResponsePayment clone() => throw UnimplementedError();
  @override
  ClaimResponsePayment copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponsePayment.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponsePayment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponsePayment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponsePayment cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponsePayment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponsePayment.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseProcessNote';

  @Id()
  int dbId = 0;

  /// [number] /// A number to uniquely identify a note entry.
  final FhirPositiveInt? number;
  final Element? numberElement;

  /// [type] /// The business purpose of the note text.
  final NoteType? type;
  final Element? typeElement;

  /// [text] /// The explanation or description associated with the processing.
  final FhirString text;
  final Element? textElement;

  /// [language] /// A code to define the language used in the text of the note.
  final CodeableConcept? language;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (number?.value != null) {
      json['number'] = number!.value;
    }
    if (numberElement != null) {
      json['_number'] = numberElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    json['text'] = text.value;
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    return json;
  }

  factory ClaimResponseProcessNote.fromJson(Map<String, dynamic> json) {
    return ClaimResponseProcessNote(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      number: json['number'] != null ? FhirPositiveInt(json['number']) : null,
      numberElement: json['_number'] != null
          ? Element.fromJson(json['_number'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? NoteType.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      text: FhirString(json['text']),
      textElement: Element.fromJson(json['_text'] as Map<String, dynamic>),
      language: json['language'] != null
          ? CodeableConcept.fromJson(json['language'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ClaimResponseProcessNote clone() => throw UnimplementedError();
  @override
  ClaimResponseProcessNote copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? number,
    Element? numberElement,
    NoteType? type,
    Element? typeElement,
    FhirString? text,
    Element? textElement,
    CodeableConcept? language,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseProcessNote.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseProcessNote.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseProcessNote.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseProcessNote cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseProcessNote.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseProcessNote.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseInsurance';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['sequence'] = sequence.value;
    if (sequenceElement != null) {
      json['_sequence'] = sequenceElement!.toJson();
    }
    json['focal'] = focal.value;
    if (focalElement != null) {
      json['_focal'] = focalElement!.toJson();
    }
    json['coverage'] = coverage.toJson();
    if (businessArrangement?.value != null) {
      json['businessArrangement'] = businessArrangement!.value;
    }
    if (businessArrangementElement != null) {
      json['_businessArrangement'] = businessArrangementElement!.toJson();
    }
    if (claimResponse != null) {
      json['claimResponse'] = claimResponse!.toJson();
    }
    return json;
  }

  factory ClaimResponseInsurance.fromJson(Map<String, dynamic> json) {
    return ClaimResponseInsurance(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      sequence: FhirPositiveInt(json['sequence']),
      sequenceElement:
          Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      focal: FhirBoolean(json['focal']),
      focalElement: Element.fromJson(json['_focal'] as Map<String, dynamic>),
      coverage: Reference.fromJson(json['coverage'] as Map<String, dynamic>),
      businessArrangement: json['businessArrangement'] != null
          ? FhirString(json['businessArrangement'])
          : null,
      businessArrangementElement: json['_businessArrangement'] != null
          ? Element.fromJson(
              json['_businessArrangement'] as Map<String, dynamic>)
          : null,
      claimResponse: json['claimResponse'] != null
          ? Reference.fromJson(json['claimResponse'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ClaimResponseInsurance clone() => throw UnimplementedError();
  @override
  ClaimResponseInsurance copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseInsurance.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseInsurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseInsurance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseInsurance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseInsurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseInsurance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'ClaimResponseError';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (itemSequence?.value != null) {
      json['itemSequence'] = itemSequence!.value;
    }
    if (itemSequenceElement != null) {
      json['_itemSequence'] = itemSequenceElement!.toJson();
    }
    if (detailSequence?.value != null) {
      json['detailSequence'] = detailSequence!.value;
    }
    if (detailSequenceElement != null) {
      json['_detailSequence'] = detailSequenceElement!.toJson();
    }
    if (subDetailSequence?.value != null) {
      json['subDetailSequence'] = subDetailSequence!.value;
    }
    if (subDetailSequenceElement != null) {
      json['_subDetailSequence'] = subDetailSequenceElement!.toJson();
    }
    json['code'] = code.toJson();
    return json;
  }

  factory ClaimResponseError.fromJson(Map<String, dynamic> json) {
    return ClaimResponseError(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      itemSequence: json['itemSequence'] != null
          ? FhirPositiveInt(json['itemSequence'])
          : null,
      itemSequenceElement: json['_itemSequence'] != null
          ? Element.fromJson(json['_itemSequence'] as Map<String, dynamic>)
          : null,
      detailSequence: json['detailSequence'] != null
          ? FhirPositiveInt(json['detailSequence'])
          : null,
      detailSequenceElement: json['_detailSequence'] != null
          ? Element.fromJson(json['_detailSequence'] as Map<String, dynamic>)
          : null,
      subDetailSequence: json['subDetailSequence'] != null
          ? FhirPositiveInt(json['subDetailSequence'])
          : null,
      subDetailSequenceElement: json['_subDetailSequence'] != null
          ? Element.fromJson(json['_subDetailSequence'] as Map<String, dynamic>)
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
    );
  }
  @override
  ClaimResponseError clone() => throw UnimplementedError();
  @override
  ClaimResponseError copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ClaimResponseError.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponseError.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ClaimResponseError.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ClaimResponseError cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ClaimResponseError.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ClaimResponseError.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
