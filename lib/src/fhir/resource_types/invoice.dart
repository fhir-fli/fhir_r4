import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'invoice.g.dart';

/// [Invoice] /// Invoice containing collected ChargeItems from an Account with calculated
/// individual and total price for Billing purpose.
@JsonSerializable()
class Invoice extends DomainResource {
  Invoice({
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
    this.cancelledReason,
    this.cancelledReasonElement,
    this.type,
    this.subject,
    this.recipient,
    this.date,
    this.dateElement,
    this.participant,
    this.issuer,
    this.account,
    this.lineItem,
    this.totalPriceComponent,
    this.totalNet,
    this.totalGross,
    this.paymentTerms,
    this.paymentTermsElement,
    this.note,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Invoice);
  @override
  String get fhirType => 'Invoice';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier of this Invoice, often used for reference in correspondence
  /// about this invoice or for tracking of payments.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The current state of the Invoice.
  @JsonKey(name: 'status')
  final InvoiceStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [cancelledReason] /// In case of Invoice cancellation a reason must be given (entered in error,
  /// superseded by corrected invoice etc.).
  @JsonKey(name: 'cancelledReason')
  final FhirString? cancelledReason;
  @JsonKey(name: '_cancelledReason')
  final Element? cancelledReasonElement;

  /// [type] /// Type of Invoice depending on domain, realm an usage (e.g.
  /// internal/external, dental, preliminary).
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [subject] /// The individual or set of individuals receiving the goods and services
  /// billed in this invoice.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [recipient] /// The individual or Organization responsible for balancing of this invoice.
  @JsonKey(name: 'recipient')
  final Reference? recipient;

  /// [date] /// Date/time(s) of when this Invoice was posted.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [participant] /// Indicates who or what performed or participated in the charged service.
  @JsonKey(name: 'participant')
  final List<InvoiceParticipant>? participant;

  /// [issuer] /// The organizationissuing the Invoice.
  @JsonKey(name: 'issuer')
  final Reference? issuer;

  /// [account] /// Account which is supposed to be balanced with this Invoice.
  @JsonKey(name: 'account')
  final Reference? account;

  /// [lineItem] /// Each line item represents one charge for goods and services rendered.
  /// Details such as date, code and amount are found in the referenced
  /// ChargeItem resource.
  @JsonKey(name: 'lineItem')
  final List<InvoiceLineItem>? lineItem;

  /// [totalPriceComponent] /// The total amount for the Invoice may be calculated as the sum of the line
  /// items with surcharges/deductions that apply in certain conditions. The
  /// priceComponent element can be used to offer transparency to the recipient
  /// of the Invoice of how the total price was calculated.
  @JsonKey(name: 'totalPriceComponent')
  final List<InvoicePriceComponent>? totalPriceComponent;

  /// [totalNet] /// Invoice total , taxes excluded.
  @JsonKey(name: 'totalNet')
  final Money? totalNet;

  /// [totalGross] /// Invoice total, tax included.
  @JsonKey(name: 'totalGross')
  final Money? totalGross;

  /// [paymentTerms] /// Payment details such as banking details, period of payment, deductibles,
  /// methods of payment.
  @JsonKey(name: 'paymentTerms')
  final FhirMarkdown? paymentTerms;
  @JsonKey(name: '_paymentTerms')
  final Element? paymentTermsElement;

  /// [note] /// Comments made about the invoice by the issuer, subject, or other
  /// participants.
  @JsonKey(name: 'note')
  final List<Annotation>? note;
  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);

