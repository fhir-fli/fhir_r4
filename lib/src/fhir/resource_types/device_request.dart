// ignore_for_file: overridden_fields

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

/// [DeviceRequest]
/// Represents a request for a patient to employ a medical device. The
/// device may be an implantable device, or an external assistive device,
/// such as a walker.
@Entity()
class DeviceRequest extends DomainResource {
  /// Primary constructor for
  /// [DeviceRequest]

  DeviceRequest({
    this.dbId = 0,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  factory DeviceRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceRequest(
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
      instantiatesCanonical: parsePrimitiveList<FhirCanonical>(
        json['instantiatesCanonical'] as List<dynamic>?,
        json['_instantiatesCanonical'] as List<dynamic>?,
        fromJson: FhirCanonical.fromJson,
      ),
      instantiatesUri: parsePrimitiveList<FhirUri>(
        json['instantiatesUri'] as List<dynamic>?,
        json['_instantiatesUri'] as List<dynamic>?,
        fromJson: FhirUri.fromJson,
      ),
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
      status: (json['status'] != null || json['_status'] != null)
          ? RequestStatus.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      intent: RequestIntent.fromJson({
        'value': json['intent'],
        '_value': json['_intent'],
      }),
      priority: (json['priority'] != null || json['_priority'] != null)
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
      occurrenceDateTime: (json['occurrenceDateTime'] != null ||
              json['_occurrenceDateTime'] != null)
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
      authoredOn: (json['authoredOn'] != null || json['_authoredOn'] != null)
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

  /// Deserialize [DeviceRequest]
  /// from a [String] or [YamlMap] object
  factory DeviceRequest.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? DeviceRequest.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? DeviceRequest.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'DeviceRequest '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [DeviceRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'DeviceRequest';

  /// [id]
  /// The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.
  @override
  FhirString? id;

  /// [meta]
  /// The metadata about the resource. This is content that is maintained by
  /// the infrastructure. Changes to the content might not always be
  /// associated with version changes to the resource.
  @override
  FhirMeta? meta;

  /// [implicitRules]
  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  @override
  FhirUri? implicitRules;

  /// [language]
  /// The base language in which the resource is written.
  @override
  CommonLanguages? language;

  /// [text]
  /// A human-readable narrative that contains a summary of the resource and
  /// can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative. Resource definitions may define what content
  /// should be represented in the narrative to ensure clinical safety.
  @override
  Narrative? text;

  /// [contained]
  /// These resources do not have an independent existence apart from the
  /// resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope.
  @override
  List<Resource>? contained;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource and that modifies the understanding of
  /// the element that contains it and/or the understanding of the containing
  /// element's descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there
  /// is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer is allowed to define an extension,
  /// there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [identifier]
  /// Identifiers assigned to this order by the orderer or by the receiver.
  List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// DeviceRequest.
  List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this DeviceRequest.
  List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// Plan/proposal/order fulfilled by this request.
  List<Reference>? basedOn;

  /// [priorRequest]
  /// The request takes the place of the referenced completed or terminated
  /// request(s).
  List<Reference>? priorRequest;

  /// [groupIdentifier]
  /// Composite request this is part of.
  Identifier? groupIdentifier;

  /// [status]
  /// The status of the request.
  RequestStatus? status;

  /// [intent]
  /// Whether the request is a proposal, plan, an original order or a reflex
  /// order.
  RequestIntent intent;

  /// [priority]
  /// Indicates how quickly the {{title}} should be addressed with respect to
  /// other requests.
  RequestPriority? priority;

  /// [codeReference]
  /// The details of the device to be used.
  Reference? codeReference;

  /// [codeCodeableConcept]
  /// The details of the device to be used.
  CodeableConcept? codeCodeableConcept;

  /// [parameter]
  /// Specific parameters for the ordered item. For example, the prism value
  /// for lenses.
  List<DeviceRequestParameter>? parameter;

  /// [subject]
  /// The patient who will use the device.
  Reference subject;

  /// [encounter]
  /// An encounter that provides additional context in which this request is
  /// made.
  Reference? encounter;

  /// [occurrenceDateTime]
  /// The timing schedule for the use of the device. The Schedule data type
  /// allows many different expressions, for example. "Every 8 hours"; "Three
  /// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  /// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  FhirDateTime? occurrenceDateTime;

  /// [occurrencePeriod]
  /// The timing schedule for the use of the device. The Schedule data type
  /// allows many different expressions, for example. "Every 8 hours"; "Three
  /// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  /// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  Period? occurrencePeriod;

  /// [occurrenceTiming]
  /// The timing schedule for the use of the device. The Schedule data type
  /// allows many different expressions, for example. "Every 8 hours"; "Three
  /// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  /// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  Timing? occurrenceTiming;

  /// [authoredOn]
  /// When the request transitioned to being actionable.
  FhirDateTime? authoredOn;

  /// [requester]
  /// The individual who initiated the request and has responsibility for its
  /// activation.
  Reference? requester;

  /// [performerType]
  /// Desired type of performer for doing the diagnostic testing.
  CodeableConcept? performerType;

  /// [performer]
  /// The desired performer for doing the diagnostic testing.
  Reference? performer;

  /// [reasonCode]
  /// Reason or justification for the use of this device.
  List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Reason or justification for the use of this device.
  List<Reference>? reasonReference;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be required for delivering the requested
  /// service.
  List<Reference>? insurance;

  /// [supportingInfo]
  /// Additional clinical information about the patient that may influence
  /// the request fulfilment. For example, this may include where on the
  /// subject's body the device will be used (i.e. the target site).
  List<Reference>? supportingInfo;

  /// [note]
  /// Details about this request that were not represented at all or
  /// sufficiently in one of the attributes provided in a class. These may
  /// include for example a comment, an instruction, or a note associated
  /// with the statement.
  List<Annotation>? note;

  /// [relevantHistory]
  /// Key events in the history of the request.
  List<Reference>? relevantHistory;
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
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
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

    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      final fieldJson8 = instantiatesCanonical!.map((e) => e.toJson()).toList();
      json['instantiatesCanonical'] =
          fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_instantiatesCanonical'] =
            fieldJson8.map((e) => e['_value']).toList();
      }
    }

    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      final fieldJson9 = instantiatesUri!.map((e) => e.toJson()).toList();
      json['instantiatesUri'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_instantiatesUri'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] = basedOn!.map((e) => e.toJson()).toList();
    }

    if (priorRequest != null && priorRequest!.isNotEmpty) {
      json['priorRequest'] = priorRequest!.map((e) => e.toJson()).toList();
    }

    if (groupIdentifier != null) {
      json['groupIdentifier'] = groupIdentifier!.toJson();
    }

    if (status != null) {
      final fieldJson13 = status!.toJson();
      json['status'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_status'] = fieldJson13['_value'];
      }
    }

    final fieldJson14 = intent.toJson();
    json['intent'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_intent'] = fieldJson14['_value'];
    }

    if (priority != null) {
      final fieldJson15 = priority!.toJson();
      json['priority'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_priority'] = fieldJson15['_value'];
      }
    }

    if (codeReference != null) {
      json['codeReference'] = codeReference!.toJson();
    }

    if (codeCodeableConcept != null) {
      json['codeCodeableConcept'] = codeCodeableConcept!.toJson();
    }

    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] = parameter!.map((e) => e.toJson()).toList();
    }

