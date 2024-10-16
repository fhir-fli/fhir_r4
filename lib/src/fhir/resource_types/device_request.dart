import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DeviceRequest]
/// Represents a request for a patient to employ a medical device. The
/// device may be an implantable device, or an external assistive device,
/// such as a walker.
class DeviceRequest extends DomainResource {
  /// Primary constructor for [DeviceRequest]

  DeviceRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.priorRequest,
    this.groupIdentifier,
    this.status,
    required this.intent,
    this.priority,
    this.codeReference,
    this.codeCodeableConcept,
    this.parameter,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
    this.requester,
    this.performerType,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.note,
    this.relevantHistory,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.DeviceRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceRequest.fromJson(Map<String, dynamic> json) {
    return DeviceRequest(
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
      instantiatesCanonical: parsePrimitiveList<FhirCanonical>(
          json['instantiatesCanonical'] as List<dynamic>?,
          json['_instantiatesCanonical'] as List<dynamic>?,
          fromJson: FhirCanonical.fromJson),
      instantiatesUri: parsePrimitiveList<FhirUri>(
          json['instantiatesUri'] as List<dynamic>?,
          json['_instantiatesUri'] as List<dynamic>?,
          fromJson: FhirUri.fromJson),
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      priorRequest: json['priorRequest'] != null
          ? (json['priorRequest'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      groupIdentifier: json['groupIdentifier'] != null
          ? Identifier.fromJson(
              json['groupIdentifier'] as Map<String, dynamic>,
            )
          : null,
      status: json['status'] != null
          ? RequestStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      intent: RequestIntent.fromJson({
        'value': json['intent'],
        '_value': json['_intent'],
      }),
      priority: json['priority'] != null
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      codeReference: json['codeReference'] != null
          ? Reference.fromJson(
              json['codeReference'] as Map<String, dynamic>,
            )
          : null,
      codeCodeableConcept: json['codeCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['codeCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<DeviceRequestParameter>(
                (v) => DeviceRequestParameter.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      subject: Reference.fromJson(
        json['subject'] as Map<String, dynamic>,
      ),
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
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
      authoredOn: json['authoredOn'] != null
          ? FhirDateTime.fromJson({
              'value': json['authoredOn'],
              '_value': json['_authoredOn'],
            })
          : null,
      requester: json['requester'] != null
          ? Reference.fromJson(
              json['requester'] as Map<String, dynamic>,
            )
          : null,
      performerType: json['performerType'] != null
          ? CodeableConcept.fromJson(
              json['performerType'] as Map<String, dynamic>,
            )
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(
              json['performer'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      insurance: json['insurance'] != null
          ? (json['insurance'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
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
      relevantHistory: json['relevantHistory'] != null
          ? (json['relevantHistory'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [DeviceRequest] from a [String]
  /// or [YamlMap] object
  factory DeviceRequest.fromYaml(dynamic yaml) => yaml is String
      ? DeviceRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('DeviceRequest cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceRequest';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Identifiers assigned to this order by the orderer or by the receiver.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// DeviceRequest.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this DeviceRequest.
  final List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// Plan/proposal/order fulfilled by this request.
  final List<Reference>? basedOn;

  /// [priorRequest]
  /// The request takes the place of the referenced completed or terminated
  /// request(s).
  final List<Reference>? priorRequest;

  /// [groupIdentifier]
  /// Composite request this is part of.
  final Identifier? groupIdentifier;

  /// [status]
  /// The status of the request.
  final RequestStatus? status;

  /// [intent]
  /// Whether the request is a proposal, plan, an original order or a reflex
  /// order.
  final RequestIntent intent;

  /// [priority]
  /// Indicates how quickly the {{title}} should be addressed with respect to
  /// other requests.
  final RequestPriority? priority;

  /// [codeReference]
  /// The details of the device to be used.
  final Reference? codeReference;

  /// [codeCodeableConcept]
  /// The details of the device to be used.
  final CodeableConcept? codeCodeableConcept;

  /// [parameter]
  /// Specific parameters for the ordered item. For example, the prism value
  /// for lenses.
  final List<DeviceRequestParameter>? parameter;

  /// [subject]
  /// The patient who will use the device.
  final Reference subject;

  /// [encounter]
  /// An encounter that provides additional context in which this request is
  /// made.
  final Reference? encounter;

  /// [occurrenceDateTime]
  /// The timing schedule for the use of the device. The Schedule data type
  /// allows many different expressions, for example. "Every 8 hours"; "Three
  /// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  /// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  final FhirDateTime? occurrenceDateTime;

  /// [occurrencePeriod]
  /// The timing schedule for the use of the device. The Schedule data type
  /// allows many different expressions, for example. "Every 8 hours"; "Three
  /// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  /// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  final Period? occurrencePeriod;

  /// [occurrenceTiming]
  /// The timing schedule for the use of the device. The Schedule data type
  /// allows many different expressions, for example. "Every 8 hours"; "Three
  /// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  /// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  final Timing? occurrenceTiming;

  /// [authoredOn]
  /// When the request transitioned to being actionable.
  final FhirDateTime? authoredOn;

  /// [requester]
  /// The individual who initiated the request and has responsibility for its
  /// activation.
  final Reference? requester;

  /// [performerType]
  /// Desired type of performer for doing the diagnostic testing.
  final CodeableConcept? performerType;

  /// [performer]
  /// The desired performer for doing the diagnostic testing.
  final Reference? performer;

  /// [reasonCode]
  /// Reason or justification for the use of this device.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Reason or justification for the use of this device.
  final List<Reference>? reasonReference;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be required for delivering the requested
  /// service.
  final List<Reference>? insurance;

  /// [supportingInfo]
  /// Additional clinical information about the patient that may influence
  /// the request fulfilment. For example, this may include where on the
  /// subject's body the device will be used (i.e. the target site).
  final List<Reference>? supportingInfo;

  /// [note]
  /// Details about this request that were not represented at all or
  /// sufficiently in one of the attributes provided in a class. These may
  /// include for example a comment, an instruction, or a note associated
  /// with the statement.
  final List<Annotation>? note;

  /// [relevantHistory]
  /// Key events in the history of the request.
  final List<Reference>? relevantHistory;
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

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson9 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson10 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      final fieldJson11 = basedOn!.map((e) => e.toJson()).toList();
      json['basedOn'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_basedOn'] = fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (priorRequest != null && priorRequest!.isNotEmpty) {
      final fieldJson12 = priorRequest!.map((e) => e.toJson()).toList();
      json['priorRequest'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_priorRequest'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (groupIdentifier != null) {
      final fieldJson13 = groupIdentifier!.toJson();
      json['groupIdentifier'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_groupIdentifier'] = fieldJson13['_value'];
      }
    }

    if (status != null) {
      final fieldJson14 = status!.toJson();
      json['status'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_status'] = fieldJson14['_value'];
      }
    }

    final fieldJson15 = intent.toJson();
    json['intent'] = fieldJson15['value'];
    if (fieldJson15['_value'] != null) {
      json['_intent'] = fieldJson15['_value'];
    }

    if (priority != null) {
      final fieldJson16 = priority!.toJson();
      json['priority'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_priority'] = fieldJson16['_value'];
      }
    }

    if (codeReference != null) {
      final fieldJson17 = codeReference!.toJson();
      json['codeReference'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_codeReference'] = fieldJson17['_value'];
      }
    }

    if (codeCodeableConcept != null) {
      final fieldJson18 = codeCodeableConcept!.toJson();
      json['codeCodeableConcept'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_codeCodeableConcept'] = fieldJson18['_value'];
      }
    }

    if (parameter != null && parameter!.isNotEmpty) {
      final fieldJson19 = parameter!.map((e) => e.toJson()).toList();
      json['parameter'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_parameter'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    final fieldJson20 = subject.toJson();
    json['subject'] = fieldJson20['value'];
    if (fieldJson20['_value'] != null) {
      json['_subject'] = fieldJson20['_value'];
    }

    if (encounter != null) {
      final fieldJson21 = encounter!.toJson();
      json['encounter'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_encounter'] = fieldJson21['_value'];
      }
    }

    if (occurrenceDateTime != null) {
      final fieldJson22 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson22['_value'];
      }
    }

    if (occurrencePeriod != null) {
      final fieldJson23 = occurrencePeriod!.toJson();
      json['occurrencePeriod'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_occurrencePeriod'] = fieldJson23['_value'];
      }
    }

    if (occurrenceTiming != null) {
      final fieldJson24 = occurrenceTiming!.toJson();
      json['occurrenceTiming'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_occurrenceTiming'] = fieldJson24['_value'];
      }
    }

    if (authoredOn != null) {
      final fieldJson25 = authoredOn!.toJson();
      json['authoredOn'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_authoredOn'] = fieldJson25['_value'];
      }
    }

    if (requester != null) {
      final fieldJson26 = requester!.toJson();
      json['requester'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_requester'] = fieldJson26['_value'];
      }
    }

    if (performerType != null) {
      final fieldJson27 = performerType!.toJson();
      json['performerType'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_performerType'] = fieldJson27['_value'];
      }
    }

    if (performer != null) {
      final fieldJson28 = performer!.toJson();
      json['performer'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_performer'] = fieldJson28['_value'];
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson29 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson29.map((e) => e['value']).toList();
      if (fieldJson29.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson29.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson30 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson30.map((e) => e['value']).toList();
      if (fieldJson30.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson30.map((e) => e['_value']).toList();
      }
    }

    if (insurance != null && insurance!.isNotEmpty) {
      final fieldJson31 = insurance!.map((e) => e.toJson()).toList();
      json['insurance'] = fieldJson31.map((e) => e['value']).toList();
      if (fieldJson31.any((e) => e['_value'] != null)) {
        json['_insurance'] = fieldJson31.map((e) => e['_value']).toList();
      }
    }

    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      final fieldJson32 = supportingInfo!.map((e) => e.toJson()).toList();
      json['supportingInfo'] = fieldJson32.map((e) => e['value']).toList();
      if (fieldJson32.any((e) => e['_value'] != null)) {
        json['_supportingInfo'] = fieldJson32.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson33 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson33.map((e) => e['value']).toList();
      if (fieldJson33.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson33.map((e) => e['_value']).toList();
      }
    }

    if (relevantHistory != null && relevantHistory!.isNotEmpty) {
      final fieldJson34 = relevantHistory!.map((e) => e.toJson()).toList();
      json['relevantHistory'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_relevantHistory'] = fieldJson34.map((e) => e['_value']).toList();
      }
    }

    return json;
  }

  @override
  DeviceRequest clone() => throw UnimplementedError();
  @override
  DeviceRequest copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<FhirCanonical>? instantiatesCanonical,
    List<FhirUri>? instantiatesUri,
    List<Reference>? basedOn,
    List<Reference>? priorRequest,
    Identifier? groupIdentifier,
    RequestStatus? status,
    RequestIntent? intent,
    RequestPriority? priority,
    Reference? codeReference,
    CodeableConcept? codeCodeableConcept,
    List<DeviceRequestParameter>? parameter,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    FhirDateTime? authoredOn,
    Reference? requester,
    CodeableConcept? performerType,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? insurance,
    List<Reference>? supportingInfo,
    List<Annotation>? note,
    List<Reference>? relevantHistory,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceRequest(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      basedOn: basedOn ?? this.basedOn,
      priorRequest: priorRequest ?? this.priorRequest,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      status: status ?? this.status,
      intent: intent ?? this.intent,
      priority: priority ?? this.priority,
      codeReference: codeReference ?? this.codeReference,
      codeCodeableConcept: codeCodeableConcept ?? this.codeCodeableConcept,
      parameter: parameter ?? this.parameter,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      authoredOn: authoredOn ?? this.authoredOn,
      requester: requester ?? this.requester,
      performerType: performerType ?? this.performerType,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      insurance: insurance ?? this.insurance,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      note: note ?? this.note,
      relevantHistory: relevantHistory ?? this.relevantHistory,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [DeviceRequestParameter]
/// Specific parameters for the ordered item. For example, the prism value
/// for lenses.
class DeviceRequestParameter extends BackboneElement {
  /// Primary constructor for [DeviceRequestParameter]

  DeviceRequestParameter({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueBoolean,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceRequestParameter.fromJson(Map<String, dynamic> json) {
    return DeviceRequestParameter(
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
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      valueCodeableConcept: json['valueCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['valueCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(
              json['valueQuantity'] as Map<String, dynamic>,
            )
          : null,
      valueRange: json['valueRange'] != null
          ? Range.fromJson(
              json['valueRange'] as Map<String, dynamic>,
            )
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['valueBoolean'],
              '_value': json['_valueBoolean'],
            })
          : null,
    );
  }

  /// Deserialize [DeviceRequestParameter] from a [String]
  /// or [YamlMap] object
  factory DeviceRequestParameter.fromYaml(dynamic yaml) => yaml is String
      ? DeviceRequestParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DeviceRequestParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DeviceRequestParameter cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [DeviceRequestParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceRequestParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceRequestParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'DeviceRequestParameter';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// A code or string that identifies the device detail being asserted.
  final CodeableConcept? code;

  /// [valueCodeableConcept]
  /// The value of the device detail.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity]
  /// The value of the device detail.
  final Quantity? valueQuantity;

  /// [valueRange]
  /// The value of the device detail.
  final Range? valueRange;

  /// [valueBoolean]
  /// The value of the device detail.
  final FhirBoolean? valueBoolean;
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

    if (code != null) {
      final fieldJson3 = code!.toJson();
      json['code'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_code'] = fieldJson3['_value'];
      }
    }

    if (valueCodeableConcept != null) {
      final fieldJson4 = valueCodeableConcept!.toJson();
      json['valueCodeableConcept'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_valueCodeableConcept'] = fieldJson4['_value'];
      }
    }

    if (valueQuantity != null) {
      final fieldJson5 = valueQuantity!.toJson();
      json['valueQuantity'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_valueQuantity'] = fieldJson5['_value'];
      }
    }

    if (valueRange != null) {
      final fieldJson6 = valueRange!.toJson();
      json['valueRange'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueRange'] = fieldJson6['_value'];
      }
    }

    if (valueBoolean != null) {
      final fieldJson7 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_valueBoolean'] = fieldJson7['_value'];
      }
    }

    return json;
  }

  @override
  DeviceRequestParameter clone() => throw UnimplementedError();
  @override
  DeviceRequestParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    FhirBoolean? valueBoolean,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DeviceRequestParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueRange: valueRange ?? this.valueRange,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