  @override
  Invoice clone() => throw UnimplementedError();
  @override
  Invoice copyWith({
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
    InvoiceStatus? status,
    Element? statusElement,
    FhirString? cancelledReason,
    Element? cancelledReasonElement,
    CodeableConcept? type,
    Reference? subject,
    Reference? recipient,
    FhirDateTime? date,
    Element? dateElement,
    List<InvoiceParticipant>? participant,
    Reference? issuer,
    Reference? account,
    List<InvoiceLineItem>? lineItem,
    List<InvoicePriceComponent>? totalPriceComponent,
    Money? totalNet,
    Money? totalGross,
    FhirMarkdown? paymentTerms,
    Element? paymentTermsElement,
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
      cancelledReason: cancelledReason ?? this.cancelledReason,
      cancelledReasonElement:
          cancelledReasonElement ?? this.cancelledReasonElement,
      type: type ?? this.type,
      subject: subject ?? this.subject,
      recipient: recipient ?? this.recipient,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      participant: participant ?? this.participant,
      issuer: issuer ?? this.issuer,
      account: account ?? this.account,
      lineItem: lineItem ?? this.lineItem,
      totalPriceComponent: totalPriceComponent ?? this.totalPriceComponent,
      totalNet: totalNet ?? this.totalNet,
      totalGross: totalGross ?? this.totalGross,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      paymentTermsElement: paymentTermsElement ?? this.paymentTermsElement,
      note: note ?? this.note,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Invoice.fromYaml(dynamic yaml) => yaml is String
      ? Invoice.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Invoice.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Invoice cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Invoice.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Invoice.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InvoiceParticipant] /// Indicates who or what performed or participated in the charged service.
@JsonSerializable()
class InvoiceParticipant extends BackboneElement {
  InvoiceParticipant({
    super.id,
    super.extension_,
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
  @override
  String get fhirType => 'InvoiceParticipant';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// Describes the type of involvement (e.g. transcriptionist, creator etc.). If
  /// the invoice has been created automatically, the Participant may be a
  /// billing engine or another kind of device.
  @JsonKey(name: 'role')
  final CodeableConcept? role;

  /// [actor] /// The device, practitioner, etc. who performed or participated in the
  /// service.
  @JsonKey(name: 'actor')
  final Reference actor;
  factory InvoiceParticipant.fromJson(Map<String, dynamic> json) =>
      _$InvoiceParticipantFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceParticipantToJson(this);

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

  factory InvoiceParticipant.fromYaml(dynamic yaml) => yaml is String
      ? InvoiceParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InvoiceParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InvoiceParticipant cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InvoiceParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InvoiceParticipant.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InvoiceLineItem] /// Each line item represents one charge for goods and services rendered.
/// Details such as date, code and amount are found in the referenced
/// ChargeItem resource.
@JsonSerializable()
class InvoiceLineItem extends BackboneElement {
  InvoiceLineItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.sequence,
    this.sequenceElement,
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
  @override
  String get fhirType => 'InvoiceLineItem';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [sequence] /// Sequence in which the items appear on the invoice.
  @JsonKey(name: 'sequence')
  final FhirPositiveInt? sequence;
  @JsonKey(name: '_sequence')
  final Element? sequenceElement;

  /// [chargeItemReference] /// The ChargeItem contains information such as the billing code, date, amount
  /// etc. If no further details are required for the lineItem, inline billing
  /// codes can be added using the CodeableConcept data type instead of the
  /// Reference.
  @JsonKey(name: 'chargeItemReference')
  final Reference? chargeItemReference;

  /// [chargeItemCodeableConcept] /// The ChargeItem contains information such as the billing code, date, amount
  /// etc. If no further details are required for the lineItem, inline billing
  /// codes can be added using the CodeableConcept data type instead of the
  /// Reference.
  @JsonKey(name: 'chargeItemCodeableConcept')
  final CodeableConcept? chargeItemCodeableConcept;

  /// [priceComponent] /// The price for a ChargeItem may be calculated as a base price with
  /// surcharges/deductions that apply in certain conditions. A
  /// ChargeItemDefinition resource that defines the prices, factors and
  /// conditions that apply to a billing code is currently under development. The
  /// priceComponent element can be used to offer transparency to the recipient
  /// of the Invoice as to how the prices have been calculated.
  @JsonKey(name: 'priceComponent')
  final List<InvoicePriceComponent>? priceComponent;
  factory InvoiceLineItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceLineItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceLineItemToJson(this);

  @override
  InvoiceLineItem clone() => throw UnimplementedError();
  @override
  InvoiceLineItem copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirPositiveInt? sequence,
    Element? sequenceElement,
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
      sequenceElement: sequenceElement ?? this.sequenceElement,
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

  factory InvoiceLineItem.fromYaml(dynamic yaml) => yaml is String
      ? InvoiceLineItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InvoiceLineItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InvoiceLineItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InvoiceLineItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InvoiceLineItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [InvoicePriceComponent] /// The price for a ChargeItem may be calculated as a base price with
/// surcharges/deductions that apply in certain conditions. A
/// ChargeItemDefinition resource that defines the prices, factors and
/// conditions that apply to a billing code is currently under development. The
/// priceComponent element can be used to offer transparency to the recipient
/// of the Invoice as to how the prices have been calculated.
@JsonSerializable()
class InvoicePriceComponent extends BackboneElement {
  InvoicePriceComponent({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.code,
    this.factor,
    this.factorElement,
    this.amount,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'InvoicePriceComponent';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// This code identifies the type of the component.
  @JsonKey(name: 'type')
  final InvoicePriceComponentType type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [code] /// A code that identifies the component. Codes may be used to differentiate
  /// between kinds of taxes, surcharges, discounts etc.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [factor] /// The factor that has been applied on the base price for calculating this
  /// component.
  @JsonKey(name: 'factor')
  final FhirDecimal? factor;
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [amount] /// The amount calculated for this component.
  @JsonKey(name: 'amount')
  final Money? amount;
  factory InvoicePriceComponent.fromJson(Map<String, dynamic> json) =>
      _$InvoicePriceComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoicePriceComponentToJson(this);

  @override
  InvoicePriceComponent clone() => throw UnimplementedError();
  @override
  InvoicePriceComponent copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    InvoicePriceComponentType? type,
    Element? typeElement,
    CodeableConcept? code,
    FhirDecimal? factor,
    Element? factorElement,
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
      typeElement: typeElement ?? this.typeElement,
      code: code ?? this.code,
      factor: factor ?? this.factor,
      factorElement: factorElement ?? this.factorElement,
      amount: amount ?? this.amount,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory InvoicePriceComponent.fromYaml(dynamic yaml) => yaml is String
      ? InvoicePriceComponent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? InvoicePriceComponent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'InvoicePriceComponent cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory InvoicePriceComponent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return InvoicePriceComponent.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
