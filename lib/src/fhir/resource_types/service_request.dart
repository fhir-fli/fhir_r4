import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ServiceRequest]
/// A record of a request for service such as diagnostic investigations,
/// treatments, or operations to be performed.
class ServiceRequest extends DomainResource {
  /// Primary constructor for [ServiceRequest]

  ServiceRequest({
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
    this.replaces,
    this.requisition,
    required this.status,
    required this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.code,
    this.orderDetail,
    this.quantityQuantity,
    this.quantityRatio,
    this.quantityRange,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.asNeededBoolean,
    this.asNeededCodeableConcept,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ServiceRequest,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequest.fromJson(Map<String, dynamic> json) {
    return ServiceRequest(
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
      replaces: json['replaces'] != null
          ? (json['replaces'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      requisition: json['requisition'] != null
          ? Identifier.fromJson(
              json['requisition'] as Map<String, dynamic>,
            )
          : null,
      status: RequestStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      intent: RequestIntent.fromJson({
        'value': json['intent'],
        '_value': json['_intent'],
      }),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson({
              'value': json['priority'],
              '_value': json['_priority'],
            })
          : null,
      doNotPerform: json['doNotPerform'] != null
          ? FhirBoolean.fromJson({
              'value': json['doNotPerform'],
              '_value': json['_doNotPerform'],
            })
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      orderDetail: json['orderDetail'] != null
          ? (json['orderDetail'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      quantityQuantity: json['quantityQuantity'] != null
          ? Quantity.fromJson(
              json['quantityQuantity'] as Map<String, dynamic>,
            )
          : null,
      quantityRatio: json['quantityRatio'] != null
          ? Ratio.fromJson(
              json['quantityRatio'] as Map<String, dynamic>,
            )
          : null,
      quantityRange: json['quantityRange'] != null
          ? Range.fromJson(
              json['quantityRange'] as Map<String, dynamic>,
            )
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
      asNeededBoolean: json['asNeededBoolean'] != null
          ? FhirBoolean.fromJson({
              'value': json['asNeededBoolean'],
              '_value': json['_asNeededBoolean'],
            })
          : null,
      asNeededCodeableConcept: json['asNeededCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['asNeededCodeableConcept'] as Map<String, dynamic>,
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
          ? (json['performer'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      locationCode: json['locationCode'] != null
          ? (json['locationCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      locationReference: json['locationReference'] != null
          ? (json['locationReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
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
      specimen: json['specimen'] != null
          ? (json['specimen'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? (json['bodySite'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
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
      patientInstruction: json['patientInstruction'] != null
          ? FhirString.fromJson({
              'value': json['patientInstruction'],
              '_value': json['_patientInstruction'],
            })
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

  /// Deserialize [ServiceRequest] from a [String]
  /// or [YamlMap] object
  factory ServiceRequest.fromYaml(dynamic yaml) => yaml is String
      ? ServiceRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ServiceRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ServiceRequest cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ServiceRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ServiceRequest.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [quantityQuantity]
  /// An amount of service being requested which can be a quantity ( for
  /// example $1,500 home modification), a ratio ( for example, 20 half day
  /// visits per month), or a range (2.0 to 1.8 Gy per fraction).
  final Quantity? quantityQuantity;

  /// [quantityRatio]
  /// An amount of service being requested which can be a quantity ( for
  /// example $1,500 home modification), a ratio ( for example, 20 half day
  /// visits per month), or a range (2.0 to 1.8 Gy per fraction).
  final Ratio? quantityRatio;

  /// [quantityRange]
  /// An amount of service being requested which can be a quantity ( for
  /// example $1,500 home modification), a ratio ( for example, 20 half day
  /// visits per month), or a range (2.0 to 1.8 Gy per fraction).
  final Range? quantityRange;

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

  /// [occurrenceDateTime]
  /// The date/time at which the requested service should occur.
  final FhirDateTime? occurrenceDateTime;

  /// [occurrencePeriod]
  /// The date/time at which the requested service should occur.
  final Period? occurrencePeriod;

  /// [occurrenceTiming]
  /// The date/time at which the requested service should occur.
  final Timing? occurrenceTiming;

  /// [asNeededBoolean]
  /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  final FhirBoolean? asNeededBoolean;

  /// [asNeededCodeableConcept]
  /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  final CodeableConcept? asNeededCodeableConcept;

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

    if (replaces != null && replaces!.isNotEmpty) {
      final fieldJson12 = replaces!.map((e) => e.toJson()).toList();
      json['replaces'] = fieldJson12.map((e) => e['value']).toList();
      if (fieldJson12.any((e) => e['_value'] != null)) {
        json['_replaces'] = fieldJson12.map((e) => e['_value']).toList();
      }
    }

    if (requisition != null) {
      final fieldJson13 = requisition!.toJson();
      json['requisition'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_requisition'] = fieldJson13['_value'];
      }
    }

    final fieldJson14 = status.toJson();
    json['status'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_status'] = fieldJson14['_value'];
    }

    final fieldJson15 = intent.toJson();
    json['intent'] = fieldJson15['value'];
    if (fieldJson15['_value'] != null) {
      json['_intent'] = fieldJson15['_value'];
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson16 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (priority != null) {
      final fieldJson17 = priority!.toJson();
      json['priority'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_priority'] = fieldJson17['_value'];
      }
    }

    if (doNotPerform != null) {
      final fieldJson18 = doNotPerform!.toJson();
      json['doNotPerform'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_doNotPerform'] = fieldJson18['_value'];
      }
    }

    if (code != null) {
      final fieldJson19 = code!.toJson();
      json['code'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_code'] = fieldJson19['_value'];
      }
    }

    if (orderDetail != null && orderDetail!.isNotEmpty) {
      final fieldJson20 = orderDetail!.map((e) => e.toJson()).toList();
      json['orderDetail'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_orderDetail'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (quantityQuantity != null) {
      final fieldJson21 = quantityQuantity!.toJson();
      json['quantityQuantity'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_quantityQuantity'] = fieldJson21['_value'];
      }
    }

    if (quantityRatio != null) {
      final fieldJson22 = quantityRatio!.toJson();
      json['quantityRatio'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_quantityRatio'] = fieldJson22['_value'];
      }
    }

    if (quantityRange != null) {
      final fieldJson23 = quantityRange!.toJson();
      json['quantityRange'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_quantityRange'] = fieldJson23['_value'];
      }
    }

    final fieldJson24 = subject.toJson();
    json['subject'] = fieldJson24['value'];
    if (fieldJson24['_value'] != null) {
      json['_subject'] = fieldJson24['_value'];
    }

    if (encounter != null) {
      final fieldJson25 = encounter!.toJson();
      json['encounter'] = fieldJson25['value'];
      if (fieldJson25['_value'] != null) {
        json['_encounter'] = fieldJson25['_value'];
      }
    }

    if (occurrenceDateTime != null) {
      final fieldJson26 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson26['value'];
      if (fieldJson26['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson26['_value'];
      }
    }

    if (occurrencePeriod != null) {
      final fieldJson27 = occurrencePeriod!.toJson();
      json['occurrencePeriod'] = fieldJson27['value'];
      if (fieldJson27['_value'] != null) {
        json['_occurrencePeriod'] = fieldJson27['_value'];
      }
    }

    if (occurrenceTiming != null) {
      final fieldJson28 = occurrenceTiming!.toJson();
      json['occurrenceTiming'] = fieldJson28['value'];
      if (fieldJson28['_value'] != null) {
        json['_occurrenceTiming'] = fieldJson28['_value'];
      }
    }

    if (asNeededBoolean != null) {
      final fieldJson29 = asNeededBoolean!.toJson();
      json['asNeededBoolean'] = fieldJson29['value'];
      if (fieldJson29['_value'] != null) {
        json['_asNeededBoolean'] = fieldJson29['_value'];
      }
    }

    if (asNeededCodeableConcept != null) {
      final fieldJson30 = asNeededCodeableConcept!.toJson();
      json['asNeededCodeableConcept'] = fieldJson30['value'];
      if (fieldJson30['_value'] != null) {
        json['_asNeededCodeableConcept'] = fieldJson30['_value'];
      }
    }

    if (authoredOn != null) {
      final fieldJson31 = authoredOn!.toJson();
      json['authoredOn'] = fieldJson31['value'];
      if (fieldJson31['_value'] != null) {
        json['_authoredOn'] = fieldJson31['_value'];
      }
    }

    if (requester != null) {
      final fieldJson32 = requester!.toJson();
      json['requester'] = fieldJson32['value'];
      if (fieldJson32['_value'] != null) {
        json['_requester'] = fieldJson32['_value'];
      }
    }

    if (performerType != null) {
      final fieldJson33 = performerType!.toJson();
      json['performerType'] = fieldJson33['value'];
      if (fieldJson33['_value'] != null) {
        json['_performerType'] = fieldJson33['_value'];
      }
    }

    if (performer != null && performer!.isNotEmpty) {
      final fieldJson34 = performer!.map((e) => e.toJson()).toList();
      json['performer'] = fieldJson34.map((e) => e['value']).toList();
      if (fieldJson34.any((e) => e['_value'] != null)) {
        json['_performer'] = fieldJson34.map((e) => e['_value']).toList();
      }
    }

    if (locationCode != null && locationCode!.isNotEmpty) {
      final fieldJson35 = locationCode!.map((e) => e.toJson()).toList();
      json['locationCode'] = fieldJson35.map((e) => e['value']).toList();
      if (fieldJson35.any((e) => e['_value'] != null)) {
        json['_locationCode'] = fieldJson35.map((e) => e['_value']).toList();
      }
    }

    if (locationReference != null && locationReference!.isNotEmpty) {
      final fieldJson36 = locationReference!.map((e) => e.toJson()).toList();
      json['locationReference'] = fieldJson36.map((e) => e['value']).toList();
      if (fieldJson36.any((e) => e['_value'] != null)) {
        json['_locationReference'] =
            fieldJson36.map((e) => e['_value']).toList();
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson37 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson37.map((e) => e['value']).toList();
      if (fieldJson37.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson37.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson38 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson38.map((e) => e['value']).toList();
      if (fieldJson38.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson38.map((e) => e['_value']).toList();
      }
    }

    if (insurance != null && insurance!.isNotEmpty) {
      final fieldJson39 = insurance!.map((e) => e.toJson()).toList();
      json['insurance'] = fieldJson39.map((e) => e['value']).toList();
      if (fieldJson39.any((e) => e['_value'] != null)) {
        json['_insurance'] = fieldJson39.map((e) => e['_value']).toList();
      }
    }

    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      final fieldJson40 = supportingInfo!.map((e) => e.toJson()).toList();
      json['supportingInfo'] = fieldJson40.map((e) => e['value']).toList();
      if (fieldJson40.any((e) => e['_value'] != null)) {
        json['_supportingInfo'] = fieldJson40.map((e) => e['_value']).toList();
      }
    }

    if (specimen != null && specimen!.isNotEmpty) {
      final fieldJson41 = specimen!.map((e) => e.toJson()).toList();
      json['specimen'] = fieldJson41.map((e) => e['value']).toList();
      if (fieldJson41.any((e) => e['_value'] != null)) {
        json['_specimen'] = fieldJson41.map((e) => e['_value']).toList();
      }
    }

    if (bodySite != null && bodySite!.isNotEmpty) {
      final fieldJson42 = bodySite!.map((e) => e.toJson()).toList();
      json['bodySite'] = fieldJson42.map((e) => e['value']).toList();
      if (fieldJson42.any((e) => e['_value'] != null)) {
        json['_bodySite'] = fieldJson42.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson43 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson43.map((e) => e['value']).toList();
      if (fieldJson43.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson43.map((e) => e['_value']).toList();
      }
    }

    if (patientInstruction != null) {
      final fieldJson44 = patientInstruction!.toJson();
      json['patientInstruction'] = fieldJson44['value'];
      if (fieldJson44['_value'] != null) {
        json['_patientInstruction'] = fieldJson44['_value'];
      }
    }

    if (relevantHistory != null && relevantHistory!.isNotEmpty) {
      final fieldJson45 = relevantHistory!.map((e) => e.toJson()).toList();
      json['relevantHistory'] = fieldJson45.map((e) => e['value']).toList();
      if (fieldJson45.any((e) => e['_value'] != null)) {
        json['_relevantHistory'] = fieldJson45.map((e) => e['_value']).toList();
      }
    }

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
    Quantity? quantityQuantity,
    Ratio? quantityRatio,
    Range? quantityRange,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    FhirBoolean? asNeededBoolean,
    CodeableConcept? asNeededCodeableConcept,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      quantityQuantity: quantityQuantity ?? this.quantityQuantity,
      quantityRatio: quantityRatio ?? this.quantityRatio,
      quantityRange: quantityRange ?? this.quantityRange,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      asNeededBoolean: asNeededBoolean ?? this.asNeededBoolean,
      asNeededCodeableConcept:
          asNeededCodeableConcept ?? this.asNeededCodeableConcept,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
