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
          objectPath: 'ServiceRequest',
          resourceType: R4ResourceType.ServiceRequest,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory ServiceRequest.empty() => ServiceRequest(
        status: RequestStatus.values.first,
        intent: RequestIntent.values.first,
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ServiceRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'ServiceRequest';
    return ServiceRequest(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.identifier',
              },
            ),
          )
          .toList(),
      instantiatesCanonical: JsonParser.parsePrimitiveList<FhirCanonical>(
        json,
        'instantiatesCanonical',
        FhirCanonical.fromJson,
        '$objectPath.instantiatesCanonical',
      ),
      instantiatesUri: JsonParser.parsePrimitiveList<FhirUri>(
        json,
        'instantiatesUri',
        FhirUri.fromJson,
        '$objectPath.instantiatesUri',
      ),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.basedOn',
              },
            ),
          )
          .toList(),
      replaces: (json['replaces'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.replaces',
              },
            ),
          )
          .toList(),
      requisition: JsonParser.parseObject<Identifier>(
        json,
        'requisition',
        Identifier.fromJson,
        '$objectPath.requisition',
      ),
      status: JsonParser.parsePrimitive<RequestStatus>(
        json,
        'status',
        RequestStatus.fromJson,
        '$objectPath.status',
      )!,
      intent: JsonParser.parsePrimitive<RequestIntent>(
        json,
        'intent',
        RequestIntent.fromJson,
        '$objectPath.intent',
      )!,
      category: (json['category'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.category',
              },
            ),
          )
          .toList(),
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
        '$objectPath.priority',
      ),
      doNotPerform: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'doNotPerform',
        FhirBoolean.fromJson,
        '$objectPath.doNotPerform',
      ),
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      orderDetail: (json['orderDetail'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.orderDetail',
              },
            ),
          )
          .toList(),
      quantityX: JsonParser.parsePolymorphic<QuantityXServiceRequest>(
        json,
        {
          'quantityQuantity': Quantity.fromJson,
          'quantityRatio': Ratio.fromJson,
          'quantityRange': Range.fromJson,
        },
        objectPath,
      ),
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
        '$objectPath.subject',
      )!,
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
        '$objectPath.encounter',
      ),
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXServiceRequest>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
        },
        objectPath,
      ),
      asNeededX: JsonParser.parsePolymorphic<AsNeededXServiceRequest>(
        json,
        {
          'asNeededBoolean': FhirBoolean.fromJson,
          'asNeededCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      ),
      authoredOn: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'authoredOn',
        FhirDateTime.fromJson,
        '$objectPath.authoredOn',
      ),
      requester: JsonParser.parseObject<Reference>(
        json,
        'requester',
        Reference.fromJson,
        '$objectPath.requester',
      ),
      performerType: JsonParser.parseObject<CodeableConcept>(
        json,
        'performerType',
        CodeableConcept.fromJson,
        '$objectPath.performerType',
      ),
      performer: (json['performer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.performer',
              },
            ),
          )
          .toList(),
      locationCode: (json['locationCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.locationCode',
              },
            ),
          )
          .toList(),
      locationReference: (json['locationReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.locationReference',
              },
            ),
          )
          .toList(),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonCode',
              },
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.reasonReference',
              },
            ),
          )
          .toList(),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.insurance',
              },
            ),
          )
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.supportingInfo',
              },
            ),
          )
          .toList(),
      specimen: (json['specimen'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.specimen',
              },
            ),
          )
          .toList(),
      bodySite: (json['bodySite'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.bodySite',
              },
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.note',
              },
            ),
          )
          .toList(),
      patientInstruction: JsonParser.parsePrimitive<FhirString>(
        json,
        'patientInstruction',
        FhirString.fromJson,
        '$objectPath.patientInstruction',
      ),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.relevantHistory',
              },
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
    if (json is Map<String, dynamic>) {
      return ServiceRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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

  /// Getter for [quantityQuantity] as a Quantity
  Quantity? get quantityQuantity => quantityX?.isAs<Quantity>();

  /// Getter for [quantityRatio] as a Ratio
  Ratio? get quantityRatio => quantityX?.isAs<Ratio>();

  /// Getter for [quantityRange] as a Range
  Range? get quantityRange => quantityX?.isAs<Range>();

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

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// Getter for [occurrenceTiming] as a Timing
  Timing? get occurrenceTiming => occurrenceX?.isAs<Timing>();

  /// [asNeededX]
  /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  final AsNeededXServiceRequest? asNeededX;

  /// Getter for [asNeededBoolean] as a FhirBoolean
  FhirBoolean? get asNeededBoolean => asNeededX?.isAs<FhirBoolean>();

  /// Getter for [asNeededCodeableConcept] as a CodeableConcept
  CodeableConcept? get asNeededCodeableConcept =>
      asNeededX?.isAs<CodeableConcept>();

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

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'instantiatesCanonical',
      'instantiatesUri',
      'basedOn',
      'replaces',
      'requisition',
      'status',
      'intent',
      'category',
      'priority',
      'doNotPerform',
      'code',
      'orderDetail',
      'quantityX',
      'subject',
      'encounter',
      'occurrenceX',
      'asNeededX',
      'authoredOn',
      'requester',
      'performerType',
      'performer',
      'locationCode',
      'locationReference',
      'reasonCode',
      'reasonReference',
      'insurance',
      'supportingInfo',
      'specimen',
      'bodySite',
      'note',
      'patientInstruction',
      'relevantHistory',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.addAll(identifier!);
        }
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          fields.addAll(instantiatesCanonical!);
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          fields.addAll(instantiatesUri!);
        }
      case 'basedOn':
        if (basedOn != null) {
          fields.addAll(basedOn!);
        }
      case 'replaces':
        if (replaces != null) {
          fields.addAll(replaces!);
        }
      case 'requisition':
        if (requisition != null) {
          fields.add(requisition!);
        }
      case 'status':
        fields.add(status);
      case 'intent':
        fields.add(intent);
      case 'category':
        if (category != null) {
          fields.addAll(category!);
        }
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'doNotPerform':
        if (doNotPerform != null) {
          fields.add(doNotPerform!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'orderDetail':
        if (orderDetail != null) {
          fields.addAll(orderDetail!);
        }
      case 'quantity':
        fields.add(quantityX!);
      case 'quantityX':
        fields.add(quantityX!);
      case 'quantityQuantity':
        if (quantityX is Quantity) {
          fields.add(quantityX!);
        }
      case 'quantityRatio':
        if (quantityX is Ratio) {
          fields.add(quantityX!);
        }
      case 'quantityRange':
        if (quantityX is Range) {
          fields.add(quantityX!);
        }
      case 'subject':
        fields.add(subject);
      case 'encounter':
        if (encounter != null) {
          fields.add(encounter!);
        }
      case 'occurrence':
        fields.add(occurrenceX!);
      case 'occurrenceX':
        fields.add(occurrenceX!);
      case 'occurrenceDateTime':
        if (occurrenceX is FhirDateTime) {
          fields.add(occurrenceX!);
        }
      case 'occurrencePeriod':
        if (occurrenceX is Period) {
          fields.add(occurrenceX!);
        }
      case 'occurrenceTiming':
        if (occurrenceX is Timing) {
          fields.add(occurrenceX!);
        }
      case 'asNeeded':
        fields.add(asNeededX!);
      case 'asNeededX':
        fields.add(asNeededX!);
      case 'asNeededBoolean':
        if (asNeededX is FhirBoolean) {
          fields.add(asNeededX!);
        }
      case 'asNeededCodeableConcept':
        if (asNeededX is CodeableConcept) {
          fields.add(asNeededX!);
        }
      case 'authoredOn':
        if (authoredOn != null) {
          fields.add(authoredOn!);
        }
      case 'requester':
        if (requester != null) {
          fields.add(requester!);
        }
      case 'performerType':
        if (performerType != null) {
          fields.add(performerType!);
        }
      case 'performer':
        if (performer != null) {
          fields.addAll(performer!);
        }
      case 'locationCode':
        if (locationCode != null) {
          fields.addAll(locationCode!);
        }
      case 'locationReference':
        if (locationReference != null) {
          fields.addAll(locationReference!);
        }
      case 'reasonCode':
        if (reasonCode != null) {
          fields.addAll(reasonCode!);
        }
      case 'reasonReference':
        if (reasonReference != null) {
          fields.addAll(reasonReference!);
        }
      case 'insurance':
        if (insurance != null) {
          fields.addAll(insurance!);
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          fields.addAll(supportingInfo!);
        }
      case 'specimen':
        if (specimen != null) {
          fields.addAll(specimen!);
        }
      case 'bodySite':
        if (bodySite != null) {
          fields.addAll(bodySite!);
        }
      case 'note':
        if (note != null) {
          fields.addAll(note!);
        }
      case 'patientInstruction':
        if (patientInstruction != null) {
          fields.add(patientInstruction!);
        }
      case 'relevantHistory':
        if (relevantHistory != null) {
          fields.addAll(relevantHistory!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a property by name, but only if that propery is a list. If it
  /// is not a list, it returns null. If it is a list, but the list is null or
  /// if the list is empty (which really shouldn't happen in FHIR), it returns
  /// an empty list.
  @override
  List<FhirBase>? getListChildByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    switch (fieldName) {
      case 'contained':
        if (contained != null) {
          return contained!;
        } else {
          return <FhirBase>[];
        }
      case 'extension':
        if (extension_ != null) {
          return extension_!;
        } else {
          return <FhirBase>[];
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          return modifierExtension!;
        } else {
          return <FhirBase>[];
        }
      case 'identifier':
        if (identifier != null) {
          return identifier!;
        } else {
          return <FhirBase>[];
        }
      case 'instantiatesCanonical':
        if (instantiatesCanonical != null) {
          return instantiatesCanonical!;
        } else {
          return <FhirBase>[];
        }
      case 'instantiatesUri':
        if (instantiatesUri != null) {
          return instantiatesUri!;
        } else {
          return <FhirBase>[];
        }
      case 'basedOn':
        if (basedOn != null) {
          return basedOn!;
        } else {
          return <FhirBase>[];
        }
      case 'replaces':
        if (replaces != null) {
          return replaces!;
        } else {
          return <FhirBase>[];
        }
      case 'category':
        if (category != null) {
          return category!;
        } else {
          return <FhirBase>[];
        }
      case 'orderDetail':
        if (orderDetail != null) {
          return orderDetail!;
        } else {
          return <FhirBase>[];
        }
      case 'performer':
        if (performer != null) {
          return performer!;
        } else {
          return <FhirBase>[];
        }
      case 'locationCode':
        if (locationCode != null) {
          return locationCode!;
        } else {
          return <FhirBase>[];
        }
      case 'locationReference':
        if (locationReference != null) {
          return locationReference!;
        } else {
          return <FhirBase>[];
        }
      case 'reasonCode':
        if (reasonCode != null) {
          return reasonCode!;
        } else {
          return <FhirBase>[];
        }
      case 'reasonReference':
        if (reasonReference != null) {
          return reasonReference!;
        } else {
          return <FhirBase>[];
        }
      case 'insurance':
        if (insurance != null) {
          return insurance!;
        } else {
          return <FhirBase>[];
        }
      case 'supportingInfo':
        if (supportingInfo != null) {
          return supportingInfo!;
        } else {
          return <FhirBase>[];
        }
      case 'specimen':
        if (specimen != null) {
          return specimen!;
        } else {
          return <FhirBase>[];
        }
      case 'bodySite':
        if (bodySite != null) {
          return bodySite!;
        } else {
          return <FhirBase>[];
        }
      case 'note':
        if (note != null) {
          return note!;
        } else {
          return <FhirBase>[];
        }
      case 'relevantHistory':
        if (relevantHistory != null) {
          return relevantHistory!;
        } else {
          return <FhirBase>[];
        }
    }
    return null;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  FhirBase setChildByName(String name, dynamic child) {
    // child must be null, or a (List of) FhirBase(s).
    // We only do runtime checks; if incorrect, we throw.
    if (child == null) {
      throw Exception('Cannot set child to null value for $name');
    }
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $name');
    }

    switch (name) {
      case 'id':
        {
          if (child is FhirString) {
            return copyWith(id: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'meta':
        {
          if (child is FhirMeta) {
            return copyWith(meta: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'implicitRules':
        {
          if (child is FhirUri) {
            return copyWith(implicitRules: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'language':
        {
          if (child is CommonLanguages) {
            return copyWith(language: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'text':
        {
          if (child is Narrative) {
            return copyWith(text: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'contained':
        {
          if (child is List<Resource>) {
            return copyWith(contained: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'extension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(extension_: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtension>) {
            return copyWith(modifierExtension: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'identifier':
        {
          if (child is List<Identifier>) {
            return copyWith(identifier: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instantiatesCanonical':
        {
          if (child is List<FhirCanonical>) {
            return copyWith(instantiatesCanonical: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'instantiatesUri':
        {
          if (child is List<FhirUri>) {
            return copyWith(instantiatesUri: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'basedOn':
        {
          if (child is List<Reference>) {
            return copyWith(basedOn: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'replaces':
        {
          if (child is List<Reference>) {
            return copyWith(replaces: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'requisition':
        {
          if (child is Identifier) {
            return copyWith(requisition: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'status':
        {
          if (child is RequestStatus) {
            return copyWith(status: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'intent':
        {
          if (child is RequestIntent) {
            return copyWith(intent: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'category':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(category: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'priority':
        {
          if (child is RequestPriority) {
            return copyWith(priority: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'doNotPerform':
        {
          if (child is FhirBoolean) {
            return copyWith(doNotPerform: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'code':
        {
          if (child is CodeableConcept) {
            return copyWith(code: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'orderDetail':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(orderDetail: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'quantityX':
        {
          if (child is QuantityXServiceRequest) {
            // child is e.g. SubjectX union
            return copyWith(quantityX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'quantityQuantity':
        {
          if (child is Quantity) {
            return copyWith(quantityX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'quantityRatio':
        {
          if (child is Ratio) {
            return copyWith(quantityX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'quantityRange':
        {
          if (child is Range) {
            return copyWith(quantityX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'subject':
        {
          if (child is Reference) {
            return copyWith(subject: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'encounter':
        {
          if (child is Reference) {
            return copyWith(encounter: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'occurrenceX':
        {
          if (child is OccurrenceXServiceRequest) {
            // child is e.g. SubjectX union
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'occurrenceFhirDateTime':
        {
          if (child is FhirDateTime) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'occurrencePeriod':
        {
          if (child is Period) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'occurrenceTiming':
        {
          if (child is Timing) {
            return copyWith(occurrenceX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'asNeededX':
        {
          if (child is AsNeededXServiceRequest) {
            // child is e.g. SubjectX union
            return copyWith(asNeededX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'asNeededFhirBoolean':
        {
          if (child is FhirBoolean) {
            return copyWith(asNeededX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'asNeededCodeableConcept':
        {
          if (child is CodeableConcept) {
            return copyWith(asNeededX: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'authoredOn':
        {
          if (child is FhirDateTime) {
            return copyWith(authoredOn: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'requester':
        {
          if (child is Reference) {
            return copyWith(requester: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'performerType':
        {
          if (child is CodeableConcept) {
            return copyWith(performerType: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'performer':
        {
          if (child is List<Reference>) {
            return copyWith(performer: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'locationCode':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(locationCode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'locationReference':
        {
          if (child is List<Reference>) {
            return copyWith(locationReference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reasonCode':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(reasonCode: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'reasonReference':
        {
          if (child is List<Reference>) {
            return copyWith(reasonReference: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'insurance':
        {
          if (child is List<Reference>) {
            return copyWith(insurance: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'supportingInfo':
        {
          if (child is List<Reference>) {
            return copyWith(supportingInfo: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'specimen':
        {
          if (child is List<Reference>) {
            return copyWith(specimen: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'bodySite':
        {
          if (child is List<CodeableConcept>) {
            return copyWith(bodySite: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'note':
        {
          if (child is List<Annotation>) {
            return copyWith(note: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'patientInstruction':
        {
          if (child is FhirString) {
            return copyWith(patientInstruction: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      case 'relevantHistory':
        {
          if (child is List<Reference>) {
            return copyWith(relevantHistory: child);
          } else {
            throw Exception('Cannot set child value for $name');
          }
        }
      default:
        throw Exception('Cannot set child value for $name');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirString'];
      case 'meta':
        return ['FhirMeta'];
      case 'implicitRules':
        return ['FhirUri'];
      case 'language':
        return ['FhirCode'];
      case 'text':
        return ['Narrative'];
      case 'contained':
        return ['Resource'];
      case 'extension':
        return ['FhirExtension'];
      case 'modifierExtension':
        return ['FhirExtension'];
      case 'identifier':
        return ['Identifier'];
      case 'instantiatesCanonical':
        return ['FhirCanonical'];
      case 'instantiatesUri':
        return ['FhirUri'];
      case 'basedOn':
        return ['Reference'];
      case 'replaces':
        return ['Reference'];
      case 'requisition':
        return ['Identifier'];
      case 'status':
        return ['FhirCode'];
      case 'intent':
        return ['FhirCode'];
      case 'category':
        return ['CodeableConcept'];
      case 'priority':
        return ['FhirCode'];
      case 'doNotPerform':
        return ['FhirBoolean'];
      case 'code':
        return ['CodeableConcept'];
      case 'orderDetail':
        return ['CodeableConcept'];
      case 'quantity':
      case 'quantityX':
        return ['Quantity', 'Ratio', 'Range'];
      case 'quantityQuantity':
        return ['Quantity'];
      case 'quantityRatio':
        return ['Ratio'];
      case 'quantityRange':
        return ['Range'];
      case 'subject':
        return ['Reference'];
      case 'encounter':
        return ['Reference'];
      case 'occurrence':
      case 'occurrenceX':
        return ['FhirDateTime', 'Period', 'Timing'];
      case 'occurrenceDateTime':
        return ['FhirDateTime'];
      case 'occurrencePeriod':
        return ['Period'];
      case 'occurrenceTiming':
        return ['Timing'];
      case 'asNeeded':
      case 'asNeededX':
        return ['FhirBoolean', 'CodeableConcept'];
      case 'asNeededBoolean':
        return ['FhirBoolean'];
      case 'asNeededCodeableConcept':
        return ['CodeableConcept'];
      case 'authoredOn':
        return ['FhirDateTime'];
      case 'requester':
        return ['Reference'];
      case 'performerType':
        return ['CodeableConcept'];
      case 'performer':
        return ['Reference'];
      case 'locationCode':
        return ['CodeableConcept'];
      case 'locationReference':
        return ['Reference'];
      case 'reasonCode':
        return ['CodeableConcept'];
      case 'reasonReference':
        return ['Reference'];
      case 'insurance':
        return ['Reference'];
      case 'supportingInfo':
        return ['Reference'];
      case 'specimen':
        return ['Reference'];
      case 'bodySite':
        return ['CodeableConcept'];
      case 'note':
        return ['Annotation'];
      case 'patientInstruction':
        return ['FhirString'];
      case 'relevantHistory':
        return ['Reference'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [ServiceRequest]
  ///  with a chosen field set to an empty object.
  /// If [propertyName] matches the field, that field is replaced by its
  /// `.empty()` variant (or list of `.empty()`).
  @override
  ServiceRequest createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          return copyWith(id: FhirString.empty());
        }
      case 'meta':
        {
          return copyWith(meta: FhirMeta.empty());
        }
      case 'implicitRules':
        {
          return copyWith(implicitRules: FhirUri.empty());
        }
      case 'language':
        {
          return copyWith(language: CommonLanguages.empty());
        }
      case 'text':
        {
          return copyWith(text: Narrative.empty());
        }
      case 'contained':
        {
          return copyWith(contained: <Resource>[]);
        }
      case 'extension':
        {
          return copyWith(extension_: <FhirExtension>[]);
        }
      case 'modifierExtension':
        {
          return copyWith(modifierExtension: <FhirExtension>[]);
        }
      case 'identifier':
        {
          return copyWith(identifier: <Identifier>[]);
        }
      case 'instantiatesCanonical':
        {
          return copyWith(instantiatesCanonical: <FhirCanonical>[]);
        }
      case 'instantiatesUri':
        {
          return copyWith(instantiatesUri: <FhirUri>[]);
        }
      case 'basedOn':
        {
          return copyWith(basedOn: <Reference>[]);
        }
      case 'replaces':
        {
          return copyWith(replaces: <Reference>[]);
        }
      case 'requisition':
        {
          return copyWith(requisition: Identifier.empty());
        }
      case 'status':
        {
          return copyWith(status: RequestStatus.empty());
        }
      case 'intent':
        {
          return copyWith(intent: RequestIntent.empty());
        }
      case 'category':
        {
          return copyWith(category: <CodeableConcept>[]);
        }
      case 'priority':
        {
          return copyWith(priority: RequestPriority.empty());
        }
      case 'doNotPerform':
        {
          return copyWith(doNotPerform: FhirBoolean.empty());
        }
      case 'code':
        {
          return copyWith(code: CodeableConcept.empty());
        }
      case 'orderDetail':
        {
          return copyWith(orderDetail: <CodeableConcept>[]);
        }
      case 'quantity':
      case 'quantityX':
      case 'quantityQuantity':
        {
          return copyWith(quantityX: Quantity.empty());
        }
      case 'quantityRatio':
        {
          return copyWith(quantityX: Ratio.empty());
        }
      case 'quantityRange':
        {
          return copyWith(quantityX: Range.empty());
        }
      case 'subject':
        {
          return copyWith(subject: Reference.empty());
        }
      case 'encounter':
        {
          return copyWith(encounter: Reference.empty());
        }
      case 'occurrence':
      case 'occurrenceX':
      case 'occurrenceDateTime':
        {
          return copyWith(occurrenceX: FhirDateTime.empty());
        }
      case 'occurrencePeriod':
        {
          return copyWith(occurrenceX: Period.empty());
        }
      case 'occurrenceTiming':
        {
          return copyWith(occurrenceX: Timing.empty());
        }
      case 'asNeeded':
      case 'asNeededX':
      case 'asNeededBoolean':
        {
          return copyWith(asNeededX: FhirBoolean.empty());
        }
      case 'asNeededCodeableConcept':
        {
          return copyWith(asNeededX: CodeableConcept.empty());
        }
      case 'authoredOn':
        {
          return copyWith(authoredOn: FhirDateTime.empty());
        }
      case 'requester':
        {
          return copyWith(requester: Reference.empty());
        }
      case 'performerType':
        {
          return copyWith(performerType: CodeableConcept.empty());
        }
      case 'performer':
        {
          return copyWith(performer: <Reference>[]);
        }
      case 'locationCode':
        {
          return copyWith(locationCode: <CodeableConcept>[]);
        }
      case 'locationReference':
        {
          return copyWith(locationReference: <Reference>[]);
        }
      case 'reasonCode':
        {
          return copyWith(reasonCode: <CodeableConcept>[]);
        }
      case 'reasonReference':
        {
          return copyWith(reasonReference: <Reference>[]);
        }
      case 'insurance':
        {
          return copyWith(insurance: <Reference>[]);
        }
      case 'supportingInfo':
        {
          return copyWith(supportingInfo: <Reference>[]);
        }
      case 'specimen':
        {
          return copyWith(specimen: <Reference>[]);
        }
      case 'bodySite':
        {
          return copyWith(bodySite: <CodeableConcept>[]);
        }
      case 'note':
        {
          return copyWith(note: <Annotation>[]);
        }
      case 'patientInstruction':
        {
          return copyWith(patientInstruction: FhirString.empty());
        }
      case 'relevantHistory':
        {
          return copyWith(relevantHistory: <Reference>[]);
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ServiceRequest clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool instantiatesCanonical = false,
    bool instantiatesUri = false,
    bool basedOn = false,
    bool replaces = false,
    bool requisition = false,
    bool category = false,
    bool priority = false,
    bool doNotPerform = false,
    bool code = false,
    bool orderDetail = false,
    bool quantity = false,
    bool encounter = false,
    bool occurrence = false,
    bool asNeeded = false,
    bool authoredOn = false,
    bool requester = false,
    bool performerType = false,
    bool performer = false,
    bool locationCode = false,
    bool locationReference = false,
    bool reasonCode = false,
    bool reasonReference = false,
    bool insurance = false,
    bool supportingInfo = false,
    bool specimen = false,
    bool bodySite = false,
    bool note = false,
    bool patientInstruction = false,
    bool relevantHistory = false,
  }) {
    return ServiceRequest(
      id: id ? null : this.id,
      meta: meta ? null : this.meta,
      implicitRules: implicitRules ? null : this.implicitRules,
      language: language ? null : this.language,
      text: text ? null : this.text,
      contained: contained ? null : this.contained,
      extension_: extension_ ? null : this.extension_,
      modifierExtension: modifierExtension ? null : this.modifierExtension,
      identifier: identifier ? null : this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ? null : this.instantiatesCanonical,
      instantiatesUri: instantiatesUri ? null : this.instantiatesUri,
      basedOn: basedOn ? null : this.basedOn,
      replaces: replaces ? null : this.replaces,
      requisition: requisition ? null : this.requisition,
      status: status,
      intent: intent,
      category: category ? null : this.category,
      priority: priority ? null : this.priority,
      doNotPerform: doNotPerform ? null : this.doNotPerform,
      code: code ? null : this.code,
      orderDetail: orderDetail ? null : this.orderDetail,
      quantityX: quantity ? null : quantityX,
      subject: subject,
      encounter: encounter ? null : this.encounter,
      occurrenceX: occurrence ? null : occurrenceX,
      asNeededX: asNeeded ? null : asNeededX,
      authoredOn: authoredOn ? null : this.authoredOn,
      requester: requester ? null : this.requester,
      performerType: performerType ? null : this.performerType,
      performer: performer ? null : this.performer,
      locationCode: locationCode ? null : this.locationCode,
      locationReference: locationReference ? null : this.locationReference,
      reasonCode: reasonCode ? null : this.reasonCode,
      reasonReference: reasonReference ? null : this.reasonReference,
      insurance: insurance ? null : this.insurance,
      supportingInfo: supportingInfo ? null : this.supportingInfo,
      specimen: specimen ? null : this.specimen,
      bodySite: bodySite ? null : this.bodySite,
      note: note ? null : this.note,
      patientInstruction: patientInstruction ? null : this.patientInstruction,
      relevantHistory: relevantHistory ? null : this.relevantHistory,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return ServiceRequest(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.identifier',
                ),
              )
              .toList() ??
          this.identifier,
      instantiatesCanonical: instantiatesCanonical
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesCanonical',
                ),
              )
              .toList() ??
          this.instantiatesCanonical,
      instantiatesUri: instantiatesUri
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.instantiatesUri',
                ),
              )
              .toList() ??
          this.instantiatesUri,
      basedOn: basedOn
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.basedOn',
                ),
              )
              .toList() ??
          this.basedOn,
      replaces: replaces
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.replaces',
                ),
              )
              .toList() ??
          this.replaces,
      requisition: requisition?.copyWith(
            objectPath: '$newObjectPath.requisition',
          ) ??
          this.requisition,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      intent: intent?.copyWith(
            objectPath: '$newObjectPath.intent',
          ) ??
          this.intent,
      category: category
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.category',
                ),
              )
              .toList() ??
          this.category,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      doNotPerform: doNotPerform?.copyWith(
            objectPath: '$newObjectPath.doNotPerform',
          ) ??
          this.doNotPerform,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      orderDetail: orderDetail
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.orderDetail',
                ),
              )
              .toList() ??
          this.orderDetail,
      quantityX: quantityX?.copyWith(
            objectPath: '$newObjectPath.quantityX',
          ) as QuantityXServiceRequest? ??
          this.quantityX,
      subject: subject?.copyWith(
            objectPath: '$newObjectPath.subject',
          ) ??
          this.subject,
      encounter: encounter?.copyWith(
            objectPath: '$newObjectPath.encounter',
          ) ??
          this.encounter,
      occurrenceX: occurrenceX?.copyWith(
            objectPath: '$newObjectPath.occurrenceX',
          ) as OccurrenceXServiceRequest? ??
          this.occurrenceX,
      asNeededX: asNeededX?.copyWith(
            objectPath: '$newObjectPath.asNeededX',
          ) as AsNeededXServiceRequest? ??
          this.asNeededX,
      authoredOn: authoredOn?.copyWith(
            objectPath: '$newObjectPath.authoredOn',
          ) ??
          this.authoredOn,
      requester: requester?.copyWith(
            objectPath: '$newObjectPath.requester',
          ) ??
          this.requester,
      performerType: performerType?.copyWith(
            objectPath: '$newObjectPath.performerType',
          ) ??
          this.performerType,
      performer: performer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.performer',
                ),
              )
              .toList() ??
          this.performer,
      locationCode: locationCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.locationCode',
                ),
              )
              .toList() ??
          this.locationCode,
      locationReference: locationReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.locationReference',
                ),
              )
              .toList() ??
          this.locationReference,
      reasonCode: reasonCode
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonCode',
                ),
              )
              .toList() ??
          this.reasonCode,
      reasonReference: reasonReference
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.reasonReference',
                ),
              )
              .toList() ??
          this.reasonReference,
      insurance: insurance
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.insurance',
                ),
              )
              .toList() ??
          this.insurance,
      supportingInfo: supportingInfo
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.supportingInfo',
                ),
              )
              .toList() ??
          this.supportingInfo,
      specimen: specimen
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.specimen',
                ),
              )
              .toList() ??
          this.specimen,
      bodySite: bodySite
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.bodySite',
                ),
              )
              .toList() ??
          this.bodySite,
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
      patientInstruction: patientInstruction?.copyWith(
            objectPath: '$newObjectPath.patientInstruction',
          ) ??
          this.patientInstruction,
      relevantHistory: relevantHistory
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.relevantHistory',
                ),
              )
              .toList() ??
          this.relevantHistory,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ServiceRequest) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!listEquals<Identifier>(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!listEquals<FhirCanonical>(
      instantiatesCanonical,
      o.instantiatesCanonical,
    )) {
      return false;
    }
    if (!listEquals<FhirUri>(
      instantiatesUri,
      o.instantiatesUri,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      basedOn,
      o.basedOn,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      replaces,
      o.replaces,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(requisition, o.requisition)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(intent, o.intent)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      category,
      o.category,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(priority, o.priority)) {
      return false;
    }
    if (!equalsDeepWithNull(doNotPerform, o.doNotPerform)) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      orderDetail,
      o.orderDetail,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(quantityX, o.quantityX)) {
      return false;
    }
    if (!equalsDeepWithNull(subject, o.subject)) {
      return false;
    }
    if (!equalsDeepWithNull(encounter, o.encounter)) {
      return false;
    }
    if (!equalsDeepWithNull(occurrenceX, o.occurrenceX)) {
      return false;
    }
    if (!equalsDeepWithNull(asNeededX, o.asNeededX)) {
      return false;
    }
    if (!equalsDeepWithNull(authoredOn, o.authoredOn)) {
      return false;
    }
    if (!equalsDeepWithNull(requester, o.requester)) {
      return false;
    }
    if (!equalsDeepWithNull(performerType, o.performerType)) {
      return false;
    }
    if (!listEquals<Reference>(
      performer,
      o.performer,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      locationCode,
      o.locationCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      locationReference,
      o.locationReference,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      reasonCode,
      o.reasonCode,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      reasonReference,
      o.reasonReference,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      insurance,
      o.insurance,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      supportingInfo,
      o.supportingInfo,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      specimen,
      o.specimen,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      bodySite,
      o.bodySite,
    )) {
      return false;
    }
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(patientInstruction, o.patientInstruction)) {
      return false;
    }
    if (!listEquals<Reference>(
      relevantHistory,
      o.relevantHistory,
    )) {
      return false;
    }
    return true;
  }
}
