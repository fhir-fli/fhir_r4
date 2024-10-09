import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [PaymentNotice] /// This resource provides the status of the payment for goods and services
/// rendered, and the request and response resource references.
class PaymentNotice extends DomainResource {
  PaymentNotice({
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
    this.request,
    this.response,
    required this.created,
    this.createdElement,
    this.provider,
    required this.payment,
    this.paymentDate,
    this.paymentDateElement,
    this.payee,
    required this.recipient,
    required this.amount,
    this.paymentStatus,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.PaymentNotice);

  @override
  String get fhirType => 'PaymentNotice';

  @Id()
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this payment notice.
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  final FinancialResourceStatusCodes status;
  final Element? statusElement;

  /// [request] /// Reference of resource for which payment is being made.
  final Reference? request;

  /// [response] /// Reference of response to resource for which payment is being made.
  final Reference? response;

  /// [created] /// The date when this resource was created.
  final FhirDateTime created;
  final Element? createdElement;

  /// [provider] /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? provider;

  /// [payment] /// A reference to the payment which is the subject of this notice.
  final Reference payment;

  /// [paymentDate] /// The date when the above payment action occurred.
  final FhirDate? paymentDate;
  final Element? paymentDateElement;

  /// [payee] /// The party who will receive or has received payment that is the subject of
  /// this notification.
  final Reference? payee;

  /// [recipient] /// The party who is notified of the payment status.
  final Reference recipient;

  /// [amount] /// The amount sent to the payee.
  final Money amount;

  /// [paymentStatus] /// A code indicating whether payment has been sent or cleared.
  final CodeableConcept? paymentStatus;
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
    if (request != null) {
      json['request'] = request!.toJson();
    }
    if (response != null) {
      json['response'] = response!.toJson();
    }
    json['created'] = created.value;
    if (createdElement != null) {
      json['_created'] = createdElement!.toJson();
    }
    if (provider != null) {
      json['provider'] = provider!.toJson();
    }
    json['payment'] = payment.toJson();
    if (paymentDate?.value != null) {
      json['paymentDate'] = paymentDate!.value;
    }
    if (paymentDateElement != null) {
      json['_paymentDate'] = paymentDateElement!.toJson();
    }
    if (payee != null) {
      json['payee'] = payee!.toJson();
    }
    json['recipient'] = recipient.toJson();
    json['amount'] = amount.toJson();
    if (paymentStatus != null) {
      json['paymentStatus'] = paymentStatus!.toJson();
    }
    return json;
  }

  factory PaymentNotice.fromJson(Map<String, dynamic> json) {
    return PaymentNotice(
      id: json['id'] != null ? FhirString(json['id']) : null,
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
      request: json['request'] != null
          ? Reference.fromJson(json['request'] as Map<String, dynamic>)
          : null,
      response: json['response'] != null
          ? Reference.fromJson(json['response'] as Map<String, dynamic>)
          : null,
      created: FhirDateTime(json['created']),
      createdElement:
          Element.fromJson(json['_created'] as Map<String, dynamic>),
      provider: json['provider'] != null
          ? Reference.fromJson(json['provider'] as Map<String, dynamic>)
          : null,
      payment: Reference.fromJson(json['payment'] as Map<String, dynamic>),
      paymentDate:
          json['paymentDate'] != null ? FhirDate(json['paymentDate']) : null,
      paymentDateElement: json['_paymentDate'] != null
          ? Element.fromJson(json['_paymentDate'] as Map<String, dynamic>)
          : null,
      payee: json['payee'] != null
          ? Reference.fromJson(json['payee'] as Map<String, dynamic>)
          : null,
      recipient: Reference.fromJson(json['recipient'] as Map<String, dynamic>),
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
      paymentStatus: json['paymentStatus'] != null
          ? CodeableConcept.fromJson(
              json['paymentStatus'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  PaymentNotice clone() => throw UnimplementedError();
  @override
  PaymentNotice copyWith({
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
    Reference? request,
    Reference? response,
    FhirDateTime? created,
    Element? createdElement,
    Reference? provider,
    Reference? payment,
    FhirDate? paymentDate,
    Element? paymentDateElement,
    Reference? payee,
    Reference? recipient,
    Money? amount,
    CodeableConcept? paymentStatus,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return PaymentNotice(
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
      request: request ?? this.request,
      response: response ?? this.response,
      created: created ?? this.created,
      createdElement: createdElement ?? this.createdElement,
      provider: provider ?? this.provider,
      payment: payment ?? this.payment,
      paymentDate: paymentDate ?? this.paymentDate,
      paymentDateElement: paymentDateElement ?? this.paymentDateElement,
      payee: payee ?? this.payee,
      recipient: recipient ?? this.recipient,
      amount: amount ?? this.amount,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory PaymentNotice.fromYaml(dynamic yaml) => yaml is String
      ? PaymentNotice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? PaymentNotice.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'PaymentNotice cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory PaymentNotice.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PaymentNotice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
