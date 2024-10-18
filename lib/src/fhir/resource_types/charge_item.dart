import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ChargeItem]
/// The resource ChargeItem describes the provision of healthcare provider
/// products for a certain patient, therefore referring not only to the
/// product, but containing in addition details of the provision, like
/// date, time, amounts and participating organizations and persons. Main
/// Usage of the ChargeItem is to enable the billing process and internal
/// cost allocation.
class ChargeItem extends DomainResource {
  /// Primary constructor for
  /// [ChargeItem]

  ChargeItem({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.definitionUri,
    this.definitionCanonical,
    required this.status,
    this.partOf,
    required this.code,
    required this.subject,
    this.context,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.priceOverride,
    this.overrideReason,
    this.enterer,
    this.enteredDate,
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
  }) : super(
          resourceType: R4ResourceType.ChargeItem,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return ChargeItem(
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
      definitionUri: parsePrimitiveList<FhirUri>(
        json['definitionUri'] as List<dynamic>?,
        json['_definitionUri'] as List<dynamic>?,
        fromJson: FhirUri.fromJson,
      ),
      definitionCanonical: parsePrimitiveList<FhirCanonical>(
        json['definitionCanonical'] as List<dynamic>?,
        json['_definitionCanonical'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      status: ChargeItemStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      context: json['context'] != null
          ? Reference.fromJson(
              json['context'] as Map<String, dynamic>,
            )
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['occurrenceDateTime'],
              '_value': json['_occurrenceDateTime'],
            })
          : null,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(
              json['occurrencePeriod'] as Map<String, dynamic>,
            )
          : null,
      occurrenceTiming: json['occurrenceTiming'] != null
          ? Timing.fromJson(
              json['occurrenceTiming'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<ChargeItemPerformer>(
                (v) => ChargeItemPerformer.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      performingOrganization: json['performingOrganization'] != null
          ? Reference.fromJson(
              json['performingOrganization'] as Map<String, dynamic>,
            )
          : null,
      requestingOrganization: json['requestingOrganization'] != null
          ? Reference.fromJson(
              json['requestingOrganization'] as Map<String, dynamic>,
            )
          : null,
      costCenter: json['costCenter'] != null
          ? Reference.fromJson(
              json['costCenter'] as Map<String, dynamic>,
            )
          : null,
      quantity: json['quantity'] != null
          ? Quantity.fromJson(
              json['quantity'] as Map<String, dynamic>,
            )
          : null,
      bodysite: json['bodysite'] != null
          ? (json['bodysite'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      factorOverride: json['factorOverride'] != null
          ? FhirDecimal.fromJson({
              'value': json['factorOverride'],
              '_value': json['_factorOverride'],
            })
          : null,
      priceOverride: json['priceOverride'] != null
          ? Money.fromJson(
              json['priceOverride'] as Map<String, dynamic>,
            )
          : null,
      overrideReason: json['overrideReason'] != null
          ? FhirString.fromJson({
              'value': json['overrideReason'],
              '_value': json['_overrideReason'],
            })
          : null,
      enterer: json['enterer'] != null
          ? Reference.fromJson(
              json['enterer'] as Map<String, dynamic>,
            )
          : null,
      enteredDate: json['enteredDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['enteredDate'],
              '_value': json['_enteredDate'],
            })
          : null,
      reason: json['reason'] != null
          ? (json['reason'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      service: json['service'] != null
          ? (json['service'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      productReference: json['productReference'] != null
          ? Reference.fromJson(
              json['productReference'] as Map<String, dynamic>,
            )
          : null,
      productCodeableConcept: json['productCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['productCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      account: json['account'] != null
          ? (json['account'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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
      supportingInformation: json['supportingInformation'] != null
          ? (json['supportingInformation'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ChargeItem]
  /// from a [String] or [YamlMap] object
  factory ChargeItem.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ChargeItem.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ChargeItem.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ChargeItem '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ChargeItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItem.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ChargeItem';

  /// [identifier]
  /// Identifiers assigned to this event performer or other systems.
  final List<Identifier>? identifier;

  /// [definitionUri]
  /// References the (external) source of pricing information, rules of
  /// application for the code this ChargeItem uses.
  final List<FhirUri>? definitionUri;

  /// [definitionCanonical]
  /// References the source of pricing information, rules of application for
  /// the code this ChargeItem uses.
  final List<FhirCanonical>? definitionCanonical;

  /// [status]
  /// The current state of the ChargeItem.
  final ChargeItemStatus status;

  /// [partOf]
  /// ChargeItems can be grouped to larger ChargeItems covering the whole
  /// set.
  final List<Reference>? partOf;

  /// [code]
  /// A code that identifies the charge, like a billing code.
  final CodeableConcept code;

  /// [subject]
  /// The individual or set of individuals the action is being or was
  /// performed on.
  final Reference subject;

  /// [context]
  /// The encounter or episode of care that establishes the context for this
  /// event.
  final Reference? context;

  /// [occurrenceDateTime]
  /// Date/time(s) or duration when the charged service was applied.
  final FhirDateTime? occurrenceDateTime;

  /// [occurrencePeriod]
  /// Date/time(s) or duration when the charged service was applied.
  final Period? occurrencePeriod;

  /// [occurrenceTiming]
  /// Date/time(s) or duration when the charged service was applied.
  final Timing? occurrenceTiming;

  /// [performer]
  /// Indicates who or what performed or participated in the charged service.
  final List<ChargeItemPerformer>? performer;

  /// [performingOrganization]
  /// The organization requesting the service.
  final Reference? performingOrganization;

  /// [requestingOrganization]
  /// The organization performing the service.
  final Reference? requestingOrganization;

  /// [costCenter]
  /// The financial cost center permits the tracking of charge attribution.
  final Reference? costCenter;

  /// [quantity]
  /// Quantity of which the charge item has been serviced.
  final Quantity? quantity;

  /// [bodysite]
  /// The anatomical location where the related service has been applied.
  final List<CodeableConcept>? bodysite;

  /// [factorOverride]
  /// Factor overriding the factor determined by the rules associated with
  /// the code.
  final FhirDecimal? factorOverride;

  /// [priceOverride]
  /// Total price of the charge overriding the list price associated with the
  /// code.
  final Money? priceOverride;

  /// [overrideReason]
  /// If the list price or the rule-based factor associated with the code is
  /// overridden, this attribute can capture a text to indicate the reason
  /// for this action.
  final FhirString? overrideReason;

  /// [enterer]
  /// The device, practitioner, etc. who entered the charge item.
  final Reference? enterer;

  /// [enteredDate]
  /// Date the charge item was entered.
  final FhirDateTime? enteredDate;

  /// [reason]
  /// Describes why the event occurred in coded or textual form.
  final List<CodeableConcept>? reason;

  /// [service]
  /// Indicated the rendered service that caused this charge.
  final List<Reference>? service;

  /// [productReference]
  /// Identifies the device, food, drug or other product being charged either
  /// by type code or reference to an instance.
  final Reference? productReference;

  /// [productCodeableConcept]
  /// Identifies the device, food, drug or other product being charged either
  /// by type code or reference to an instance.
  final CodeableConcept? productCodeableConcept;

  /// [account]
  /// Account into which this ChargeItems belongs.
  final List<Reference>? account;

  /// [note]
  /// Comments made about the event by the performer, subject or other
  /// participants.
  final List<Annotation>? note;

  /// [supportingInformation]
  /// Further information supporting this charge.
  final List<Reference>? supportingInformation;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
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

    if (definitionUri != null && definitionUri!.isNotEmpty) {
      final fieldJson8 = definitionUri!.map((e) => e.toJson()).toList();
      json['definitionUri'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_definitionUri'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (definitionCanonical != null && definitionCanonical!.isNotEmpty) {
      final fieldJson9 = definitionCanonical!.map((e) => e.toJson()).toList();
      json['definitionCanonical'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_definitionCanonical'] =
            fieldJson9.map((e) => e['_value']).toList();
      }
    }

    json['status'] = status.toJson();

    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((e) => e.toJson()).toList();
    }

    json['code'] = code.toJson();

    json['subject'] = subject.toJson();

    if (context != null) {
      json['context'] = context!.toJson();
    }

    if (occurrenceDateTime != null) {
      final fieldJson15 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson15['_value'];
      }
    }

    if (occurrencePeriod != null) {
      json['occurrencePeriod'] = occurrencePeriod!.toJson();
    }

    if (occurrenceTiming != null) {
      json['occurrenceTiming'] = occurrenceTiming!.toJson();
    }

    if (performer != null && performer!.isNotEmpty) {
      json['performer'] = performer!.map((e) => e.toJson()).toList();
    }

    if (performingOrganization != null) {
      json['performingOrganization'] = performingOrganization!.toJson();
    }

    if (requestingOrganization != null) {
      json['requestingOrganization'] = requestingOrganization!.toJson();
    }

    if (costCenter != null) {
      json['costCenter'] = costCenter!.toJson();
    }

    if (quantity != null) {
      json['quantity'] = quantity!.toJson();
    }

    if (bodysite != null && bodysite!.isNotEmpty) {
      json['bodysite'] = bodysite!.map((e) => e.toJson()).toList();
    }

    if (factorOverride != null) {
      final fieldJson24 = factorOverride!.toJson();
      json['factorOverride'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_factorOverride'] = fieldJson24['_value'];
      }
    }

    if (priceOverride != null) {
      json['priceOverride'] = priceOverride!.toJson();
    }

    if (overrideReason != null) {
      final fieldJson26 = overrideReason!.toJson();
      json['overrideReason'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_overrideReason'] = fieldJson26['_value'];
      }
    }

    if (enterer != null) {
      json['enterer'] = enterer!.toJson();
    }

    if (enteredDate != null) {
      final fieldJson28 = enteredDate!.toJson();
      json['enteredDate'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_enteredDate'] = fieldJson28['_value'];
      }
    }

    if (reason != null && reason!.isNotEmpty) {
      json['reason'] = reason!.map((e) => e.toJson()).toList();
    }

    if (service != null && service!.isNotEmpty) {
      json['service'] = service!.map((e) => e.toJson()).toList();
    }

    if (productReference != null) {
      json['productReference'] = productReference!.toJson();
    }

    if (productCodeableConcept != null) {
      json['productCodeableConcept'] = productCodeableConcept!.toJson();
    }

    if (account != null && account!.isNotEmpty) {
      json['account'] = account!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      json['supportingInformation'] =
          supportingInformation!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ChargeItem clone() => throw UnimplementedError();
  @override
  ChargeItem copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirUri>? definitionUri,
    List<FhirCanonical>? definitionCanonical,
    ChargeItemStatus? status,
    List<Reference>? partOf,
    CodeableConcept? code,
    Reference? subject,
    Reference? context,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    List<ChargeItemPerformer>? performer,
    Reference? performingOrganization,
    Reference? requestingOrganization,
    Reference? costCenter,
    Quantity? quantity,
    List<CodeableConcept>? bodysite,
    FhirDecimal? factorOverride,
    Money? priceOverride,
    FhirString? overrideReason,
    Reference? enterer,
    FhirDateTime? enteredDate,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      definitionUri: definitionUri ?? this.definitionUri,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      status: status ?? this.status,
      partOf: partOf ?? this.partOf,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      context: context ?? this.context,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
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
      priceOverride: priceOverride ?? this.priceOverride,
      overrideReason: overrideReason ?? this.overrideReason,
      enterer: enterer ?? this.enterer,
      enteredDate: enteredDate ?? this.enteredDate,
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
}

/// [ChargeItemPerformer]
/// Indicates who or what performed or participated in the charged service.
class ChargeItemPerformer extends BackboneElement {
  /// Primary constructor for
  /// [ChargeItemPerformer]

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

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ChargeItemPerformer(
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
      function_: json['function'] != null
          ? CodeableConcept.fromJson(
              json['function'] as Map<String, dynamic>,
            )
          : null,
      actor: Reference.fromJson(
        json['actor'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ChargeItemPerformer]
  /// from a [String] or [YamlMap] object
  factory ChargeItemPerformer.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? ChargeItemPerformer.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ChargeItemPerformer.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ChargeItemPerformer '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ChargeItemPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemPerformer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ChargeItemPerformer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ChargeItemPerformer';

  /// [function_]
  /// Describes the type of performance or participation(e.g. primary
  /// surgeon, anesthesiologiest, etc.).
  final CodeableConcept? function_;

  /// [actor]
  /// The device, practitioner, etc. who performed or participated in the
  /// service.
  final Reference actor;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (function_ != null) {
      json['function'] = function_!.toJson();
    }

    json['actor'] = actor.toJson();

    return json;
  }

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
}