    json['subject'] = subject.toJson();

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (occurrenceDateTime != null) {
      final fieldJson21 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson21['_value'];
      }
    }

    if (occurrencePeriod != null) {
      json['occurrencePeriod'] = occurrencePeriod!.toJson();
    }

    if (occurrenceTiming != null) {
      json['occurrenceTiming'] = occurrenceTiming!.toJson();
    }

    if (authoredOn != null) {
      final fieldJson24 = authoredOn!.toJson();
      json['authoredOn'] = fieldJson24['value'];
      if (fieldJson24['_value'] != null) {
        json['_authoredOn'] = fieldJson24['_value'];
      }
    }

    if (requester != null) {
      json['requester'] = requester!.toJson();
    }

    if (performerType != null) {
      json['performerType'] = performerType!.toJson();
    }

    if (performer != null) {
      json['performer'] = performer!.toJson();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (insurance != null && insurance!.isNotEmpty) {
      json['insurance'] = insurance!.map((e) => e.toJson()).toList();
    }

    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] = supportingInfo!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (relevantHistory != null && relevantHistory!.isNotEmpty) {
      json['relevantHistory'] =
          relevantHistory!.map((e) => e.toJson()).toList();
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
@Entity()
class DeviceRequestParameter extends BackboneElement {
  /// Primary constructor for
  /// [DeviceRequestParameter]

  DeviceRequestParameter({
    this.dbId = 0,
    this.id,
    this.extension_,
    this.modifierExtension,
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
  factory DeviceRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    return DeviceRequestParameter(
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
      valueBoolean:
          (json['valueBoolean'] != null || json['_valueBoolean'] != null)
              ? FhirBoolean.fromJson({
                  'value': json['valueBoolean'],
                  '_value': json['_valueBoolean'],
                })
              : null,
    );
  }

  /// Deserialize [DeviceRequestParameter]
  /// from a [String] or [YamlMap] object
  factory DeviceRequestParameter.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? DeviceRequestParameter.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? DeviceRequestParameter.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'DeviceRequestParameter '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [DeviceRequestParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceRequestParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return DeviceRequestParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'DeviceRequestParameter';

  /// [id]
  /// Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  @override
  FhirString? id;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element and that modifies the understanding of
  /// the element in which it is contained and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [code]
  /// A code or string that identifies the device detail being asserted.
  CodeableConcept? code;

  /// [valueCodeableConcept]
  /// The value of the device detail.
  CodeableConcept? valueCodeableConcept;

  /// [valueQuantity]
  /// The value of the device detail.
  Quantity? valueQuantity;

  /// [valueRange]
  /// The value of the device detail.
  Range? valueRange;

  /// [valueBoolean]
  /// The value of the device detail.
  FhirBoolean? valueBoolean;
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

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (valueCodeableConcept != null) {
      json['valueCodeableConcept'] = valueCodeableConcept!.toJson();
    }

    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }

    if (valueRange != null) {
      json['valueRange'] = valueRange!.toJson();
    }

    if (valueBoolean != null) {
      final fieldJson6 = valueBoolean!.toJson();
      json['valueBoolean'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_valueBoolean'] = fieldJson6['_value'];
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
