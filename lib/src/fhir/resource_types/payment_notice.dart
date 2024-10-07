import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'payment_notice.g.dart';

/// [PaymentNotice] /// This resource provides the status of the payment for goods and services
/// rendered, and the request and response resource references.
@JsonSerializable()
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
  }) : super(
            resourceType: R4ResourceType.PaymentNotice,
            fhirType: 'PaymentNotice');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A unique identifier assigned to this payment notice.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of the resource instance.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [request] /// Reference of resource for which payment is being made.
  @JsonKey(name: 'request')
  final Reference? request;

  /// [response] /// Reference of response to resource for which payment is being made.
  @JsonKey(name: 'response')
  final Reference? response;

  /// [created] /// The date when this resource was created.
  @JsonKey(name: 'created')
  final FhirDateTime created;
  @JsonKey(name: '_created')
  final Element? createdElement;

  /// [provider] /// The practitioner who is responsible for the services rendered to the
  /// patient.
  @JsonKey(name: 'provider')
  final Reference? provider;

  /// [payment] /// A reference to the payment which is the subject of this notice.
  @JsonKey(name: 'payment')
  final Reference payment;

  /// [paymentDate] /// The date when the above payment action occurred.
  @JsonKey(name: 'paymentDate')
  final FhirDate? paymentDate;
  @JsonKey(name: '_paymentDate')
  final Element? paymentDateElement;

  /// [payee] /// The party who will receive or has received payment that is the subject of
  /// this notification.
  @JsonKey(name: 'payee')
  final Reference? payee;

  /// [recipient] /// The party who is notified of the payment status.
  @JsonKey(name: 'recipient')
  final Reference recipient;

  /// [amount] /// The amount sent to the payee.
  @JsonKey(name: 'amount')
  final Money amount;

  /// [paymentStatus] /// A code indicating whether payment has been sent or cleared.
  @JsonKey(name: 'paymentStatus')
  final CodeableConcept? paymentStatus;
  factory PaymentNotice.fromJson(Map<String, dynamic> json) =>
      _$PaymentNoticeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentNoticeToJson(this);

  @override
  PaymentNotice clone() => throw UnimplementedError();
  @override
  PaymentNotice copyWith({
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
