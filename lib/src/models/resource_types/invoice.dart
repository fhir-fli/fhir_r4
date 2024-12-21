import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Invoice]
/// Invoice containing collected ChargeItems from an Account with
/// calculated individual and total price for Billing purpose.
class Invoice extends DomainResource {
  /// Primary constructor for
  /// [Invoice]

  const Invoice({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
    this.totalPriceComponent,
    this.totalNet,
    this.totalGross,
    this.paymentTerms,
    this.note,
  }) : super(
          resourceType: R4ResourceType.Invoice,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Invoice.fromJson(
    Map<String, dynamic> json,
  ) {
    return Invoice(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      cancelledReason:
          (json['cancelledReason'] != null || json['_cancelledReason'] != null)
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
      date: (json['date'] != null || json['_date'] != null)
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
      totalPriceComponent: json['totalPriceComponent'] != null
          ? (json['totalPriceComponent'] as List<dynamic>)
              .map<InvoicePriceComponent>(
                (v) => InvoicePriceComponent.fromJson(
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
      paymentTerms:
          (json['paymentTerms'] != null || json['_paymentTerms'] != null)
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

  /// Deserialize [Invoice]
  /// from a [String] or [YamlMap] object
  factory Invoice.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Invoice.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Invoice.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Invoice '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Invoice]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Invoice.fromJsonString(
    String source,
  ) {
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

  /// [totalPriceComponent]
  /// The total amount for the Invoice may be calculated as the sum of the
  /// line items with surcharges/deductions that apply in certain conditions.
  /// The priceComponent element can be used to offer transparency to the
  /// recipient of the Invoice of how the total price was calculated.
  final List<InvoicePriceComponent>? totalPriceComponent;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    if (cancelledReason != null) {
      addField('cancelledReason', cancelledReason);
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (subject != null) {
      json['subject'] = subject!.toJson();
    }

    if (recipient != null) {
      json['recipient'] = recipient!.toJson();
    }

    if (date != null) {
      addField('date', date);
    }

    if (participant != null && participant!.isNotEmpty) {
      json['participant'] = participant!.map((e) => e.toJson()).toList();
    }

    if (issuer != null) {
      json['issuer'] = issuer!.toJson();
    }

    if (account != null) {
      json['account'] = account!.toJson();
    }

    if (lineItem != null && lineItem!.isNotEmpty) {
      json['lineItem'] = lineItem!.map((e) => e.toJson()).toList();
    }

    if (totalPriceComponent != null && totalPriceComponent!.isNotEmpty) {
      json['totalPriceComponent'] =
          totalPriceComponent!.map((e) => e.toJson()).toList();
    }

    if (totalNet != null) {
      json['totalNet'] = totalNet!.toJson();
    }

    if (totalGross != null) {
      json['totalGross'] = totalGross!.toJson();
    }

    if (paymentTerms != null) {
      addField('paymentTerms', paymentTerms);
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
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
    List<InvoicePriceComponent>? totalPriceComponent,
    Money? totalNet,
    Money? totalGross,
    FhirMarkdown? paymentTerms,
    List<Annotation>? note,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      totalPriceComponent: totalPriceComponent ?? this.totalPriceComponent,
      totalNet: totalNet ?? this.totalNet,
      totalGross: totalGross ?? this.totalGross,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      note: note ?? this.note,
    );
  }
}

/// [InvoiceParticipant]
/// Indicates who or what performed or participated in the charged service.
class InvoiceParticipant extends BackboneElement {
  /// Primary constructor for
  /// [InvoiceParticipant]

  const InvoiceParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    required this.actor,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceParticipant.fromJson(
    Map<String, dynamic> json,
  ) {
    return InvoiceParticipant(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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

  /// Deserialize [InvoiceParticipant]
  /// from a [String] or [YamlMap] object
  factory InvoiceParticipant.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoiceParticipant.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoiceParticipant.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoiceParticipant '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoiceParticipant]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceParticipant.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (role != null) {
      json['role'] = role!.toJson();
    }

    json['actor'] = actor.toJson();

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
  }) {
    return InvoiceParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      actor: actor ?? this.actor,
    );
  }
}

/// [InvoiceLineItem]
/// Each line item represents one charge for goods and services rendered.
/// Details such as date, code and amount are found in the referenced
/// ChargeItem resource.
class InvoiceLineItem extends BackboneElement {
  /// Primary constructor for
  /// [InvoiceLineItem]

  const InvoiceLineItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    required this.chargeItemX,
    this.priceComponent,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoiceLineItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return InvoiceLineItem(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      sequence: (json['sequence'] != null || json['_sequence'] != null)
          ? FhirPositiveInt.fromJson({
              'value': json['sequence'],
              '_value': json['_sequence'],
            })
          : null,
      chargeItemX: json['chargeItemReference'] != null
          ? Reference.fromJson(
              json['chargeItemReference'] as Map<String, dynamic>,
            )
          : CodeableConcept.fromJson(
              json['chargeItemCodeableConcept'] as Map<String, dynamic>,
            ),
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

  /// Deserialize [InvoiceLineItem]
  /// from a [String] or [YamlMap] object
  factory InvoiceLineItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoiceLineItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoiceLineItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoiceLineItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoiceLineItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoiceLineItem.fromJsonString(
    String source,
  ) {
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

  /// [sequence]
  /// Sequence in which the items appear on the invoice.
  final FhirPositiveInt? sequence;

  /// [chargeItemX]
  /// The ChargeItem contains information such as the billing code, date,
  /// amount etc. If no further details are required for the lineItem, inline
  /// billing codes can be added using the CodeableConcept data type instead
  /// of the Reference.
  final ChargeItemXInvoiceLineItem chargeItemX;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (sequence != null) {
      addField('sequence', sequence);
    }

    json['chargeItem${chargeItemX.fhirType.capitalize()}'] =
        chargeItemX.toJson();

    if (priceComponent != null && priceComponent!.isNotEmpty) {
      json['priceComponent'] = priceComponent!.map((e) => e.toJson()).toList();
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
    ChargeItemXInvoiceLineItem? chargeItemX,
    List<InvoicePriceComponent>? priceComponent,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return InvoiceLineItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      sequence: sequence ?? this.sequence,
      chargeItemX: chargeItemX ?? this.chargeItemX,
      priceComponent: priceComponent ?? this.priceComponent,
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
  /// Primary constructor for
  /// [InvoicePriceComponent]

  const InvoicePriceComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.code,
    this.factor,
    this.amount,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory InvoicePriceComponent.fromJson(
    Map<String, dynamic> json,
  ) {
    return InvoicePriceComponent(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
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
      factor: (json['factor'] != null || json['_factor'] != null)
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

  /// Deserialize [InvoicePriceComponent]
  /// from a [String] or [YamlMap] object
  factory InvoicePriceComponent.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return InvoicePriceComponent.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return InvoicePriceComponent.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'InvoicePriceComponent '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [InvoicePriceComponent]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory InvoicePriceComponent.fromJsonString(
    String source,
  ) {
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    addField('type', type);
    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (factor != null) {
      addField('factor', factor);
    }

    if (amount != null) {
      json['amount'] = amount!.toJson();
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
  }) {
    return InvoicePriceComponent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      code: code ?? this.code,
      factor: factor ?? this.factor,
      amount: amount ?? this.amount,
    );
  }
}
