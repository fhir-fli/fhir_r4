import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [PaymentNotice]
/// This resource provides the status of the payment for goods and services
/// rendered, and the request and response resource references.
class PaymentNotice extends DomainResource {
  /// Primary constructor for [PaymentNotice]

  PaymentNotice({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.request,
    this.response,
    required this.created,
    this.provider,
    required this.payment,
    this.paymentDate,
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
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentNotice.fromJson(Map<String, dynamic> json) {
    return PaymentNotice(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: FinancialResourceStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      request: json['request'] != null
          ? Reference.fromJson(
              json['request'] as Map<String, dynamic>,
            )
          : null,
      response: json['response'] != null
          ? Reference.fromJson(
              json['response'] as Map<String, dynamic>,
            )
          : null,
      created: FhirDateTime.fromJson({
        'value': json['created'],
        '_value': json['_created'],
      }),
      provider: json['provider'] != null
          ? Reference.fromJson(
              json['provider'] as Map<String, dynamic>,
            )
          : null,
      payment: Reference.fromJson(
        json['payment'] as Map<String, dynamic>,
      ),
      paymentDate: json['paymentDate'] != null
          ? FhirDate.fromJson({
              'value': json['paymentDate'],
              '_value': json['_paymentDate'],
            })
          : null,
      payee: json['payee'] != null
          ? Reference.fromJson(
              json['payee'] as Map<String, dynamic>,
            )
          : null,
      recipient: Reference.fromJson(
        json['recipient'] as Map<String, dynamic>,
      ),
      amount: Money.fromJson(
        json['amount'] as Map<String, dynamic>,
      ),
      paymentStatus: json['paymentStatus'] != null
          ? CodeableConcept.fromJson(
              json['paymentStatus'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PaymentNotice] from a [String]
  /// or [YamlMap] object
  factory PaymentNotice.fromYaml(dynamic yaml) => yaml is String
      ? PaymentNotice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PaymentNotice.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('PaymentNotice cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PaymentNotice]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentNotice.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PaymentNotice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PaymentNotice';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// A unique identifier assigned to this payment notice.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

  /// [request]
  /// Reference of resource for which payment is being made.
  final Reference? request;

  /// [response]
  /// Reference of response to resource for which payment is being made.
  final Reference? response;

  /// [created]
  /// The date when this resource was created.
  final FhirDateTime created;

  /// [provider]
  /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? provider;

  /// [payment]
  /// A reference to the payment which is the subject of this notice.
  final Reference payment;

  /// [paymentDate]
  /// The date when the above payment action occurred.
  final FhirDate? paymentDate;

  /// [payee]
  /// The party who will receive or has received payment that is the subject
  /// of this notification.
  final Reference? payee;

  /// [recipient]
  /// The party who is notified of the payment status.
  final Reference recipient;

  /// [amount]
  /// The amount sent to the payee.
  final Money amount;

  /// [paymentStatus]
  /// A code indicating whether payment has been sent or cleared.
  final CodeableConcept? paymentStatus;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    if (request != null) {
      final fieldJson10 = request!.toJson();
      json['request'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_request'] = fieldJson10['_value'];
      }
    }

    if (response != null) {
      final fieldJson11 = response!.toJson();
      json['response'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_response'] = fieldJson11['_value'];
      }
    }

    final fieldJson12 = created.toJson();
    json['created'] = fieldJson12['value'];
    if (fieldJson12['_value'] != null) {
      json['_created'] = fieldJson12['_value'];
    }

    if (provider != null) {
      final fieldJson13 = provider!.toJson();
      json['provider'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_provider'] = fieldJson13['_value'];
      }
    }

    final fieldJson14 = payment.toJson();
    json['payment'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_payment'] = fieldJson14['_value'];
    }

    if (paymentDate != null) {
      final fieldJson15 = paymentDate!.toJson();
      json['paymentDate'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_paymentDate'] = fieldJson15['_value'];
      }
    }

    if (payee != null) {
      final fieldJson16 = payee!.toJson();
      json['payee'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_payee'] = fieldJson16['_value'];
      }
    }

    final fieldJson17 = recipient.toJson();
    json['recipient'] = fieldJson17['value'];
    if (fieldJson17['_value'] != null) {
      json['_recipient'] = fieldJson17['_value'];
    }

    final fieldJson18 = amount.toJson();
    json['amount'] = fieldJson18['value'];
    if (fieldJson18['_value'] != null) {
      json['_amount'] = fieldJson18['_value'];
    }

    if (paymentStatus != null) {
      final fieldJson19 = paymentStatus!.toJson();
      json['paymentStatus'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_paymentStatus'] = fieldJson19['_value'];
      }
    }

    return json;
  }

  @override
  PaymentNotice clone() => throw UnimplementedError();
  @override
  PaymentNotice copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FinancialResourceStatusCodes? status,
    Reference? request,
    Reference? response,
    FhirDateTime? created,
    Reference? provider,
    Reference? payment,
    FhirDate? paymentDate,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      request: request ?? this.request,
      response: response ?? this.response,
      created: created ?? this.created,
      provider: provider ?? this.provider,
      payment: payment ?? this.payment,
      paymentDate: paymentDate ?? this.paymentDate,
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
}
