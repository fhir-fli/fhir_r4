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
  /// Primary constructor for [ChargeItem]

  ChargeItem({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
  factory ChargeItem.fromJson(Map<String, dynamic> json) {
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
          fromJson: FhirUri.fromJson),
      definitionCanonical: parsePrimitiveList<FhirCanonical>(
          json['definitionCanonical'] as List<dynamic>?,
          json['_definitionCanonical'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
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

  /// Deserialize [ChargeItem] from a [String]
  /// or [YamlMap] object
  factory ChargeItem.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ChargeItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ChargeItem cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ChargeItem]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItem.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (definitionUri != null && definitionUri!.isNotEmpty) {
      final fieldJson9 = definitionUri!.map((e) => e.toJson()).toList();
      json['definitionUri'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_definitionUri'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (definitionCanonical != null && definitionCanonical!.isNotEmpty) {
      final fieldJson10 = definitionCanonical!.map((e) => e.toJson()).toList();
      json['definitionCanonical'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_definitionCanonical'] =
            fieldJson10.map((e) => e['_value']).toList();
      }
    }

    final fieldJson11 = status.toJson();
    json['status'] = fieldJson11['value'];
    if (fieldJson11['_value'] != null) {
      json['_status'] = fieldJson11['_value'];
    }

    if (partOf != null && partOf!.isNotEmpty) {
      final fieldJson12 = partOf!.map((e) => e.toJson()).toList();
      json['partOf'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_partOf'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    final fieldJson13 = code.toJson();
    json['code'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_code'] = fieldJson13['_value'];
    }

    final fieldJson14 = subject.toJson();
    json['subject'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_subject'] = fieldJson14['_value'];
    }

    if (context != null) {
      final fieldJson15 = context!.toJson();
      json['context'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_context'] = fieldJson15['_value'];
      }
    }

    if (occurrenceDateTime != null) {
      final fieldJson16 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson16['_value'];
      }
    }

    if (occurrencePeriod != null) {
      final fieldJson17 = occurrencePeriod!.toJson();
      json['occurrencePeriod'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_occurrencePeriod'] = fieldJson17['_value'];
      }
    }

    if (occurrenceTiming != null) {
      final fieldJson18 = occurrenceTiming!.toJson();
      json['occurrenceTiming'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_occurrenceTiming'] = fieldJson18['_value'];
      }
    }

    if (performer != null && performer!.isNotEmpty) {
      final fieldJson19 = performer!.map((e) => e.toJson()).toList();
      json['performer'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_performer'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (performingOrganization != null) {
      final fieldJson20 = performingOrganization!.toJson();
      json['performingOrganization'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_performingOrganization'] = fieldJson20['_value'];
      }
    }

    if (requestingOrganization != null) {
      final fieldJson21 = requestingOrganization!.toJson();
      json['requestingOrganization'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_requestingOrganization'] = fieldJson21['_value'];
      }
    }

    if (costCenter != null) {
      final fieldJson22 = costCenter!.toJson();
      json['costCenter'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_costCenter'] = fieldJson22['_value'];
      }
    }

    if (quantity != null) {
      final fieldJson23 = quantity!.toJson();
      json['quantity'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_quantity'] = fieldJson23['_value'];
      }
    }

    if (bodysite != null && bodysite!.isNotEmpty) {
      final fieldJson24 = bodysite!.map((e) => e.toJson()).toList();
      json['bodysite'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_bodysite'] = fieldJson24.map((e) => e['_value']).toList();
      }
    }

    if (factorOverride != null) {
      final fieldJson25 = factorOverride!.toJson();
      json['factorOverride'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_factorOverride'] = fieldJson25['_value'];
      }
    }

    if (priceOverride != null) {
      final fieldJson26 = priceOverride!.toJson();
      json['priceOverride'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_priceOverride'] = fieldJson26['_value'];
      }
    }

    if (overrideReason != null) {
      final fieldJson27 = overrideReason!.toJson();
      json['overrideReason'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_overrideReason'] = fieldJson27['_value'];
      }
    }

    if (enterer != null) {
      final fieldJson28 = enterer!.toJson();
      json['enterer'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_enterer'] = fieldJson28['_value'];
      }
    }

    if (enteredDate != null) {
      final fieldJson29 = enteredDate!.toJson();
      json['enteredDate'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_enteredDate'] = fieldJson29['_value'];
      }
    }

    if (reason != null && reason!.isNotEmpty) {
      final fieldJson30 = reason!.map((e) => e.toJson()).toList();
      json['reason'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_reason'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    if (service != null && service!.isNotEmpty) {
      final fieldJson31 = service!.map((e) => e.toJson()).toList();
      json['service'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_service'] = fieldJson31.map((e) => e['_value']).toList();
      }
    }

    if (productReference != null) {
      final fieldJson32 = productReference!.toJson();
      json['productReference'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_productReference'] = fieldJson32['_value'];
      }
    }

    if (productCodeableConcept != null) {
      final fieldJson33 = productCodeableConcept!.toJson();
      json['productCodeableConcept'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_productCodeableConcept'] = fieldJson33['_value'];
      }
    }

    if (account != null && account!.isNotEmpty) {
      final fieldJson34 = account!.map((e) => e.toJson()).toList();
      json['account'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_account'] = fieldJson34.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson35 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (supportingInformation != null && supportingInformation!.isNotEmpty) {
      final fieldJson36 =
          supportingInformation!.map((e) => e.toJson()).toList();
      json['supportingInformation'] =
          fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_supportingInformation'] =
            fieldJson36.map((e) => e['_value']).toList();
      }
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
  /// Primary constructor for [ChargeItemPerformer]

  ChargeItemPerformer({
    super.id,
    this.extension_,
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
  factory ChargeItemPerformer.fromJson(Map<String, dynamic> json) {
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

  /// Deserialize [ChargeItemPerformer] from a [String]
  /// or [YamlMap] object
  factory ChargeItemPerformer.fromYaml(dynamic yaml) => yaml is String
      ? ChargeItemPerformer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ChargeItemPerformer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ChargeItemPerformer cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ChargeItemPerformer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ChargeItemPerformer.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

    if (function_ != null) {
      final fieldJson3 = function_!.toJson();
      json['function'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_function'] = fieldJson3['_value'];
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
