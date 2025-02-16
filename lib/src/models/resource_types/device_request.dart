import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [DeviceRequest]
/// Represents a request for a patient to employ a medical device. The
/// device may be an implantable device, or an external assistive device,
/// such as a walker.
class DeviceRequest extends DomainResource {
  /// Primary constructor for
  /// [DeviceRequest]

  const DeviceRequest({
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
    this.priorRequest,
    this.groupIdentifier,
    this.status,
    required this.intent,
    this.priority,
    required this.codeX,
    this.parameter,
    required this.subject,
    this.encounter,
    this.occurrenceX,
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
  }) : super(
          objectPath: 'DeviceRequest',
          resourceType: R4ResourceType.DeviceRequest,
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DeviceRequest.empty() => DeviceRequest(
        intent: RequestIntent.values.first,
        codeX: Reference.empty(),
        subject: Reference.empty(),
      );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceRequest';
    return DeviceRequest(
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
      priorRequest: (json['priorRequest'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.priorRequest',
              },
            ),
          )
          .toList(),
      groupIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'groupIdentifier',
        Identifier.fromJson,
        '$objectPath.groupIdentifier',
      ),
      status: JsonParser.parsePrimitive<RequestStatus>(
        json,
        'status',
        RequestStatus.fromJson,
        '$objectPath.status',
      ),
      intent: JsonParser.parsePrimitive<RequestIntent>(
        json,
        'intent',
        RequestIntent.fromJson,
        '$objectPath.intent',
      )!,
      priority: JsonParser.parsePrimitive<RequestPriority>(
        json,
        'priority',
        RequestPriority.fromJson,
        '$objectPath.priority',
      ),
      codeX: JsonParser.parsePolymorphic<CodeXDeviceRequest>(
        json,
        {
          'codeReference': Reference.fromJson,
          'codeCodeableConcept': CodeableConcept.fromJson,
        },
        objectPath,
      )!,
      parameter: (json['parameter'] as List<dynamic>?)
          ?.map<DeviceRequestParameter>(
            (v) => DeviceRequestParameter.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.parameter',
              },
            ),
          )
          .toList(),
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
      occurrenceX: JsonParser.parsePolymorphic<OccurrenceXDeviceRequest>(
        json,
        {
          'occurrenceDateTime': FhirDateTime.fromJson,
          'occurrencePeriod': Period.fromJson,
          'occurrenceTiming': Timing.fromJson,
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
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
        '$objectPath.performer',
      ),
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

  /// Deserialize [DeviceRequest]
  /// from a [String] or [YamlMap] object
  factory DeviceRequest.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceRequest.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceRequest.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceRequest '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceRequest]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceRequest.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceRequest';

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

  /// [codeX]
  /// The details of the device to be used.
  final CodeXDeviceRequest codeX;

  /// Getter for [codeReference] as a Reference
  Reference? get codeReference => codeX.isAs<Reference>();

  /// Getter for [codeCodeableConcept] as a CodeableConcept
  CodeableConcept? get codeCodeableConcept => codeX.isAs<CodeableConcept>();

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

  /// [occurrenceX]
  /// The timing schedule for the use of the device. The Schedule data type
  /// allows many different expressions, for example. "Every 8 hours"; "Three
  /// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec
  /// 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  final OccurrenceXDeviceRequest? occurrenceX;

  /// Getter for [occurrenceDateTime] as a FhirDateTime
  FhirDateTime? get occurrenceDateTime => occurrenceX?.isAs<FhirDateTime>();

  /// Getter for [occurrencePeriod] as a Period
  Period? get occurrencePeriod => occurrenceX?.isAs<Period>();

  /// Getter for [occurrenceTiming] as a Timing
  Timing? get occurrenceTiming => occurrenceX?.isAs<Timing>();

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
    addField('priorRequest', priorRequest);
    addField('groupIdentifier', groupIdentifier);
    addField('status', status);
    addField('intent', intent);
    addField('priority', priority);
    final codeXFhirType = codeX.fhirType;
    addField('code${codeXFhirType.capitalize()}', codeX);

    addField('parameter', parameter);
    addField('subject', subject);
    addField('encounter', encounter);
    if (occurrenceX != null) {
      final fhirType = occurrenceX!.fhirType;
      addField('occurrence${fhirType.capitalize()}', occurrenceX);
    }

    addField('authoredOn', authoredOn);
    addField('requester', requester);
    addField('performerType', performerType);
    addField('performer', performer);
    addField('reasonCode', reasonCode);
    addField('reasonReference', reasonReference);
    addField('insurance', insurance);
    addField('supportingInfo', supportingInfo);
    addField('note', note);
    addField('relevantHistory', relevantHistory);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
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
      'priorRequest',
      'groupIdentifier',
      'status',
      'intent',
      'priority',
      'codeX',
      'parameter',
      'subject',
      'encounter',
      'occurrenceX',
      'authoredOn',
      'requester',
      'performerType',
      'performer',
      'reasonCode',
      'reasonReference',
      'insurance',
      'supportingInfo',
      'note',
      'relevantHistory',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
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
      case 'priorRequest':
        if (priorRequest != null) {
          fields.addAll(priorRequest!);
        }
      case 'groupIdentifier':
        if (groupIdentifier != null) {
          fields.add(groupIdentifier!);
        }
      case 'status':
        if (status != null) {
          fields.add(status!);
        }
      case 'intent':
        fields.add(intent);
      case 'priority':
        if (priority != null) {
          fields.add(priority!);
        }
      case 'code':
        fields.add(codeX);
      case 'codeX':
        fields.add(codeX);
      case 'codeReference':
        if (codeX is Reference) {
          fields.add(codeX);
        }
      case 'codeCodeableConcept':
        if (codeX is CodeableConcept) {
          fields.add(codeX);
        }
      case 'parameter':
        if (parameter != null) {
          fields.addAll(parameter!);
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
          fields.add(performer!);
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
      case 'note':
        if (note != null) {
          fields.addAll(note!);
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

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    CodeXDeviceRequest? codeX,
    List<DeviceRequestParameter>? parameter,
    Reference? subject,
    Reference? encounter,
    OccurrenceXDeviceRequest? occurrenceX,
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return DeviceRequest(
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
      priorRequest: priorRequest
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.priorRequest',
                ),
              )
              .toList() ??
          this.priorRequest,
      groupIdentifier: groupIdentifier?.copyWith(
            objectPath: '$newObjectPath.groupIdentifier',
          ) ??
          this.groupIdentifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      intent: intent?.copyWith(
            objectPath: '$newObjectPath.intent',
          ) ??
          this.intent,
      priority: priority?.copyWith(
            objectPath: '$newObjectPath.priority',
          ) ??
          this.priority,
      codeX: codeX?.copyWith(
            objectPath: '$newObjectPath.codeX',
          ) as CodeXDeviceRequest? ??
          this.codeX,
      parameter: parameter
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.parameter',
                ),
              )
              .toList() ??
          this.parameter,
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
          ) as OccurrenceXDeviceRequest? ??
          this.occurrenceX,
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
      performer: performer?.copyWith(
            objectPath: '$newObjectPath.performer',
          ) ??
          this.performer,
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
      note: note
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.note',
                ),
              )
              .toList() ??
          this.note,
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
    if (o is! DeviceRequest) {
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
      priorRequest,
      o.priorRequest,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(groupIdentifier, o.groupIdentifier)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!equalsDeepWithNull(intent, o.intent)) {
      return false;
    }
    if (!equalsDeepWithNull(priority, o.priority)) {
      return false;
    }
    if (!equalsDeepWithNull(codeX, o.codeX)) {
      return false;
    }
    if (!listEquals<DeviceRequestParameter>(
      parameter,
      o.parameter,
    )) {
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
    if (!equalsDeepWithNull(authoredOn, o.authoredOn)) {
      return false;
    }
    if (!equalsDeepWithNull(requester, o.requester)) {
      return false;
    }
    if (!equalsDeepWithNull(performerType, o.performerType)) {
      return false;
    }
    if (!equalsDeepWithNull(performer, o.performer)) {
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
    if (!listEquals<Annotation>(
      note,
      o.note,
    )) {
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

/// [DeviceRequestParameter]
/// Specific parameters for the ordered item. For example, the prism value
/// for lenses.
class DeviceRequestParameter extends BackboneElement {
  /// Primary constructor for
  /// [DeviceRequestParameter]

  const DeviceRequestParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.valueX,
    super.disallowExtensions,
  }) : super(
          objectPath: 'DeviceRequest.parameter',
        );

  /// An empty constructor for partial usage.
  /// All required fields are assigned placeholder values, so
  /// you can instantiate and fill them in later if desired.
  factory DeviceRequestParameter.empty() => DeviceRequestParameter();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory DeviceRequestParameter.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'DeviceRequest.parameter';
    return DeviceRequestParameter(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
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
      code: JsonParser.parseObject<CodeableConcept>(
        json,
        'code',
        CodeableConcept.fromJson,
        '$objectPath.code',
      ),
      valueX: JsonParser.parsePolymorphic<ValueXDeviceRequestParameter>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueRange': Range.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
        },
        objectPath,
      ),
    );
  }

  /// Deserialize [DeviceRequestParameter]
  /// from a [String] or [YamlMap] object
  factory DeviceRequestParameter.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return DeviceRequestParameter.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return DeviceRequestParameter.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'DeviceRequestParameter '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [DeviceRequestParameter]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory DeviceRequestParameter.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return DeviceRequestParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'DeviceRequestParameter';

  /// [code]
  /// A code or string that identifies the device detail being asserted.
  final CodeableConcept? code;

  /// [valueX]
  /// The value of the device detail.
  final ValueXDeviceRequestParameter? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueRange] as a Range
  Range? get valueRange => valueX?.isAs<Range>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();
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

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField('value${fhirType.capitalize()}', valueX);
    }

    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'valueX',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        if (code != null) {
          fields.add(code!);
        }
      case 'value':
        fields.add(valueX!);
      case 'valueX':
        fields.add(valueX!);
      case 'valueCodeableConcept':
        if (valueX is CodeableConcept) {
          fields.add(valueX!);
        }
      case 'valueQuantity':
        if (valueX is Quantity) {
          fields.add(valueX!);
        }
      case 'valueRange':
        if (valueX is Range) {
          fields.add(valueX!);
        }
      case 'valueBoolean':
        if (valueX is FhirBoolean) {
          fields.add(valueX!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  DeviceRequestParameter clone() => throw UnimplementedError();
  @override
  DeviceRequestParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    ValueXDeviceRequestParameter? valueX,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return DeviceRequestParameter(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
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
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      valueX: valueX?.copyWith(
            objectPath: '$newObjectPath.valueX',
          ) as ValueXDeviceRequestParameter? ??
          this.valueX,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! DeviceRequestParameter) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
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
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!equalsDeepWithNull(valueX, o.valueX)) {
      return false;
    }
    return true;
  }
}
