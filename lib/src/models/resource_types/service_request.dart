import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ServiceRequest]
/// A record of a request for service such as diagnostic investigations,
/// treatments, or operations to be performed.
class ServiceRequest extends DomainResource {
  /// Primary constructor for
  /// [ServiceRequest]

  const ServiceRequest({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.replaces,
    this.requisition,
    required this.status,
    required this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.code,
    this.orderDetail,
    this.quantityX,
    required this.subject,
    this.encounter,
    this.occurrenceX,
    this.asNeededX,
    this.authoredOn,
    this.requester,
    this.performerType,
    this.performer,
    this.locationCode,
    this.locationReference,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.specimen,
    this.bodySite,
    this.note,
    this.patientInstruction,
    this.relevantHistory,
  }) : super(
          resourceType: R4ResourceType.ServiceRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return ServiceRequest(
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
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      requisition: JsonParser.parseObject<Identifier>(
        json,
        'requisition',
        Identifier.fromJson,
      ),
      status: JsonParser.parsePrimitive<RequestStatus>(
        json,
        'status',
        RequestStatus.fromJson,
      )!,
      intent: JsonParser.parsePrimitive<RequestIntent>(
        json,
        'intent',
        RequestIntent.fromJson,
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
      ),
      orderDetail: (json['orderDetail'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      quantityX: JsonParser.parsePolymorphic<QuantityXServiceRequest>(json, {
        'quantityQuantity': Quantity.fromJson,
        'quantityRatio': Ratio.fromJson,
        'quantityRange': Range.fromJson,
      }),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      occurrenceX:
          JsonParser.parsePolymorphic<OccurrenceXServiceRequest>(json, {
        'occurrenceDateTime': FhirDateTime.fromJson,
        'occurrencePeriod': Period.fromJson,
        'occurrenceTiming': Timing.fromJson,
      }),
      asNeededX: JsonParser.parsePolymorphic<AsNeededXServiceRequest>(json, {
        'asNeededBoolean': FhirBoolean.fromJson,
        'asNeededCodeableConcept': CodeableConcept.fromJson,
      }),
      authoredOn: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authoredOn',
        FhirDateTime.fromJson,
      ),
      requester: JsonParser.parseObject<Reference>(
        json,
        'requester',
        Reference.fromJson,
      ),
      performerType: JsonParser.parseObject<CodeableConcept>(
        json,
        'performerType',
        CodeableConcept.fromJson,
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      locationCode: (json['locationCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      locationReference: (json['locationReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
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
      patientInstruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'patientInstruction',
        FhirString.fromJson,
      ),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ServiceRequest]
  /// from a [String] or [YamlMap] object
  factory ServiceRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ServiceRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ServiceRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ServiceRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ServiceRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ServiceRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ServiceRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ServiceRequest';

  /// [identifier]
  /// Identifiers assigned to this order instance by the orderer and/or the
  /// receiver and/or order fulfiller.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical]
  /// The URL pointing to a FHIR-defined protocol, guideline, orderset or
  /// other definition that is adhered to in whole or in part by this
  /// ServiceRequest.
  final List<FhirCanonical>? instantiatesCanonical;

  /// [instantiatesUri]
  /// The URL pointing to an externally maintained protocol, guideline,
  /// orderset or other definition that is adhered to in whole or in part by
  /// this ServiceRequest.
  final List<FhirUri>? instantiatesUri;

  /// [basedOn]
  /// Plan/proposal/order fulfilled by this request.
  final List<Reference>? basedOn;

  /// [replaces]
  /// The request takes the place of the referenced completed or terminated
  /// request(s).
  final List<Reference>? replaces;

  /// [requisition]
  /// A shared identifier common to all service requests that were authorized
  /// more or less simultaneously by a single author, representing the
  /// composite or group identifier.
  final Identifier? requisition;

  /// [status]
  /// The status of the order.
  final RequestStatus status;

  /// [intent]
  /// Whether the request is a proposal, plan, an original order or a reflex
  /// order.
  final RequestIntent intent;

  /// [category]
  /// A code that classifies the service for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  final List<CodeableConcept>? category;

  /// [priority]
  /// Indicates how quickly the ServiceRequest should be addressed with
  /// respect to other requests.
  final RequestPriority? priority;

  /// [doNotPerform]
  /// Set this to true if the record is saying that the service/procedure
  /// should NOT be performed.
  final FhirBoolean? doNotPerform;

  /// [code]
  /// A code that identifies a particular service (i.e., procedure,
  /// diagnostic investigation, or panel of investigations) that have been
  /// requested.
  final CodeableConcept? code;

  /// [orderDetail]
  /// Additional details and instructions about the how the services are to
  /// be delivered. For example, and order for a urinary catheter may have an
  /// order detail for an external or indwelling catheter, or an order for a
  /// bandage may require additional instructions specifying how the bandage
  /// should be applied.
  final List<CodeableConcept>? orderDetail;

  /// [quantityX]
  /// An amount of service being requested which can be a quantity ( for
  /// example $1,500 home modification), a ratio ( for example, 20 half day
  /// visits per month), or a range (2.0 to 1.8 Gy per fraction).
  final QuantityXServiceRequest? quantityX;

  /// [subject]
  /// On whom or what the service is to be performed. This is usually a human
  /// patient, but can also be requested on animals, groups of humans or
  /// animals, devices such as dialysis machines, or even locations
  /// (typically for environmental scans).
  final Reference subject;

  /// [encounter]
  /// An encounter that provides additional information about the healthcare
  /// context in which this request is made.
  final Reference? encounter;

  /// [occurrenceX]
  /// The date/time at which the requested service should occur.
  final OccurrenceXServiceRequest? occurrenceX;

  /// [asNeededX]
  /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  final AsNeededXServiceRequest? asNeededX;

  /// [authoredOn]
  /// When the request transitioned to being actionable.
  final FhirDateTime? authoredOn;

  /// [requester]
  /// The individual who initiated the request and has responsibility for its
  /// activation.
  final Reference? requester;

  /// [performerType]
  /// Desired type of performer for doing the requested service.
  final CodeableConcept? performerType;

  /// [performer]
  /// The desired performer for doing the requested service. For example, the
  /// surgeon, dermatopathologist, endoscopist, etc.
  final List<Reference>? performer;

  /// [locationCode]
  /// The preferred location(s) where the procedure should actually happen in
  /// coded or free text form. E.g. at home or nursing day care center.
  final List<CodeableConcept>? locationCode;

  /// [locationReference]
  /// A reference to the the preferred location(s) where the procedure should
  /// actually happen. E.g. at home or nursing day care center.
  final List<Reference>? locationReference;

  /// [reasonCode]
  /// An explanation or justification for why this service is being requested
  /// in coded or textual form. This is often for billing purposes. May
  /// relate to the resources referred to in `supportingInfo`.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates another resource that provides a justification for why this
  /// service is being requested. May relate to the resources referred to in
  /// `supportingInfo`.
  final List<Reference>? reasonReference;

  /// [insurance]
  /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be needed for delivering the requested
  /// service.
  final List<Reference>? insurance;

  /// [supportingInfo]
  /// Additional clinical information about the patient or specimen that may
  /// influence the services or their interpretations. This information
  /// includes diagnosis, clinical findings and other observations. In
  /// laboratory ordering these are typically referred to as "ask at order
  /// entry questions (AOEs)". This includes observations explicitly
  /// requested by the producer (filler) to provide context or supporting
  /// information needed to complete the order. For example, reporting the
  /// amount of inspired oxygen for blood gas measurements.
  final List<Reference>? supportingInfo;

  /// [specimen]
  /// One or more specimens that the laboratory procedure will use.
  final List<Reference>? specimen;

  /// [bodySite]
  /// Anatomic location where the procedure should be performed. This is the
  /// target site.
  final List<CodeableConcept>? bodySite;

  /// [note]
  /// Any other notes and comments made about the service request. For
  /// example, internal billing notes.
  final List<Annotation>? note;

  /// [patientInstruction]
  /// Instructions in terms that are understood by the patient or consumer.
  final FhirString? patientInstruction;

  /// [relevantHistory]
  /// Key events in the history of the request.
  final List<Reference>? relevantHistory;
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
    addField('instantiatesCanonical', instantiatesCanonical);
    addField('instantiatesUri', instantiatesUri);
    addField('basedOn', basedOn);
    addField('replaces', replaces);
    addField('requisition', requisition);
    addField('status', status);
    addField('intent', intent);
    addField('category', category);
    addField('priority', priority);
    addField('doNotPerform', doNotPerform);
    addField('code', code);
    addField('orderDetail', orderDetail);
    if (quantityX != null) {
      final fhirType = quantityX!.fhirType;
      addField('quantity${fhirType.capitalize()}', quantityX);
    }

    addField('subject', subject);
    addField('encounter', encounter);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalize()}', occurrenceX);
    }

    if (asNeededX != null) {
      final fhirType = asNeededX!.fhirType;
      addField('asNeeded${fhirType.capitalize()}', asNeededX);
    }

    addField('authoredOn', authoredOn);
    addField('requester', requester);
    addField('performerType', performerType);
    addField('performer', performer);
    addField('locationCode', locationCode);
    addField('locationReference', locationReference);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('insurance', insurance);
    addField('supportingInfo', supportingInfo);
    addField('specimen', specimen);
    addField('bodySite', bodySite);
    addField('note', note);
    addField('patientInstruction', patientInstruction);
    addField('relevantHistory', relevantHistory);
    return json;
  }

  @override
  ServiceRequest clone() => throw UnimplementedError();
  @override
  ServiceRequest copyWith({
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
    List<Reference>? replaces,
    Identifier? requisition,
    RequestStatus? status,
    RequestIntent? intent,
    List<CodeableConcept>? category,
    RequestPriority? priority,
    FhirBoolean? doNotPerform,
    CodeableConcept? code,
    List<CodeableConcept>? orderDetail,
    QuantityXServiceRequest? quantityX,
    Reference? subject,
    Reference? encounter,
    OccurrenceXServiceRequest? occurrenceX,
    AsNeededXServiceRequest? asNeededX,
    FhirDateTime? authoredOn,
    Reference? requester,
    CodeableConcept? performerType,
    List<Reference>? performer,
    List<CodeableConcept>? locationCode,
    List<Reference>? locationReference,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? insurance,
    List<Reference>? supportingInfo,
    List<Reference>? specimen,
    List<CodeableConcept>? bodySite,
    List<Annotation>? note,
    FhirString? patientInstruction,
    List<Reference>? relevantHistory,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ServiceRequest(
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
      replaces: replaces ?? this.replaces,
      requisition: requisition ?? this.requisition,
      status: status ?? this.status,
      intent: intent ?? this.intent,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      code: code ?? this.code,
      orderDetail: orderDetail ?? this.orderDetail,
      quantityX: quantityX ?? this.quantityX,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceX: occurrenceX ?? this.occurrenceX,
      asNeededX: asNeededX ?? this.asNeededX,
      authoredOn: authoredOn ?? this.authoredOn,
      requester: requester ?? this.requester,
      performerType: performerType ?? this.performerType,
      performer: performer ?? this.performer,
      locationCode: locationCode ?? this.locationCode,
      locationReference: locationReference ?? this.locationReference,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      insurance: insurance ?? this.insurance,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      specimen: specimen ?? this.specimen,
      bodySite: bodySite ?? this.bodySite,
      note: note ?? this.note,
      patientInstruction: patientInstruction ?? this.patientInstruction,
      relevantHistory: relevantHistory ?? this.relevantHistory,
    );
  }
}
