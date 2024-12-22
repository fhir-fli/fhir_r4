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
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<InvoiceStatus>(
        json,
        'status',
        InvoiceStatus.fromJson,
      )!,
      cancelledReason: JsonParser.parsePrimitive<FhirString>(
        json,
        'cancelledReason',
        FhirString.fromJson,
      ),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      recipient: JsonParser.parseObject<Reference>(
        json,
        'recipient',
        Reference.fromJson,
      ),
      date: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'date',
        FhirDateTime.fromJson,
      ),
      participant: (json['participant'] as List<dynamic>?)
          ?.map<InvoiceParticipant>(
            (v) => InvoiceParticipant.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      issuer: JsonParser.parseObject<Reference>(
        json,
        'issuer',
        Reference.fromJson,
      ),
      account: JsonParser.parseObject<Reference>(
        json,
        'account',
        Reference.fromJson,
      ),
      lineItem: (json['lineItem'] as List<dynamic>?)
          ?.map<InvoiceLineItem>(
            (v) => InvoiceLineItem.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      totalPriceComponent: (json['totalPriceComponent'] as List<dynamic>?)
          ?.map<InvoicePriceComponent>(
            (v) => InvoicePriceComponent.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      totalNet: JsonParser.parseObject<Money>(
        json,
        'totalNet',
        Money.fromJson,
      ),
      totalGross: JsonParser.parseObject<Money>(
        json,
        'totalGross',
        Money.fromJson,
      ),
      paymentTerms: JsonParser.parsePrimitive<FhirMarkdown>(
        json,
        'paymentTerms',
        FhirMarkdown.fromJson,
      ),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('cancelledReason', cancelledReason);
    addField('type', type);
    addField('subject', subject);
    addField('recipient', recipient);
    addField('date', date);
    addField('participant', participant);
    addField('issuer', issuer);
    addField('account', account);
    addField('lineItem', lineItem);
    addField('totalPriceComponent', totalPriceComponent);
    addField('totalNet', totalNet);
    addField('totalGross', totalGross);
    addField('paymentTerms', paymentTerms);
    addField('note', note);
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
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('role', role);
    addField('actor', actor);
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
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      sequence: JsonParser.parsePrimitive<FhirPositiveInt>(
        json,
        'sequence',
        FhirPositiveInt.fromJson,
      ),
      chargeItemX:
          JsonParser.parsePolymorphic<ChargeItemXInvoiceLineItem>(json, {
        'chargeItemReference': Reference.fromJson,
        'chargeItemCodeableConcept': CodeableConcept.fromJson,
      })!,
      priceComponent: (json['priceComponent'] as List<dynamic>?)
          ?.map<InvoicePriceComponent>(
            (v) => InvoicePriceComponent.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('sequence', sequence);
    final chargeItemXFhirType = chargeItemX.fhirType;
    addField('chargeItem${chargeItemXFhirType.capitalize()}', chargeItemX);

    addField('priceComponent', priceComponent);
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
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      type: JsonParser.parsePrimitive<InvoicePriceComponentType>(
        json,
        'type',
        InvoicePriceComponentType.fromJson,
      )!,
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      factor: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factor',
        FhirDecimal.fromJson,
      ),
      amount: JsonParser.parseObject<Money>(
        json,
        'amount',
        Money.fromJson,
      ),
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('type', type);
    addField('code', code);
    addField('factor', factor);
    addField('amount', amount);
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
