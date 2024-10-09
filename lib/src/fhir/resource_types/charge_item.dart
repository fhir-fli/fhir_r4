import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'charge_item.g.dart';

/// [ChargeItem] /// The resource ChargeItem describes the provision of healthcare provider
/// products for a certain patient, therefore referring not only to the
/// product, but containing in addition details of the provision, like date,
/// time, amounts and participating organizations and persons. Main Usage of
/// the ChargeItem is to enable the billing process and internal cost
/// allocation.
@JsonSerializable()
class ChargeItem extends DomainResource {
  ChargeItem({
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
    this.definitionUri,
    this.definitionUriElement,
    this.definitionCanonical,
    this.definitionCanonicalElement,
    required this.status,
    this.statusElement,
    this.partOf,
    required this.code,
    required this.subject,
    this.context,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.factorOverrideElement,
    this.priceOverride,
    this.overrideReason,
    this.overrideReasonElement,
    this.enterer,
    this.enteredDate,
    this.enteredDateElement,
    this.reason,
    this.service,
    this.productReference,
    this.productCodeableConcept,
    this.account,
    this.note,
    this.supportingInformation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.ChargeItem);
  @override
  String get fhirType => 'ChargeItem';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this event performer or other systems.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [definitionUri] /// References the (external) source of pricing information, rules of
  /// application for the code this ChargeItem uses.
  @JsonKey(name: 'definitionUri')
  final List<FhirUri>? definitionUri;
  @JsonKey(name: '_definitionUri')
  final List<Element>? definitionUriElement;

  /// [definitionCanonical] /// References the source of pricing information, rules of application for the
  /// code this ChargeItem uses.
  @JsonKey(name: 'definitionCanonical')
  final List<FhirCanonical>? definitionCanonical;
  @JsonKey(name: '_definitionCanonical')
  final List<Element>? definitionCanonicalElement;

  /// [status] /// The current state of the ChargeItem.
  @JsonKey(name: 'status')
  final ChargeItemStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [partOf] /// ChargeItems can be grouped to larger ChargeItems covering the whole set.
  @JsonKey(name: 'partOf')
  final List<Reference>? partOf;

  /// [code] /// A code that identifies the charge, like a billing code.
  @JsonKey(name: 'code')
  final ChargeItemCode code;

  /// [subject] /// The individual or set of individuals the action is being or was performed
  /// on.
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [context] /// The encounter or episode of care that establishes the context for this
  /// event.
  @JsonKey(name: 'context')
  final Reference? context;

  /// [occurrenceDateTime] /// Date/time(s) or duration when the charged service was applied.
  @JsonKey(name: 'occurrenceDateTime')
  final FhirDateTime? occurrenceDateTime;
  @JsonKey(name: '_occurrenceDateTime')
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// Date/time(s) or duration when the charged service was applied.
  @JsonKey(name: 'occurrencePeriod')
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// Date/time(s) or duration when the charged service was applied.
  @JsonKey(name: 'occurrenceTiming')
  final Timing? occurrenceTiming;

  /// [performer] /// Indicates who or what performed or participated in the charged service.
  @JsonKey(name: 'performer')
  final List<ChargeItemPerformer>? performer;

  /// [performingOrganization] /// The organization requesting the service.
  @JsonKey(name: 'performingOrganization')
  final Reference? performingOrganization;

  /// [requestingOrganization] /// The organization performing the service.
  @JsonKey(name: 'requestingOrganization')
  final Reference? requestingOrganization;

  /// [costCenter] /// The financial cost center permits the tracking of charge attribution.
  @JsonKey(name: 'costCenter')
  final Reference? costCenter;

  /// [quantity] /// Quantity of which the charge item has been serviced.
  @JsonKey(name: 'quantity')
  final Quantity? quantity;

  /// [bodysite] /// The anatomical location where the related service has been applied.
  @JsonKey(name: 'bodysite')
  final List<CodeableConcept>? bodysite;

  /// [factorOverride] /// Factor overriding the factor determined by the rules associated with the
  /// code.
  @JsonKey(name: 'factorOverride')
  final FhirDecimal? factorOverride;
  @JsonKey(name: '_factorOverride')
  final Element? factorOverrideElement;

  /// [priceOverride] /// Total price of the charge overriding the list price associated with the
  /// code.
  @JsonKey(name: 'priceOverride')
  final Money? priceOverride;

  /// [overrideReason] /// If the list price or the rule-based factor associated with the code is
  /// overridden, this attribute can capture a text to indicate the reason for
  /// this action.
  @JsonKey(name: 'overrideReason')
  final FhirString? overrideReason;
  @JsonKey(name: '_overrideReason')
  final Element? overrideReasonElement;

  /// [enterer] /// The device, practitioner, etc. who entered the charge item.
  @JsonKey(name: 'enterer')
  final Reference? enterer;

  /// [enteredDate] /// Date the charge item was entered.
  @JsonKey(name: 'enteredDate')
  final FhirDateTime? enteredDate;
  @JsonKey(name: '_enteredDate')
  final Element? enteredDateElement;

  /// [reason] /// Describes why the event occurred in coded or textual form.
  @JsonKey(name: 'reason')
  final List<CodeableConcept>? reason;

  /// [service] /// Indicated the rendered service that caused this charge.
  @JsonKey(name: 'service')
  final List<Reference>? service;

  /// [productReference] /// Identifies the device, food, drug or other product being charged either by
  /// type code or reference to an instance.
  @JsonKey(name: 'productReference')
  final Reference? productReference;

  /// [productCodeableConcept] /// Identifies the device, food, drug or other product being charged either by
  /// type code or reference to an instance.
  @JsonKey(name: 'productCodeableConcept')
  final CodeableConcept? productCodeableConcept;

  /// [account] /// Account into which this ChargeItems belongs.
  @JsonKey(name: 'account')
  final List<Reference>? account;

  /// [note] /// Comments made about the event by the performer, subject or other
  /// participants.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [supportingInformation] /// Further information supporting this charge.
  @JsonKey(name: 'supportingInformation')
  final List<Reference>? supportingInformation;
  factory ChargeItem.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChargeItemToJson(this);

  @override
  ChargeItem clone() => throw UnimplementedError();
  @override
  ChargeItem copyWith({
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
    List<FhirUri>? definitionUri,
    List<Element>? definitionUriElement,
    List<FhirCanonical>? definitionCanonical,
    List<Element>? definitionCanonicalElement,
    ChargeItemStatus? status,
    Element? statusElement,
    List<Reference>? partOf,
    ChargeItemCode? code,
    Reference? subject,
    Reference? context,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    List<ChargeItemPerformer>? performer,
    Reference? performingOrganization,
    Reference? requestingOrganization,
    Reference? costCenter,
    Quantity? quantity,
    List<CodeableConcept>? bodysite,
    FhirDecimal? factorOverride,
    Element? factorOverrideElement,
    Money? priceOverride,
    FhirString? overrideReason,
    Element? overrideReasonElement,
    Reference? enterer,
    FhirDateTime? enteredDate,
    Element? enteredDateElement,
    List<CodeableConcept>? reason,
    List<Reference>? service,
    Reference? productReference,
    CodeableConcept? productCodeableConcept,
    List<Reference>? account,
    List<Annotation>? note,
    List<Reference>? supportingInformation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ChargeItem(
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
      definitionUri: definitionUri ?? this.definitionUri,
      definitionUriElement: definitionUriElement ?? this.definitionUriElement,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionCanonicalElement:
          definitionCanonicalElement ?? this.definitionCanonicalElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      partOf: partOf ?? this.partOf,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      performer: performer ?? this.performer,
      performingOrganization:
          performingOrganization ?? this.performingOrganization,
      requestingOrganization:
          requestingOrganization ?? this.requestingOrganization,
      costCenter: costCenter ?? this.costCenter,
      quantity: quantity ?? this.quantity,
      bodysite: bodysite ?? this.bodysite,
      factorOverride: factorOverride ?? this.factorOverride,
      factorOverrideElement:
          factorOverrideElement ?? this.factorOverrideElement,
      priceOverride: priceOverride ?? this.priceOverride,
      overrideReason: overrideReason ?? this.overrideReason,
      overrideReasonElement:
          overrideReasonElement ?? this.overrideReasonElement,
      enterer: enterer ?? this.enterer,
      enteredDate: enteredDate ?? this.enteredDate,
      enteredDateElement: enteredDateElement ?? this.enteredDateElement,
      reason: reason ?? this.reason,
      service: service ?? this.service,
      productReference: productReference ?? this.productReference,
      productCodeableConcept:
          productCodeableConcept ?? this.productCodeableConcept,
      account: account ?? this.account,
      note: note ?? this.note,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ChargeItem.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ChargeItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ChargeItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ChargeItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ChargeItemPerformer] /// Indicates who or what performed or participated in the charged service.
@JsonSerializable()
class ChargeItemPerformer extends BackboneElement {
  ChargeItemPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ChargeItemPerformer';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [function_] /// Describes the type of performance or participation(e.g. primary surgeon,
  /// anesthesiologiest, etc.).
  @JsonKey(name: 'function')
  final CodeableConcept? function_;

  /// [actor] /// The device, practitioner, etc. who performed or participated in the
  /// service.
  @JsonKey(name: 'actor')
  final Reference actor;
  factory ChargeItemPerformer.fromJson(Map<String, dynamic> json) =>
      _$ChargeItemPerformerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChargeItemPerformerToJson(this);

  @override
  ChargeItemPerformer clone() => throw UnimplementedError();
  @override
  ChargeItemPerformer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? function_,
    Reference? actor,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ChargeItemPerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ChargeItemPerformer.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItemPerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ChargeItemPerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ChargeItemPerformer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ChargeItemPerformer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
