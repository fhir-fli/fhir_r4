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

  const ChargeItem({
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
    this.occurrenceX,
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
    this.productX,
    this.account,
    this.note,
    this.supportingInformation,
  }) : super(
          resourceType: R4ResourceType.ChargeItem,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return ChargeItem(
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
      definitionUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'definitionUri',
        FhirUri.fromJson,
      ),
      definitionCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'definitionCanonical',
        FhirCanonical.fromJson,
      ),
      status: JsonParser.parsePrimitive<ChargeItemStatus>(
        json,
        'status',
        ChargeItemStatus.fromJson,
      )!,
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      context: JsonParser.parseObject<Reference>(
        json,
        'context',
        Reference.fromJson,
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXChargeItem>(json, {
        'occurrenceDateTime': FhirDateTime.fromJson,
        'occurrencePeriod': Period.fromJson,
        'occurrenceTiming': Timing.fromJson,
      }),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<ChargeItemPerformer>(
            (v) => ChargeItemPerformer.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      performingOrganization: JsonParser.parseObject<Reference>(
        json,
        'performingOrganization',
        Reference.fromJson,
      ),
      requestingOrganization: JsonParser.parseObject<Reference>(
        json,
        'requestingOrganization',
        Reference.fromJson,
      ),
      costCenter: JsonParser.parseObject<Reference>(
        json,
        'costCenter',
        Reference.fromJson,
      ),
      quantity: JsonParser.parseObject<Quantity>(
        json,
        'quantity',
        Quantity.fromJson,
      ),
      bodysite: (json['bodysite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      factorOverride: JsonParser.parsePrimitive<FhirDecimal>(
        json,
        'factorOverride',
        FhirDecimal.fromJson,
      ),
      priceOverride: JsonParser.parseObject<Money>(
        json,
        'priceOverride',
        Money.fromJson,
      ),
      overrideReason: JsonParser.parsePrimitive<FhirString>(
        json,
        'overrideReason',
        FhirString.fromJson,
      ),
      enterer: JsonParser.parseObject<Reference>(
        json,
        'enterer',
        Reference.fromJson,
      ),
      enteredDate: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'enteredDate',
        FhirDateTime.fromJson,
      ),
      reason: (json['reason'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      service: (json['service'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      productX: JsonParser.parsePolymorphic<ProductXChargeItem>(json, {
        'productReference': Reference.fromJson,
        'productCodeableConcept': CodeableConcept.fromJson,
      }),
      account: (json['account'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      supportingInformation: (json['supportingInformation'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ChargeItem]
  /// from a [String] or [YamlMap] object
  factory ChargeItem.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItem.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItem.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItem '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItem]
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

  /// [occurrenceX]
  /// Date/time(s) or duration when the charged service was applied.
  final OccurrenceXChargeItem? occurrenceX;

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

  /// [productX]
  /// Identifies the device, food, drug or other product being charged either
  /// by type code or reference to an instance.
  final ProductXChargeItem? productX;

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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
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

    if (definitionUri != null && definitionUri!.isNotEmpty) {
      final fieldJson0 = definitionUri!.map((e) => e.toJson()).toList();
      json['definitionUri'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_definitionUri'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (definitionCanonical != null && definitionCanonical!.isNotEmpty) {
      final fieldJson1 = definitionCanonical!.map((e) => e.toJson()).toList();
      json['definitionCanonical'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_definitionCanonical'] =
            fieldJson1.map((e) => e['_value']).toList();
      }
    }

    addField('status', status);
    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((e) => e.toJson()).toList();
    }

    json['code'] = code.toJson();

    json['subject'] = subject.toJson();

    if (context != null) {
      json['context'] = context!.toJson();
    }

    if (occurrenceX != null) {
      addField('occurrence${occurrenceX!.fhirType.capitalize()}', occurrenceX);
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
      addField('factorOverride', factorOverride);
    }

    if (priceOverride != null) {
      json['priceOverride'] = priceOverride!.toJson();
    }

    if (overrideReason != null) {
      addField('overrideReason', overrideReason);
    }

    if (enterer != null) {
      json['enterer'] = enterer!.toJson();
    }

    if (enteredDate != null) {
      addField('enteredDate', enteredDate);
    }

    if (reason != null && reason!.isNotEmpty) {
      json['reason'] = reason!.map((e) => e.toJson()).toList();
    }

    if (service != null && service!.isNotEmpty) {
      json['service'] = service!.map((e) => e.toJson()).toList();
    }

    if (productX != null) {
      json['product${productX!.fhirType.capitalize()}'] = productX!.toJson();
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
    OccurrenceXChargeItem? occurrenceX,
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
    ProductXChargeItem? productX,
    List<Reference>? account,
    List<Annotation>? note,
    List<Reference>? supportingInformation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      occurrenceX: occurrenceX ?? this.occurrenceX,
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
      productX: productX ?? this.productX,
      account: account ?? this.account,
      note: note ?? this.note,
      supportingInformation:
          supportingInformation ?? this.supportingInformation,
    );
  }
}

/// [ChargeItemPerformer]
/// Indicates who or what performed or participated in the charged service.
class ChargeItemPerformer extends BackboneElement {
  /// Primary constructor for
  /// [ChargeItemPerformer]

  const ChargeItemPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ChargeItemPerformer.fromJson(
    Map<String, dynamic> json,
  ) {
    return ChargeItemPerformer(
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
      function_: JsonParser.parseObject<CodeableConcept>(
        json,
        'function',
        CodeableConcept.fromJson,
      ),
      actor: JsonParser.parseObject<Reference>(
        json,
        'actor',
        Reference.fromJson,
      )!,
    );
  }

  /// Deserialize [ChargeItemPerformer]
  /// from a [String] or [YamlMap] object
  factory ChargeItemPerformer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ChargeItemPerformer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ChargeItemPerformer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ChargeItemPerformer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ChargeItemPerformer]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
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
  }) {
    return ChargeItemPerformer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      function_: function_ ?? this.function_,
      actor: actor ?? this.actor,
    );
  }
}
