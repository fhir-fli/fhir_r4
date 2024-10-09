import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [PaymentReconciliation] /// This resource provides the details including amount of a payment and
/// allocates the payment items being paid.
@JsonSerializable()
class PaymentReconciliation extends DomainResource {
  PaymentReconciliation({
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
    this.period,
    required this.created,
    this.createdElement,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.outcomeElement,
    this.disposition,
    this.dispositionElement,
    required this.paymentDate,
    this.paymentDateElement,
    required this.paymentAmount,
    this.paymentIdentifier,
    this.detail,
    this.formCode,
    this.processNote,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.PaymentReconciliation);
  @override
  String get fhirType => 'PaymentReconciliation';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this payment reconciliation.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final FinancialResourceStatusCodes status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [period] /// The period of time for which payments have been gathered into this bulk
  /// payment for settlement.
  @JsonKey(name: 'period')
  final Period? period;

  /// [created] /// The date when the resource was created.
  @JsonKey(name: 'created')
  final FhirDateTime created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [paymentIssuer] /// The party who generated the payment.
  @JsonKey(name: 'paymentIssuer')
  final Reference? paymentIssuer;

  /// [request] /// Original request resource reference.
  @JsonKey(name: 'request')
  final Reference? request;

  /// [requestor] /// The practitioner who is responsible for the services rendered to the
  /// patient.
  @JsonKey(name: 'requestor')
  final Reference? requestor;

  /// [outcome] /// The outcome of a request for a reconciliation.
  @JsonKey(name: 'outcome')
  final RemittanceOutcome? outcome;
  @JsonKey(name: '_outcome')
  final Element? outcomeElement;

  /// [disposition] /// A human readable description of the status of the request for the
  /// reconciliation.
  @JsonKey(name: 'disposition')
  final FhirString? disposition;
  @JsonKey(name: '_disposition')
  final Element? dispositionElement;

  /// [paymentDate] /// The date of payment as indicated on the financial instrument.
  @JsonKey(name: 'paymentDate')
  final FhirDate paymentDate;
  @JsonKey(name: '_paymentDate')
  final Element? paymentDateElement;

  /// [paymentAmount] /// Total payment amount as indicated on the financial instrument.
  @JsonKey(name: 'paymentAmount')
  final Money paymentAmount;

  /// [paymentIdentifier] /// Issuer's unique identifier for the payment instrument.
  @JsonKey(name: 'paymentIdentifier')
  final Identifier? paymentIdentifier;

  /// [detail] /// Distribution of the payment amount for a previously acknowledged payable.
  @JsonKey(name: 'detail')
  final List<PaymentReconciliationDetail>? detail;

  /// [formCode] /// A code for the form to be used for printing the content.
  @JsonKey(name: 'formCode')
  final CodeableConcept? formCode;

  /// [processNote] /// A note that describes or explains the processing in a human readable form.
  @JsonKey(name: 'processNote')
  final List<PaymentReconciliationProcessNote>? processNote;
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
    if (period != null) {
      json['period'] = period!.toJson();
    }
    json['created'] = created.value;
    if (createdElement != null) {
      json['_created'] = createdElement!.toJson();
    }
    if (paymentIssuer != null) {
      json['paymentIssuer'] = paymentIssuer!.toJson();
    }
    if (request != null) {
      json['request'] = request!.toJson();
    }
    if (requestor != null) {
      json['requestor'] = requestor!.toJson();
    }
    if (outcome != null) {
      json['outcome'] = outcome!.toJson();
    }
    if (disposition?.value != null) {
      json['disposition'] = disposition!.value;
    }
    if (dispositionElement != null) {
      json['_disposition'] = dispositionElement!.toJson();
    }
    json['paymentDate'] = paymentDate.value;
    if (paymentDateElement != null) {
      json['_paymentDate'] = paymentDateElement!.toJson();
    }
    json['paymentAmount'] = paymentAmount.toJson();
    if (paymentIdentifier != null) {
      json['paymentIdentifier'] = paymentIdentifier!.toJson();
    }
    if (detail != null && detail!.isNotEmpty) {
      json['detail'] = detail!
          .map<dynamic>((PaymentReconciliationDetail v) => v.toJson())
          .toList();
    }
    if (formCode != null) {
      json['formCode'] = formCode!.toJson();
    }
    if (processNote != null && processNote!.isNotEmpty) {
      json['processNote'] = processNote!
          .map<dynamic>((PaymentReconciliationProcessNote v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory PaymentReconciliation.fromJson(Map<String, dynamic> json) {
    return PaymentReconciliation(
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
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      created: FhirDateTime(json['created']),
      createdElement:
          Element.fromJson(json['_created'] as Map<String, dynamic>),
      paymentIssuer: json['paymentIssuer'] != null
          ? Reference.fromJson(json['paymentIssuer'] as Map<String, dynamic>)
          : null,
      request: json['request'] != null
          ? Reference.fromJson(json['request'] as Map<String, dynamic>)
          : null,
      requestor: json['requestor'] != null
          ? Reference.fromJson(json['requestor'] as Map<String, dynamic>)
          : null,
      outcome: json['outcome'] != null
          ? RemittanceOutcome.fromJson(json['outcome'] as Map<String, dynamic>)
          : null,
      disposition:
          json['disposition'] != null ? FhirString(json['disposition']) : null,
      dispositionElement: json['_disposition'] != null
          ? Element.fromJson(json['_disposition'] as Map<String, dynamic>)
          : null,
      paymentDate: FhirDate(json['paymentDate']),
      paymentDateElement:
          Element.fromJson(json['_paymentDate'] as Map<String, dynamic>),
      paymentAmount:
          Money.fromJson(json['paymentAmount'] as Map<String, dynamic>),
      paymentIdentifier: json['paymentIdentifier'] != null
          ? Identifier.fromJson(
              json['paymentIdentifier'] as Map<String, dynamic>)
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<PaymentReconciliationDetail>((dynamic v) =>
                  PaymentReconciliationDetail.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      formCode: json['formCode'] != null
          ? CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>)
          : null,
      processNote: json['processNote'] != null
          ? (json['processNote'] as List<dynamic>)
              .map<PaymentReconciliationProcessNote>((dynamic v) =>
                  PaymentReconciliationProcessNote.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  PaymentReconciliation clone() => throw UnimplementedError();
  @override
  PaymentReconciliation copyWith({
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
    Period? period,
    FhirDateTime? created,
    Element? createdElement,
    Reference? paymentIssuer,
    Reference? request,
    Reference? requestor,
    RemittanceOutcome? outcome,
    Element? outcomeElement,
    FhirString? disposition,
    Element? dispositionElement,
    FhirDate? paymentDate,
    Element? paymentDateElement,
    Money? paymentAmount,
    Identifier? paymentIdentifier,
    List<PaymentReconciliationDetail>? detail,
    CodeableConcept? formCode,
    List<PaymentReconciliationProcessNote>? processNote,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PaymentReconciliation(
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
      period: period ?? this.period,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      paymentIssuer: paymentIssuer ?? this.paymentIssuer,
      request: request ?? this.request,
      requestor: requestor ?? this.requestor,
      outcome: outcome ?? this.outcome,
      outcomeElement: outcomeElement ?? this.outcomeElement,
      disposition: disposition ?? this.disposition,
      dispositionElement: dispositionElement ?? this.dispositionElement,
      paymentDate: paymentDate ?? this.paymentDate,
      paymentDateElement: paymentDateElement ?? this.paymentDateElement,
      paymentAmount: paymentAmount ?? this.paymentAmount,
      paymentIdentifier: paymentIdentifier ?? this.paymentIdentifier,
      detail: detail ?? this.detail,
      formCode: formCode ?? this.formCode,
      processNote: processNote ?? this.processNote,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PaymentReconciliation.fromYaml(dynamic yaml) => yaml is String
      ? PaymentReconciliation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PaymentReconciliation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PaymentReconciliation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PaymentReconciliation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PaymentReconciliation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PaymentReconciliationDetail] /// Distribution of the payment amount for a previously acknowledged payable.
@JsonSerializable()
class PaymentReconciliationDetail extends BackboneElement {
  PaymentReconciliationDetail({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.predecessor,
    required this.type,
    this.request,
    this.submitter,
    this.response,
    this.date,
    this.dateElement,
    this.responsible,
    this.payee,
    this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'PaymentReconciliationDetail';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier for the current payment item for the referenced payable.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [predecessor] /// Unique identifier for the prior payment item for the referenced payable.
  @JsonKey(name: 'predecessor')
  final Identifier? predecessor;

  /// [type] /// Code to indicate the nature of the payment.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [request] /// A resource, such as a Claim, the evaluation of which could lead to payment.
  @JsonKey(name: 'request')
  final Reference? request;

  /// [submitter] /// The party which submitted the claim or financial transaction.
  @JsonKey(name: 'submitter')
  final Reference? submitter;

  /// [response] /// A resource, such as a ClaimResponse, which contains a commitment to
  /// payment.
  @JsonKey(name: 'response')
  final Reference? response;

  /// [date] /// The date from the response resource containing a commitment to pay.
  @JsonKey(name: 'date')
  final FhirDate? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [responsible] /// A reference to the individual who is responsible for inquiries regarding
  /// the response and its payment.
  @JsonKey(name: 'responsible')
  final Reference? responsible;

  /// [payee] /// The party which is receiving the payment.
  @JsonKey(name: 'payee')
  final Reference? payee;

  /// [amount] /// The monetary amount allocated from the total payment to the payable.
  @JsonKey(name: 'amount')
  final Money? amount;
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
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    if (predecessor != null) {
      json['predecessor'] = predecessor!.toJson();
    }
    json['type'] = type.toJson();
    if (request != null) {
      json['request'] = request!.toJson();
    }
    if (submitter != null) {
      json['submitter'] = submitter!.toJson();
    }
    if (response != null) {
      json['response'] = response!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (responsible != null) {
      json['responsible'] = responsible!.toJson();
    }
    if (payee != null) {
      json['payee'] = payee!.toJson();
    }
    if (amount != null) {
      json['amount'] = amount!.toJson();
    }
    return json;
  }

  factory PaymentReconciliationDetail.fromJson(Map<String, dynamic> json) {
    return PaymentReconciliationDetail(
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
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      predecessor: json['predecessor'] != null
          ? Identifier.fromJson(json['predecessor'] as Map<String, dynamic>)
          : null,
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      request: json['request'] != null
          ? Reference.fromJson(json['request'] as Map<String, dynamic>)
          : null,
      submitter: json['submitter'] != null
          ? Reference.fromJson(json['submitter'] as Map<String, dynamic>)
          : null,
      response: json['response'] != null
          ? Reference.fromJson(json['response'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDate(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      responsible: json['responsible'] != null
          ? Reference.fromJson(json['responsible'] as Map<String, dynamic>)
          : null,
      payee: json['payee'] != null
          ? Reference.fromJson(json['payee'] as Map<String, dynamic>)
          : null,
      amount: json['amount'] != null
          ? Money.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  PaymentReconciliationDetail clone() => throw UnimplementedError();
  @override
  PaymentReconciliationDetail copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    Identifier? predecessor,
    CodeableConcept? type,
    Reference? request,
    Reference? submitter,
    Reference? response,
    FhirDate? date,
    Element? dateElement,
    Reference? responsible,
    Reference? payee,
    Money? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PaymentReconciliationDetail(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      predecessor: predecessor ?? this.predecessor,
      type: type ?? this.type,
      request: request ?? this.request,
      submitter: submitter ?? this.submitter,
      response: response ?? this.response,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      responsible: responsible ?? this.responsible,
      payee: payee ?? this.payee,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PaymentReconciliationDetail.fromYaml(dynamic yaml) => yaml is String
      ? PaymentReconciliationDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PaymentReconciliationDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PaymentReconciliationDetail cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PaymentReconciliationDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PaymentReconciliationDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [PaymentReconciliationProcessNote] /// A note that describes or explains the processing in a human readable form.
@JsonSerializable()
class PaymentReconciliationProcessNote extends BackboneElement {
  PaymentReconciliationProcessNote({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'PaymentReconciliationProcessNote';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The business purpose of the note text.
  @JsonKey(name: 'type')
  final NoteType? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [text] /// The explanation or description associated with the processing.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;
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
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.value;
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    return json;
  }

  factory PaymentReconciliationProcessNote.fromJson(Map<String, dynamic> json) {
    return PaymentReconciliationProcessNote(
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
      type: json['type'] != null
          ? NoteType.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null ? FhirString(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  PaymentReconciliationProcessNote clone() => throw UnimplementedError();
  @override
  PaymentReconciliationProcessNote copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    NoteType? type,
    Element? typeElement,
    FhirString? text,
    Element? textElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PaymentReconciliationProcessNote(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PaymentReconciliationProcessNote.fromYaml(dynamic yaml) => yaml
          is String
      ? PaymentReconciliationProcessNote.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PaymentReconciliationProcessNote.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PaymentReconciliationProcessNote cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PaymentReconciliationProcessNote.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PaymentReconciliationProcessNote.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
