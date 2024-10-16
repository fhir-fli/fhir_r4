import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Invoice]
/// Invoice containing collected ChargeItems from an Account with
/// calculated individual and total price for Billing purpose.
class Invoice extends DomainResource {
  /// Primary constructor for [Invoice]

  Invoice({
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
    this.cancelledReason,
    this.type,
    this.subject,
    this.recipient,
    this.date,
    this.participant,
    this.issuer,
    this.account,
    this.lineItem,
    this.totalNet,
    this.totalGross,
    this.paymentTerms,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Invoice,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Invoice.fromJson(Map<String, dynamic> json) {
    return Invoice(
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
      status: InvoiceStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      cancelledReason: json['cancelledReason'] != null
          ? FhirString.fromJson({
              'value': json['cancelledReason'],
              '_value': json['_cancelledReason'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      recipient: json['recipient'] != null
          ? Reference.fromJson(
              json['recipient'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      participant: json['participant'] != null
          ? (json['participant'] as List<dynamic>)
              .map<InvoiceParticipant>(
                (v) => InvoiceParticipant.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      issuer: json['issuer'] != null
          ? Reference.fromJson(
              json['issuer'] as Map<String, dynamic>,
            )
          : null,
      account: json['account'] != null
          ? Reference.fromJson(
              json['account'] as Map<String, dynamic>,
            )
          : null,
      lineItem: json['lineItem'] != null
          ? (json['lineItem'] as List<dynamic>)
              .map<InvoiceLineItem>(
                (v) => InvoiceLineItem.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      totalNet: json['totalNet'] != null
          ? Money.fromJson(
              json['totalNet'] as Map<String, dynamic>,
            )
          : null,
      totalGross: json['totalGross'] != null
          ? Money.fromJson(
              json['totalGross'] as Map<String, dynamic>,
            )
          : null,
      paymentTerms: json['paymentTerms'] != null
          ? FhirMarkdown.fromJson({
              'value': json['paymentTerms'],
              '_value': json['_paymentTerms'],
            })
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [Invoice] from a [String]
  /// or [YamlMap] object
  factory Invoice.fromYaml(dynamic yaml) => yaml is String
      ? Invoice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Invoice.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Invoice cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Invoice]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Invoice.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Invoice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Invoice';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Identifier of this Invoice, often used for reference in correspondence
  /// about this invoice or for tracking of payments.
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the Invoice.
  final InvoiceStatus status;

  /// [cancelledReason]
  /// In case of Invoice cancellation a reason must be given (entered in
  /// error, superseded by corrected invoice etc.).
  final FhirString? cancelledReason;

  /// [type]
  /// Type of Invoice depending on domain, realm an usage (e.g.
  /// internal/external, dental, preliminary).
  final CodeableConcept? type;

  /// [subject]
  /// The individual or set of individuals receiving the goods and services
  /// billed in this invoice.
  final Reference? subject;

  /// [recipient]
  /// The individual or Organization responsible for balancing of this
  /// invoice.
  final Reference? recipient;

  /// [date]
  /// Date/time(s) of when this Invoice was posted.
  final FhirDateTime? date;

  /// [participant]
  /// Indicates who or what performed or participated in the charged service.
  final List<InvoiceParticipant>? participant;

  /// [issuer]
  /// The organizationissuing the Invoice.
  final Reference? issuer;

  /// [account]
  /// Account which is supposed to be balanced with this Invoice.
  final Reference? account;

  /// [lineItem]
  /// Each line item represents one charge for goods and services rendered.
  /// Details such as date, code and amount are found in the referenced
  /// ChargeItem resource.
  final List<InvoiceLineItem>? lineItem;

  /// [totalNet]
  /// Invoice total , taxes excluded.
  final Money? totalNet;

  /// [totalGross]
  /// Invoice total, tax included.
  final Money? totalGross;

  /// [paymentTerms]
  /// Payment details such as banking details, period of payment,
  /// deductibles, methods of payment.
  final FhirMarkdown? paymentTerms;

  /// [note]
  /// Comments made about the invoice by the issuer, subject, or other
  /// participants.
  final List<Annotation>? note;
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

    if (cancelledReason != null) {
      final fieldJson10 = cancelledReason!.toJson();
      json['cancelledReason'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_cancelledReason'] = fieldJson10['_value'];
      }
    }

    if (type != null) {
      final fieldJson11 = type!.toJson();
      json['type'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_type'] = fieldJson11['_value'];
      }
    }

    if (subject != null) {
      final fieldJson12 = subject!.toJson();
      json['subject'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_subject'] = fieldJson12['_value'];
      }
    }

    if (recipient != null) {
      final fieldJson13 = recipient!.toJson();
      json['recipient'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_recipient'] = fieldJson13['_value'];
      }
    }

    if (date != null) {
      final fieldJson14 = date!.toJson();
      json['date'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_date'] = fieldJson14['_value'];
      }
    }

    if (participant != null && participant!.isNotEmpty) {
      final fieldJson15 = participant!.map((e) => e.toJson()).toList();
      json['participant'] = fieldJson15.map((e) => e['value']).toList();
      if (fieldJson15.any((e) => e['_value'] != null)) {
        json['_participant'] = fieldJson15.map((e) => e['_value']).toList();
      }
    }

    if (issuer != null) {
      final fieldJson16 = issuer!.toJson();
      json['issuer'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_issuer'] = fieldJson16['_value'];
      }
    }

    if (account != null) {
      final fieldJson17 = account!.toJson();
      json['account'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_account'] = fieldJson17['_value'];
      }
    }

    if (lineItem != null && lineItem!.isNotEmpty) {
      final fieldJson18 = lineItem!.map((e) => e.toJson()).toList();
      json['lineItem'] = fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_lineItem'] = fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (totalNet != null) {
      final fieldJson19 = totalNet!.toJson();
      json['totalNet'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_totalNet'] = fieldJson19['_value'];
      }
    }

    if (totalGross != null) {
      final fieldJson20 = totalGross!.toJson();
      json['totalGross'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_totalGross'] = fieldJson20['_value'];
      }
    }

    if (paymentTerms != null) {
      final fieldJson21 = paymentTerms!.toJson();
      json['paymentTerms'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_paymentTerms'] = fieldJson21['_value'];
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson22 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson22.map((e) => e['value']).toList();
      if (fieldJson22.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson22.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  Invoice clone() => throw UnimplementedError();
  @override
  Invoice copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    InvoiceStatus? status,
    FhirString? cancelledReason,
    CodeableConcept? type,
    Reference? subject,
    Reference? recipient,
    FhirDateTime? date,
    List<InvoiceParticipant>? participant,
    Reference? issuer,
    Reference? account,
    List<InvoiceLineItem>? lineItem,
    Money? totalNet,
    Money? totalGross,
    FhirMarkdown? paymentTerms,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Invoice(
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
      cancelledReason: cancelledReason ?? this.cancelledReason,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      recipient: recipient ?? this.recipient,
      date: date ?? this.date,
      participant: participant ?? this.participant,
      issuer: issuer ?? this.issuer,
      account: account ?? this.account,
      lineItem: lineItem ?? this.lineItem,
      totalNet: totalNet ?? this.totalNet,
      totalGross: totalGross ?? this.totalGross,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InvoiceParticipant]
/// Indicates who or what performed or participated in the charged service.
class InvoiceParticipant extends BackboneElement {
  /// Primary constructor for [InvoiceParticipant]

  InvoiceParticipant({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.role,
    required this.actor,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceParticipant.fromJson(Map<String, dynamic> json) {
    return InvoiceParticipant(
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
      role: json['role'] != null
          ? CodeableConcept.fromJson(
              json['role'] as Map<String, dynamic>,
            )
          : null,
      actor: Reference.fromJson(
        json['actor'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [InvoiceParticipant] from a [String]
  /// or [YamlMap] object
  factory InvoiceParticipant.fromYaml(dynamic yaml) => yaml is String
      ? InvoiceParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InvoiceParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('InvoiceParticipant cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InvoiceParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InvoiceParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InvoiceParticipant';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [role]
  /// Describes the type of involvement (e.g. transcriptionist, creator
  /// etc.). If the invoice has been created automatically, the Participant
  /// may be a billing engine or another kind of device.
  final CodeableConcept? role;

  /// [actor]
  /// The device, practitioner, etc. who performed or participated in the
  /// service.
  final Reference actor;
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

    if (role != null) {
      final fieldJson3 = role!.toJson();
      json['role'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_role'] = fieldJson3['_value'];
      }
    }

    final fieldJson4 = actor.toJson();
    json['actor'] = fieldJson4['value'];
    if (fieldJson4['_value'] != null) {
      json['_actor'] = fieldJson4['_value'];
    }

    return json;
  }

  @override
  InvoiceParticipant clone() => throw UnimplementedError();
  @override
  InvoiceParticipant copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Reference? actor,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InvoiceParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      actor: actor ?? this.actor,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InvoiceLineItem]
/// Each line item represents one charge for goods and services rendered.
/// Details such as date, code and amount are found in the referenced
/// ChargeItem resource.
class InvoiceLineItem extends BackboneElement {
  /// Primary constructor for [InvoiceLineItem]

  InvoiceLineItem({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.sequence,
    this.chargeItemReference,
    this.chargeItemCodeableConcept,
    this.priceComponent,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceLineItem.fromJson(Map<String, dynamic> json) {
    return InvoiceLineItem(
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
      sequence: json['sequence'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['sequence'],
              '_value': json['_sequence'],
            })
          : null,
      chargeItemReference: json['chargeItemReference'] != null
          ? Reference.fromJson(
              json['chargeItemReference'] as Map<String, dynamic>,
            )
          : null,
      chargeItemCodeableConcept: json['chargeItemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['chargeItemCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      priceComponent: json['priceComponent'] != null
          ? (json['priceComponent'] as List<dynamic>)
              .map<InvoicePriceComponent>(
                (v) => InvoicePriceComponent.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [InvoiceLineItem] from a [String]
  /// or [YamlMap] object
  factory InvoiceLineItem.fromYaml(dynamic yaml) => yaml is String
      ? InvoiceLineItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InvoiceLineItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('InvoiceLineItem cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InvoiceLineItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceLineItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InvoiceLineItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InvoiceLineItem';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [sequence]
  /// Sequence in which the items appear on the invoice.
  final FhirPositiveInt? sequence;

  /// [chargeItemReference]
  /// The ChargeItem contains information such as the billing code, date,
  /// amount etc. If no further details are required for the lineItem, inline
  /// billing codes can be added using the CodeableConcept data type instead
  /// of the Reference.
  final Reference? chargeItemReference;

  /// [chargeItemCodeableConcept]
  /// The ChargeItem contains information such as the billing code, date,
  /// amount etc. If no further details are required for the lineItem, inline
  /// billing codes can be added using the CodeableConcept data type instead
  /// of the Reference.
  final CodeableConcept? chargeItemCodeableConcept;

  /// [priceComponent]
  /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice as to how the prices have been calculated.
  final List<InvoicePriceComponent>? priceComponent;
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

    if (sequence != null) {
      final fieldJson3 = sequence!.toJson();
      json['sequence'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_sequence'] = fieldJson3['_value'];
      }
    }

    if (chargeItemReference != null) {
      final fieldJson4 = chargeItemReference!.toJson();
      json['chargeItemReference'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_chargeItemReference'] = fieldJson4['_value'];
      }
    }

    if (chargeItemCodeableConcept != null) {
      final fieldJson5 = chargeItemCodeableConcept!.toJson();
      json['chargeItemCodeableConcept'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_chargeItemCodeableConcept'] = fieldJson5['_value'];
      }
    }

    if (priceComponent != null && priceComponent!.isNotEmpty) {
      final fieldJson6 = priceComponent!.map((e) => e.toJson()).toList();
      json['priceComponent'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_priceComponent'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  InvoiceLineItem clone() => throw UnimplementedError();
  @override
  InvoiceLineItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Reference? chargeItemReference,
    CodeableConcept? chargeItemCodeableConcept,
    List<InvoicePriceComponent>? priceComponent,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InvoiceLineItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      chargeItemReference: chargeItemReference ?? this.chargeItemReference,
      chargeItemCodeableConcept:
          chargeItemCodeableConcept ?? this.chargeItemCodeableConcept,
      priceComponent: priceComponent ?? this.priceComponent,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [InvoicePriceComponent]
/// The price for a ChargeItem may be calculated as a base price with
/// surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development.
/// The priceComponent element can be used to offer transparency to the
/// recipient of the Invoice as to how the prices have been calculated.
class InvoicePriceComponent extends BackboneElement {
  /// Primary constructor for [InvoicePriceComponent]

  InvoicePriceComponent({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.type,
    this.code,
    this.factor,
    this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoicePriceComponent.fromJson(Map<String, dynamic> json) {
    return InvoicePriceComponent(
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
      type: InvoicePriceComponentType.fromJson({
        'value': json['type'],
        '_value': json['_type'],
      }),
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      factor: json['factor'] != null
          ? FhirDecimal.fromJson({
              'value': json['factor'],
              '_value': json['_factor'],
            })
          : null,
      amount: json['amount'] != null
          ? Money.fromJson(
              json['amount'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [InvoicePriceComponent] from a [String]
  /// or [YamlMap] object
  factory InvoicePriceComponent.fromYaml(dynamic yaml) => yaml is String
      ? InvoicePriceComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? InvoicePriceComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'InvoicePriceComponent cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [InvoicePriceComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoicePriceComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InvoicePriceComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'InvoicePriceComponent';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [type]
  /// This code identifies the type of the component.
  final InvoicePriceComponentType type;

  /// [code]
  /// A code that identifies the component. Codes may be used to
  /// differentiate between kinds of taxes, surcharges, discounts etc.
  final CodeableConcept? code;

  /// [factor]
  /// The factor that has been applied on the base price for calculating this
  /// component.
  final FhirDecimal? factor;

  /// [amount]
  /// The amount calculated for this component.
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

    final fieldJson3 = type.toJson();
    json['type'] = fieldJson3['value'];
    if (fieldJson3['_value'] != null) {
      json['_type'] = fieldJson3['_value'];
    }

    if (code != null) {
      final fieldJson4 = code!.toJson();
      json['code'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_code'] = fieldJson4['_value'];
      }
    }

    if (factor != null) {
      final fieldJson5 = factor!.toJson();
      json['factor'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_factor'] = fieldJson5['_value'];
      }
    }

    if (amount != null) {
      final fieldJson6 = amount!.toJson();
      json['amount'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_amount'] = fieldJson6['_value'];
      }
    }

    return json;
  }

  @override
  InvoicePriceComponent clone() => throw UnimplementedError();
  @override
  InvoicePriceComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    InvoicePriceComponentType? type,
    CodeableConcept? code,
    FhirDecimal? factor,
    Money? amount,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return InvoicePriceComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      code: code ?? this.code,
      factor: factor ?? this.factor,
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
