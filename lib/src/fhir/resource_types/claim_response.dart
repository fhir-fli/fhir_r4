import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'claim_response.g.dart';

/// [ClaimResponse] /// This resource provides the adjudication details from the processing of a
/// Claim resource.
@JsonSerializable()
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
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.ClaimResponse);
  @override
  String get fhirType => 'ClaimResponse';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this claim response.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final FinancialResourceStatusCodes status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [type] /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [subType] /// A finer grained suite of claim type codes which may convey additional
  /// information such as Inpatient vs Outpatient and/or a specialty service.
  @JsonKey(name: 'subType')
  final CodeableConcept? subType;

  /// [use] /// A code to indicate whether the nature of the request is: to request
  /// adjudication of products and services previously rendered; or requesting
  /// authorization and adjudication for provision in the future; or requesting
  /// the non-binding adjudication of the listed products and services which
  /// could be provided in the future.
  @JsonKey(name: 'use')
  final Use use;
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [patient] /// The party to whom the professional services and/or products have been
  /// supplied or are being considered and for whom actual for facast
  /// reimbursement is sought.
  @JsonKey(name: 'patient')
  final Reference patient;

  /// [created] /// The date this resource was created.
  @JsonKey(name: 'created')
  final FhirDateTime created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [insurer] /// The party responsible for authorization, adjudication and reimbursement.
  @JsonKey(name: 'insurer')
  final Reference insurer;

  /// [requestor] /// The provider which is responsible for the claim, predetermination or
  /// preauthorization.
  @JsonKey(name: 'requestor')
  final Reference? requestor;

  /// [request] /// Original request resource reference.
  @JsonKey(name: 'request')
  final Reference? request;

  /// [outcome] /// The outcome of the claim, predetermination, or preauthorization processing.
  @JsonKey(name: 'outcome')
  final RemittanceOutcome outcome;
  @JsonKey(name: '_outcome')
  final Element? outcomeElement;

  /// [disposition] /// A human readable description of the status of the adjudication.
  @JsonKey(name: 'disposition')
  final FhirString? disposition;
  @JsonKey(name: '_disposition')
  final Element? dispositionElement;

  /// [preAuthRef] /// Reference from the Insurer which is used in later communications which
  /// refers to this adjudication.
  @JsonKey(name: 'preAuthRef')
  final FhirString? preAuthRef;
  @JsonKey(name: '_preAuthRef')
  final Element? preAuthRefElement;

  /// [preAuthPeriod] /// The time frame during which this authorization is effective.
  @JsonKey(name: 'preAuthPeriod')
  final Period? preAuthPeriod;

  /// [payeeType] /// Type of Party to be reimbursed: subscriber, provider, other.
  @JsonKey(name: 'payeeType')
  final CodeableConcept? payeeType;

  /// [item] /// A claim line. Either a simple (a product or service) or a 'group' of
  /// details which can also be a simple items or groups of sub-details.
  @JsonKey(name: 'item')
  final List<ClaimResponseItem>? item;

  /// [addItem] /// The first-tier service adjudications for payor added product or service
  /// lines.
  @JsonKey(name: 'addItem')
  final List<ClaimResponseAddItem>? addItem;

  /// [adjudication] /// The adjudication results which are presented at the header level rather
  /// than at the line-item or add-item levels.
  @JsonKey(name: 'adjudication')
  final List<ClaimResponseAdjudication>? adjudication;

  /// [total] /// Categorized monetary totals for the adjudication.
  @JsonKey(name: 'total')
  final List<ClaimResponseTotal>? total;

  /// [payment] /// Payment details for the adjudication of the claim.
  @JsonKey(name: 'payment')
  final ClaimResponsePayment? payment;

  /// [fundsReserve] /// A code, used only on a response to a preauthorization, to indicate whether
  /// the benefits payable have been reserved and for whom.
  @JsonKey(name: 'fundsReserve')
  final CodeableConcept? fundsReserve;

  /// [formCode] /// A code for the form to be used for printing the content.
  @JsonKey(name: 'formCode')
  final CodeableConcept? formCode;

  /// [form] /// The actual form, by reference or inclusion, for printing the content or an
  /// EOB.
  @JsonKey(name: 'form')
  final Attachment? form;

  /// [processNote] /// A note that describes or explains adjudication results in a human readable
  /// form.
  @JsonKey(name: 'processNote')
  final List<ClaimResponseProcessNote>? processNote;

  /// [communicationRequest] /// Request for additional supporting or authorizing information.
  @JsonKey(name: 'communicationRequest')
  final List<Reference>? communicationRequest;

  /// [insurance] /// Financial instruments for reimbursement for the health care products and
  /// services specified on the claim.
  @JsonKey(name: 'insurance')
  final List<ClaimResponseInsurance>? insurance;

  /// [error] /// Errors encountered during the processing of the adjudication.
  @JsonKey(name: 'error')
  final List<ClaimResponseError>? error;
  factory ClaimResponse.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemSequence] /// A number to uniquely reference the claim item entries.
  @JsonKey(name: 'itemSequence')
  final FhirPositiveInt itemSequence;
  @JsonKey(name: '_itemSequence')
  final Element? itemSequenceElement;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// If this item is a group then the values here are a summary of the
  /// adjudication of the detail items. If this item is a simple product or
  /// service then this is the result of the adjudication of this item.
  @JsonKey(name: 'adjudication')
  final List<ClaimResponseAdjudication> adjudication;

  /// [detail] /// A claim detail. Either a simple (a product or service) or a 'group' of
  /// sub-details which are simple items.
  @JsonKey(name: 'detail')
  final List<ClaimResponseDetail>? detail;
  factory ClaimResponseItem.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseItemToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// A code to indicate the information type of this adjudication record.
  /// Information types may include the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that: the patient is
  /// responsible for in aggregate or pertaining to this item; amounts paid by
  /// other coverages; and, the benefit payable for this item.
  @JsonKey(name: 'category')
  final CodeableConcept category;

  /// [reason] /// A code supporting the understanding of the adjudication result and
  /// explaining variance from expected amount.
  @JsonKey(name: 'reason')
  final CodeableConcept? reason;

  /// [amount] /// Monetary amount associated with the category.
  @JsonKey(name: 'amount')
  final Money? amount;

  /// [value] /// A non-monetary value associated with the category. Mutually exclusive to
  /// the amount element above.
  @JsonKey(name: 'value')
  final FhirDecimal? value;
  @JsonKey(name: '_value')
  final Element? valueElement;
  factory ClaimResponseAdjudication.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseAdjudicationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseAdjudicationToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [detailSequence] /// A number to uniquely reference the claim detail entry.
  @JsonKey(name: 'detailSequence')
  final FhirPositiveInt detailSequence;
  @JsonKey(name: '_detailSequence')
  final Element? detailSequenceElement;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  @JsonKey(name: 'adjudication')
  final List<ClaimResponseAdjudication> adjudication;

  /// [subDetail] /// A sub-detail adjudication of a simple product or service.
  @JsonKey(name: 'subDetail')
  final List<ClaimResponseSubDetail>? subDetail;
  factory ClaimResponseDetail.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseDetailFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseDetailToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [subDetailSequence] /// A number to uniquely reference the claim sub-detail entry.
  @JsonKey(name: 'subDetailSequence')
  final FhirPositiveInt subDetailSequence;
  @JsonKey(name: '_subDetailSequence')
  final Element? subDetailSequenceElement;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  @JsonKey(name: 'adjudication')
  final List<ClaimResponseAdjudication>? adjudication;
  factory ClaimResponseSubDetail.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseSubDetailFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseSubDetailToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemSequence] /// Claim items which this service line is intended to replace.
  @JsonKey(name: 'itemSequence')
  final List<FhirPositiveInt>? itemSequence;
  @JsonKey(name: '_itemSequence')
  final List<Element>? itemSequenceElement;

  /// [detailSequence] /// The sequence number of the details within the claim item which this line is
  /// intended to replace.
  @JsonKey(name: 'detailSequence')
  final List<FhirPositiveInt>? detailSequence;
  @JsonKey(name: '_detailSequence')
  final List<Element>? detailSequenceElement;

  /// [subdetailSequence] /// The sequence number of the sub-details within the details within the claim
  /// item which this line is intended to replace.
  @JsonKey(name: 'subdetailSequence')
  final List<FhirPositiveInt>? subdetailSequence;
  @JsonKey(name: '_subdetailSequence')
  final List<Element>? subdetailSequenceElement;

  /// [provider] /// The providers who are authorized for the services rendered to the patient.
  @JsonKey(name: 'provider')
  final List<Reference>? provider;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  @JsonKey(name: 'productOrService')
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  @JsonKey(name: 'modifier')
  final List<CodeableConcept>? modifier;

  /// [programCode] /// Identifies the program under which this may be recovered.
  @JsonKey(name: 'programCode')
  final List<CodeableConcept>? programCode;

  /// [servicedDate] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  @JsonKey(name: 'servicedDate')
  final FhirDate? servicedDate;
  @JsonKey(name: '_servicedDate')
  final Element? servicedDateElement;

  /// [servicedPeriod] /// The date or dates when the service or product was supplied, performed or
  /// completed.
  @JsonKey(name: 'servicedPeriod')
  final Period? servicedPeriod;

  /// [locationCodeableConcept] /// Where the product or service was provided.
  @JsonKey(name: 'locationCodeableConcept')
  final CodeableConcept? locationCodeableConcept;

  /// [locationAddress] /// Where the product or service was provided.
  @JsonKey(name: 'locationAddress')
  final Address? locationAddress;

  /// [locationReference] /// Where the product or service was provided.
  @JsonKey(name: 'locationReference')
  final Reference? locationReference;

  /// [quantity] /// The number of repetitions of a service or product.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  @JsonKey(name: 'net')
  final Money? net;

  /// [bodySite] /// Physical service site on the patient (limb, tooth, etc.).
  @JsonKey(name: 'bodySite')
  final CodeableConcept? bodySite;

  /// [subSite] /// A region or surface of the bodySite, e.g. limb region or tooth surface(s).
  @JsonKey(name: 'subSite')
  final List<CodeableConcept>? subSite;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  @JsonKey(name: 'adjudication')
  final List<ClaimResponseAdjudication> adjudication;

  /// [detail] /// The second-tier service adjudications for payor added services.
  @JsonKey(name: 'detail')
  final List<ClaimResponseDetail>? detail;
  factory ClaimResponseAddItem.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseAddItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseAddItemToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  @JsonKey(name: 'productOrService')
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  @JsonKey(name: 'modifier')
  final List<CodeableConcept>? modifier;

  /// [quantity] /// The number of repetitions of a service or product.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  @JsonKey(name: 'net')
  final Money? net;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  @JsonKey(name: 'adjudication')
  final List<ClaimResponseAdjudication> adjudication;

  /// [subDetail] /// The third-tier service adjudications for payor added services.
  @JsonKey(name: 'subDetail')
  final List<ClaimResponseSubDetail>? subDetail;
  factory ClaimResponseDetail1.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseDetail1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseDetail1ToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [productOrService] /// When the value is a group code then this item collects a set of related
  /// claim details, otherwise this contains the product, service, drug or other
  /// billing code for the item.
  @JsonKey(name: 'productOrService')
  final CodeableConcept productOrService;

  /// [modifier] /// Item typification or modifiers codes to convey additional context for the
  /// product or service.
  @JsonKey(name: 'modifier')
  final List<CodeableConcept>? modifier;

  /// [quantity] /// The number of repetitions of a service or product.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [unitPrice] /// If the item is not a group then this is the fee for the product or service,
  /// otherwise this is the total of the fees for the details of the group.
  @JsonKey(name: 'unitPrice')
  final Money? unitPrice;

  /// [factor] /// A real number that represents a multiplier used in determining the overall
  /// value of services delivered and/or goods received. The concept of a Factor
  /// allows for a discount or surcharge multiplier to be applied to a monetary
  /// amount.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [net] /// The quantity times the unit price for an additional service or product or
  /// charge.
  @JsonKey(name: 'net')
  final Money? net;

  /// [noteNumber] /// The numbers associated with notes below which apply to the adjudication of
  /// this item.
  @JsonKey(name: 'noteNumber')
  final List<FhirPositiveInt>? noteNumber;
  @JsonKey(name: '_noteNumber')
  final List<Element>? noteNumberElement;

  /// [adjudication] /// The adjudication results.
  @JsonKey(name: 'adjudication')
  final List<ClaimResponseAdjudication> adjudication;
  factory ClaimResponseSubDetail1.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseSubDetail1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseSubDetail1ToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// A code to indicate the information type of this adjudication record.
  /// Information types may include: the value submitted, maximum values or
  /// percentages allowed or payable under the plan, amounts that the patient is
  /// responsible for in aggregate or pertaining to this item, amounts paid by
  /// other coverages, and the benefit payable for this item.
  @JsonKey(name: 'category')
  final CodeableConcept category;

  /// [amount] /// Monetary total amount associated with the category.
  @JsonKey(name: 'amount')
  final Money amount;
  factory ClaimResponseTotal.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseTotalFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseTotalToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// Whether this represents partial or complete payment of the benefits
  /// payable.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [adjustment] /// Total amount of all adjustments to this payment included in this
  /// transaction which are not related to this claim's adjudication.
  @JsonKey(name: 'adjustment')
  final Money? adjustment;

  /// [adjustmentReason] /// Reason for the payment adjustment.
  @JsonKey(name: 'adjustmentReason')
  final CodeableConcept? adjustmentReason;

  /// [date] /// Estimated date the payment will be issued or the actual issue date of
  /// payment.
  @JsonKey(name: 'date')
  final FhirDate? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [amount] /// Benefits payable less any payment adjustment.
  @JsonKey(name: 'amount')
  final Money amount;

  /// [identifier] /// Issuer's unique identifier for the payment instrument.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;
  factory ClaimResponsePayment.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponsePaymentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponsePaymentToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [number] /// A number to uniquely identify a note entry.
  @JsonKey(name: 'number')
  final FhirPositiveInt? number;
  @JsonKey(name: '_number')
  final Element? numberElement;

  /// [type] /// The business purpose of the note text.
  @JsonKey(name: 'type')
  final NoteType? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [text] /// The explanation or description associated with the processing.
  @JsonKey(name: 'text')
  final FhirString text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [language] /// A code to define the language used in the text of the note.
  @JsonKey(name: 'language')
  final CodeableConcept? language;
  factory ClaimResponseProcessNote.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseProcessNoteFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseProcessNoteToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// A number to uniquely identify insurance entries and provide a sequence of
  /// coverages to convey coordination of benefit order.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [focal] /// A flag to indicate that this Coverage is to be used for adjudication of
  /// this claim when set to true.
  @JsonKey(name: 'focal')
  final FhirBoolean focal;
  @JsonKey(name: '_focal')
  final Element? focalElement;

  /// [coverage] /// Reference to the insurance card level information contained in the Coverage
  /// resource. The coverage issuing insurer will use these details to locate the
  /// patient's actual coverage within the insurer's information system.
  @JsonKey(name: 'coverage')
  final Reference coverage;

  /// [businessArrangement] /// A business agreement number established between the provider and the
  /// insurer for special business processing purposes.
  @JsonKey(name: 'businessArrangement')
  final FhirString? businessArrangement;
  @JsonKey(name: '_businessArrangement')
  final Element? businessArrangementElement;

  /// [claimResponse] /// The result of the adjudication of the line items for the Coverage specified
  /// in this insurance.
  @JsonKey(name: 'claimResponse')
  final Reference? claimResponse;
  factory ClaimResponseInsurance.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseInsuranceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseInsuranceToJson(this);

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
@JsonSerializable()
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
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemSequence] /// The sequence number of the line item submitted which contains the error.
  /// This value is omitted when the error occurs outside of the item structure.
  @JsonKey(name: 'itemSequence')
  final FhirPositiveInt? itemSequence;
  @JsonKey(name: '_itemSequence')
  final Element? itemSequenceElement;

  /// [detailSequence] /// The sequence number of the detail within the line item submitted which
  /// contains the error. This value is omitted when the error occurs outside of
  /// the item structure.
  @JsonKey(name: 'detailSequence')
  final FhirPositiveInt? detailSequence;
  @JsonKey(name: '_detailSequence')
  final Element? detailSequenceElement;

  /// [subDetailSequence] /// The sequence number of the sub-detail within the detail within the line
  /// item submitted which contains the error. This value is omitted when the
  /// error occurs outside of the item structure.
  @JsonKey(name: 'subDetailSequence')
  final FhirPositiveInt? subDetailSequence;
  @JsonKey(name: '_subDetailSequence')
  final Element? subDetailSequenceElement;

  /// [code] /// An error code, from a specified code system, which details why the claim
  /// could not be adjudicated.
  @JsonKey(name: 'code')
  final CodeableConcept code;
  factory ClaimResponseError.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponseErrorFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClaimResponseErrorToJson(this);

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
