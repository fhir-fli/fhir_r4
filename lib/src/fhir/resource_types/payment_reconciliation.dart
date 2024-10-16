import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [PaymentReconciliation]
/// This resource provides the details including amount of a payment and
/// allocates the payment items being paid.
class PaymentReconciliation extends DomainResource {
  /// Primary constructor for [PaymentReconciliation]

  PaymentReconciliation({
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
    this.period,
    required this.created,
    this.paymentIssuer,
    this.request,
    this.requestor,
    this.outcome,
    this.disposition,
    required this.paymentDate,
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
  }) : super(
          resourceType: R4ResourceType.PaymentReconciliation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliation.fromJson(Map<String, dynamic> json) {
    return PaymentReconciliation(
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
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      created: FhirDateTime.fromJson({
        'value': json['created'],
        '_value': json['_created'],
      }),
      paymentIssuer: json['paymentIssuer'] != null
          ? Reference.fromJson(
              json['paymentIssuer'] as Map<String, dynamic>,
            )
          : null,
      request: json['request'] != null
          ? Reference.fromJson(
              json['request'] as Map<String, dynamic>,
            )
          : null,
      requestor: json['requestor'] != null
          ? Reference.fromJson(
              json['requestor'] as Map<String, dynamic>,
            )
          : null,
      outcome: json['outcome'] != null
          ? RemittanceOutcome.fromJson({
              'value': json['outcome'],
              '_value': json['_outcome'],
            })
          : null,
      disposition: json['disposition'] != null
          ? FhirString.fromJson({
              'value': json['disposition'],
              '_value': json['_disposition'],
            })
          : null,
      paymentDate: FhirDate.fromJson({
        'value': json['paymentDate'],
        '_value': json['_paymentDate'],
      }),
      paymentAmount: Money.fromJson(
        json['paymentAmount'] as Map<String, dynamic>,
      ),
      paymentIdentifier: json['paymentIdentifier'] != null
          ? Identifier.fromJson(
              json['paymentIdentifier'] as Map<String, dynamic>,
            )
          : null,
      detail: json['detail'] != null
          ? (json['detail'] as List<dynamic>)
              .map<PaymentReconciliationDetail>(
                (v) => PaymentReconciliationDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      formCode: json['formCode'] != null
          ? CodeableConcept.fromJson(
              json['formCode'] as Map<String, dynamic>,
            )
          : null,
      processNote: json['processNote'] != null
          ? (json['processNote'] as List<dynamic>)
              .map<PaymentReconciliationProcessNote>(
                (v) => PaymentReconciliationProcessNote.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [PaymentReconciliation] from a [String]
  /// or [YamlMap] object
  factory PaymentReconciliation.fromYaml(dynamic yaml) => yaml is String
      ? PaymentReconciliation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PaymentReconciliation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PaymentReconciliation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PaymentReconciliation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PaymentReconciliation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliation';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// A unique identifier assigned to this payment reconciliation.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of the resource instance.
  final FinancialResourceStatusCodes status;

  /// [period]
  /// The period of time for which payments have been gathered into this bulk
  /// payment for settlement.
  final Period? period;

  /// [created]
  /// The date when the resource was created.
  final FhirDateTime created;

  /// [paymentIssuer]
  /// The party who generated the payment.
  final Reference? paymentIssuer;

  /// [request]
  /// Original request resource reference.
  final Reference? request;

  /// [requestor]
  /// The practitioner who is responsible for the services rendered to the
  /// patient.
  final Reference? requestor;

  /// [outcome]
  /// The outcome of a request for a reconciliation.
  final RemittanceOutcome? outcome;

  /// [disposition]
  /// A human readable description of the status of the request for the
  /// reconciliation.
  final FhirString? disposition;

  /// [paymentDate]
  /// The date of payment as indicated on the financial instrument.
  final FhirDate paymentDate;

  /// [paymentAmount]
  /// Total payment amount as indicated on the financial instrument.
  final Money paymentAmount;

  /// [paymentIdentifier]
  /// Issuer's unique identifier for the payment instrument.
  final Identifier? paymentIdentifier;

  /// [detail]
  /// Distribution of the payment amount for a previously acknowledged
  /// payable.
  final List<PaymentReconciliationDetail>? detail;

  /// [formCode]
  /// A code for the form to be used for printing the content.
  final CodeableConcept? formCode;

  /// [processNote]
  /// A note that describes or explains the processing in a human readable
  /// form.
  final List<PaymentReconciliationProcessNote>? processNote;
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

    if (period != null) {
      final fieldJson10 = period!.toJson();
      json['period'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_period'] = fieldJson10['_value'];
      }
    }

    final fieldJson11 = created.toJson();
    json['created'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_created'] = fieldJson11['_value'];
    }

    if (paymentIssuer != null) {
      final fieldJson12 = paymentIssuer!.toJson();
      json['paymentIssuer'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_paymentIssuer'] = fieldJson12['_value'];
      }
    }

    if (request != null) {
      final fieldJson13 = request!.toJson();
      json['request'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_request'] = fieldJson13['_value'];
      }
    }

    if (requestor != null) {
      final fieldJson14 = requestor!.toJson();
      json['requestor'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_requestor'] = fieldJson14['_value'];
      }
    }

    if (outcome != null) {
      final fieldJson15 = outcome!.toJson();
      json['outcome'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_outcome'] = fieldJson15['_value'];
      }
    }

    if (disposition != null) {
      final fieldJson16 = disposition!.toJson();
      json['disposition'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_disposition'] = fieldJson16['_value'];
      }
    }

    final fieldJson17 = paymentDate.toJson();
    json['paymentDate'] = fieldJson17['value'];
    if (fieldJson17['_value'] != null) {
      json['_paymentDate'] = fieldJson17['_value'];
    }

    final fieldJson18 = paymentAmount.toJson();
    json['paymentAmount'] = fieldJson18['value'];
    if (fieldJson18['_value'] != null) {
      json['_paymentAmount'] = fieldJson18['_value'];
    }

    if (paymentIdentifier != null) {
      final fieldJson19 = paymentIdentifier!.toJson();
      json['paymentIdentifier'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_paymentIdentifier'] = fieldJson19['_value'];
      }
    }

    if (detail != null && detail!.isNotEmpty) {
      final fieldJson20 = detail!.map((e) => e.toJson()).toList();
      json['detail'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_detail'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (formCode != null) {
      final fieldJson21 = formCode!.toJson();
      json['formCode'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_formCode'] = fieldJson21['_value'];
      }
    }

    if (processNote != null && processNote!.isNotEmpty) {
      final fieldJson22 = processNote!.map((e) => e.toJson()).toList();
      json['processNote'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_processNote'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  PaymentReconciliation clone() => throw UnimplementedError();
  @override
  PaymentReconciliation copyWith({
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
    Period? period,
    FhirDateTime? created,
    Reference? paymentIssuer,
    Reference? request,
    Reference? requestor,
    RemittanceOutcome? outcome,
    FhirString? disposition,
    FhirDate? paymentDate,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      period: period ?? this.period,
      created: created ?? this.created,
      paymentIssuer: paymentIssuer ?? this.paymentIssuer,
      request: request ?? this.request,
      requestor: requestor ?? this.requestor,
      outcome: outcome ?? this.outcome,
      disposition: disposition ?? this.disposition,
      paymentDate: paymentDate ?? this.paymentDate,
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
}

/// [PaymentReconciliationDetail]
/// Distribution of the payment amount for a previously acknowledged
/// payable.
class PaymentReconciliationDetail extends BackboneElement {
  /// Primary constructor for [PaymentReconciliationDetail]

  PaymentReconciliationDetail({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.predecessor,
    required this.type,
    this.request,
    this.submitter,
    this.response,
    this.date,
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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliationDetail.fromJson(Map<String, dynamic> json) {
    return PaymentReconciliationDetail(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      predecessor: json['predecessor'] != null
          ? Identifier.fromJson(
              json['predecessor'] as Map<String, dynamic>,
            )
          : null,
      type: CodeableConcept.fromJson(
        json['type'] as Map<String, dynamic>,
      ),
      request: json['request'] != null
          ? Reference.fromJson(
              json['request'] as Map<String, dynamic>,
            )
          : null,
      submitter: json['submitter'] != null
          ? Reference.fromJson(
              json['submitter'] as Map<String, dynamic>,
            )
          : null,
      response: json['response'] != null
          ? Reference.fromJson(
              json['response'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null
          ? FhirDate.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      responsible: json['responsible'] != null
          ? Reference.fromJson(
              json['responsible'] as Map<String, dynamic>,
            )
          : null,
      payee: json['payee'] != null
          ? Reference.fromJson(
              json['payee'] as Map<String, dynamic>,
            )
          : null,
      amount: json['amount'] != null
          ? Money.fromJson(
              json['amount'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [PaymentReconciliationDetail] from a [String]
  /// or [YamlMap] object
  factory PaymentReconciliationDetail.fromYaml(dynamic yaml) => yaml is String
      ? PaymentReconciliationDetail.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PaymentReconciliationDetail.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PaymentReconciliationDetail cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PaymentReconciliationDetail]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliationDetail.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PaymentReconciliationDetail.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliationDetail';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Unique identifier for the current payment item for the referenced
  /// payable.
  final Identifier? identifier;

  /// [predecessor]
  /// Unique identifier for the prior payment item for the referenced
  /// payable.
  final Identifier? predecessor;

  /// [type]
  /// Code to indicate the nature of the payment.
  final CodeableConcept type;

  /// [request]
  /// A resource, such as a Claim, the evaluation of which could lead to
  /// payment.
  final Reference? request;

  /// [submitter]
  /// The party which submitted the claim or financial transaction.
  final Reference? submitter;

  /// [response]
  /// A resource, such as a ClaimResponse, which contains a commitment to
  /// payment.
  final Reference? response;

  /// [date]
  /// The date from the response resource containing a commitment to pay.
  final FhirDate? date;

  /// [responsible]
  /// A reference to the individual who is responsible for inquiries
  /// regarding the response and its payment.
  final Reference? responsible;

  /// [payee]
  /// The party which is receiving the payment.
  final Reference? payee;

  /// [amount]
  /// The monetary amount allocated from the total payment to the payable.
  final Money? amount;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null) {
      final fieldJson3 = identifier!.toJson();
      json['identifier'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_identifier'] = fieldJson3['_value'];
      }
    }

    if (predecessor != null) {
      final fieldJson4 = predecessor!.toJson();
      json['predecessor'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_predecessor'] = fieldJson4['_value'];
      }
    }

    final fieldJson5 = type.toJson();
    json['type'] = fieldJson5['value'];
    if (fieldJson5['_value'] != null) {
      json['_type'] = fieldJson5['_value'];
    }

    if (request != null) {
      final fieldJson6 = request!.toJson();
      json['request'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_request'] = fieldJson6['_value'];
      }
    }

    if (submitter != null) {
      final fieldJson7 = submitter!.toJson();
      json['submitter'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_submitter'] = fieldJson7['_value'];
      }
    }

    if (response != null) {
      final fieldJson8 = response!.toJson();
      json['response'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_response'] = fieldJson8['_value'];
      }
    }

    if (date != null) {
      final fieldJson9 = date!.toJson();
      json['date'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_date'] = fieldJson9['_value'];
      }
    }

    if (responsible != null) {
      final fieldJson10 = responsible!.toJson();
      json['responsible'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_responsible'] = fieldJson10['_value'];
      }
    }

    if (payee != null) {
      final fieldJson11 = payee!.toJson();
      json['payee'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_payee'] = fieldJson11['_value'];
      }
    }

    if (amount != null) {
      final fieldJson12 = amount!.toJson();
      json['amount'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_amount'] = fieldJson12['_value'];
      }
    }

    return json;
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
}

/// [PaymentReconciliationProcessNote]
/// A note that describes or explains the processing in a human readable
/// form.
class PaymentReconciliationProcessNote extends BackboneElement {
  /// Primary constructor for [PaymentReconciliationProcessNote]

  PaymentReconciliationProcessNote({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.type,
    this.text,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory PaymentReconciliationProcessNote.fromJson(Map<String, dynamic> json) {
    return PaymentReconciliationProcessNote(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      type: json['type'] != null
          ? NoteType.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
    );
  }

  /// Deserialize [PaymentReconciliationProcessNote] from a [String]
  /// or [YamlMap] object
  factory PaymentReconciliationProcessNote.fromYaml(dynamic yaml) => yaml
          is String
      ? PaymentReconciliationProcessNote.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? PaymentReconciliationProcessNote.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'PaymentReconciliationProcessNote cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [PaymentReconciliationProcessNote]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory PaymentReconciliationProcessNote.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return PaymentReconciliationProcessNote.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'PaymentReconciliationProcessNote';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// The business purpose of the note text.
  final NoteType? type;

  /// [text]
  /// The explanation or description associated with the processing.
  final FhirString? text;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (type != null) {
      final fieldJson3 = type!.toJson();
      json['type'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_type'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  PaymentReconciliationProcessNote clone() => throw UnimplementedError();
  @override
  PaymentReconciliationProcessNote copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    NoteType? type,
    FhirString? text,
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
      text: text ?? this.text,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
