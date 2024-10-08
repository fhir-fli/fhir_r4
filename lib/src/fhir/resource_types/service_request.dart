import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'service_request.g.dart';

/// [ServiceRequest] /// A record of a request for service such as diagnostic investigations,
/// treatments, or operations to be performed.
@JsonSerializable()
class ServiceRequest extends DomainResource {
  ServiceRequest({
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
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.replaces,
    this.requisition,
    required this.status,
    this.statusElement,
    required this.intent,
    this.intentElement,
    this.category,
    this.priority,
    this.priorityElement,
    this.doNotPerform,
    this.doNotPerformElement,
    this.code,
    this.orderDetail,
    this.quantityQuantity,
    this.quantityRatio,
    this.quantityRange,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.asNeededBoolean,
    this.asNeededBooleanElement,
    this.asNeededCodeableConcept,
    this.authoredOn,
    this.authoredOnElement,
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
    this.patientInstructionElement,
    this.relevantHistory,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.ServiceRequest,
            fhirType: 'ServiceRequest');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this order instance by the orderer and/or the
  /// receiver and/or order fulfiller.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other
  /// definition that is adhered to in whole or in part by this ServiceRequest.
  @JsonKey(name: 'instantiatesCanonical')
  final List<FhirCanonical>? instantiatesCanonical;
  @JsonKey(name: '_instantiatesCanonical')
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// ServiceRequest.
  @JsonKey(name: 'instantiatesUri')
  final List<FhirUri>? instantiatesUri;
  @JsonKey(name: '_instantiatesUri')
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// Plan/proposal/order fulfilled by this request.
  @JsonKey(name: 'basedOn')
  final List<Reference>? basedOn;

  /// [replaces] /// The request takes the place of the referenced completed or terminated
  /// request(s).
  @JsonKey(name: 'replaces')
  final List<Reference>? replaces;

  /// [requisition] /// A shared identifier common to all service requests that were authorized
  /// more or less simultaneously by a single author, representing the composite
  /// or group identifier.
  @JsonKey(name: 'requisition')
  final Identifier? requisition;

  /// [status] /// The status of the order.
  @JsonKey(name: 'status')
  final RequestStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [intent] /// Whether the request is a proposal, plan, an original order or a reflex
  /// order.
  @JsonKey(name: 'intent')
  final RequestIntent intent;
  @JsonKey(name: '_intent')
  final Element? intentElement;

  /// [category] /// A code that classifies the service for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  @JsonKey(name: 'category')
  final List<ServiceRequestCategoryCodes>? category;

  /// [priority] /// Indicates how quickly the ServiceRequest should be addressed with respect
  /// to other requests.
  @JsonKey(name: 'priority')
  final RequestPriority? priority;
  @JsonKey(name: '_priority')
  final Element? priorityElement;

  /// [doNotPerform] /// Set this to true if the record is saying that the service/procedure should
  /// NOT be performed.
  @JsonKey(name: 'doNotPerform')
  final FhirBoolean? doNotPerform;
  @JsonKey(name: '_doNotPerform')
  final Element? doNotPerformElement;

  /// [code] /// A code that identifies a particular service (i.e., procedure, diagnostic
  /// investigation, or panel of investigations) that have been requested.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [orderDetail] /// Additional details and instructions about the how the services are to be
  /// delivered. For example, and order for a urinary catheter may have an order
  /// detail for an external or indwelling catheter, or an order for a bandage
  /// may require additional instructions specifying how the bandage should be
  /// applied.
  @JsonKey(name: 'orderDetail')
  final List<ServiceRequestOrderDetailsCodes>? orderDetail;

  /// [quantityQuantity] /// An amount of service being requested which can be a quantity ( for example
  /// $1,500 home modification), a ratio ( for example, 20 half day visits per
  /// month), or a range (2.0 to 1.8 Gy per fraction).
  @JsonKey(name: 'quantityQuantity')
  final Quantity? quantityQuantity;

  /// [quantityRatio] /// An amount of service being requested which can be a quantity ( for example
  /// $1,500 home modification), a ratio ( for example, 20 half day visits per
  /// month), or a range (2.0 to 1.8 Gy per fraction).
  @JsonKey(name: 'quantityRatio')
  final Ratio? quantityRatio;

  /// [quantityRange] /// An amount of service being requested which can be a quantity ( for example
  /// $1,500 home modification), a ratio ( for example, 20 half day visits per
  /// month), or a range (2.0 to 1.8 Gy per fraction).
  @JsonKey(name: 'quantityRange')
  final Range? quantityRange;

  /// [subject] /// On whom or what the service is to be performed. This is usually a human
  /// patient, but can also be requested on animals, groups of humans or animals,
  /// devices such as dialysis machines, or even locations (typically for
  /// environmental scans).
  @JsonKey(name: 'subject')
  final Reference subject;

  /// [encounter] /// An encounter that provides additional information about the healthcare
  /// context in which this request is made.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [occurrenceDateTime] /// The date/time at which the requested service should occur.
  @JsonKey(name: 'occurrenceDateTime')
  final FhirDateTime? occurrenceDateTime;
  @JsonKey(name: '_occurrenceDateTime')
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// The date/time at which the requested service should occur.
  @JsonKey(name: 'occurrencePeriod')
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// The date/time at which the requested service should occur.
  @JsonKey(name: 'occurrenceTiming')
  final Timing? occurrenceTiming;

  /// [asNeededBoolean] /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  @JsonKey(name: 'asNeededBoolean')
  final FhirBoolean? asNeededBoolean;
  @JsonKey(name: '_asNeededBoolean')
  final Element? asNeededBooleanElement;

  /// [asNeededCodeableConcept] /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  @JsonKey(name: 'asNeededCodeableConcept')
  final CodeableConcept? asNeededCodeableConcept;

  /// [authoredOn] /// When the request transitioned to being actionable.
  @JsonKey(name: 'authoredOn')
  final FhirDateTime? authoredOn;
  @JsonKey(name: '_authoredOn')
  final Element? authoredOnElement;

  /// [requester] /// The individual who initiated the request and has responsibility for its
  /// activation.
  @JsonKey(name: 'requester')
  final Reference? requester;

  /// [performerType] /// Desired type of performer for doing the requested service.
  @JsonKey(name: 'performerType')
  final CodeableConcept? performerType;

  /// [performer] /// The desired performer for doing the requested service. For example, the
  /// surgeon, dermatopathologist, endoscopist, etc.
  @JsonKey(name: 'performer')
  final List<Reference>? performer;

  /// [locationCode] /// The preferred location(s) where the procedure should actually happen in
  /// coded or free text form. E.g. at home or nursing day care center.
  @JsonKey(name: 'locationCode')
  final List<CodeableConcept>? locationCode;

  /// [locationReference] /// A reference to the the preferred location(s) where the procedure should
  /// actually happen. E.g. at home or nursing day care center.
  @JsonKey(name: 'locationReference')
  final List<Reference>? locationReference;

  /// [reasonCode] /// An explanation or justification for why this service is being requested in
  /// coded or textual form. This is often for billing purposes. May relate to
  /// the resources referred to in `supportingInfo`.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource that provides a justification for why this
  /// service is being requested. May relate to the resources referred to in
  /// `supportingInfo`.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [insurance] /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be needed for delivering the requested service.
  @JsonKey(name: 'insurance')
  final List<Reference>? insurance;

  /// [supportingInfo] /// Additional clinical information about the patient or specimen that may
  /// influence the services or their interpretations. This information includes
  /// diagnosis, clinical findings and other observations. In laboratory ordering
  /// these are typically referred to as "ask at order entry questions (AOEs)".
  /// This includes observations explicitly requested by the producer (filler) to
  /// provide context or supporting information needed to complete the order. For
  /// example, reporting the amount of inspired oxygen for blood gas
  /// measurements.
  @JsonKey(name: 'supportingInfo')
  final List<Reference>? supportingInfo;

  /// [specimen] /// One or more specimens that the laboratory procedure will use.
  @JsonKey(name: 'specimen')
  final List<Reference>? specimen;

  /// [bodySite] /// Anatomic location where the procedure should be performed. This is the
  /// target site.
  @JsonKey(name: 'bodySite')
  final List<CodeableConcept>? bodySite;

  /// [note] /// Any other notes and comments made about the service request. For example,
  /// internal billing notes.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [patientInstruction] /// Instructions in terms that are understood by the patient or consumer.
  @JsonKey(name: 'patientInstruction')
  final FhirString? patientInstruction;
  @JsonKey(name: '_patientInstruction')
  final Element? patientInstructionElement;

  /// [relevantHistory] /// Key events in the history of the request.
  @JsonKey(name: 'relevantHistory')
  final List<Reference>? relevantHistory;
  factory ServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ServiceRequestToJson(this);

  @override
  ServiceRequest clone() => throw UnimplementedError();
  @override
  ServiceRequest copyWith({
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
    List<FhirCanonical>? instantiatesCanonical,
    List<Element>? instantiatesCanonicalElement,
    List<FhirUri>? instantiatesUri,
    List<Element>? instantiatesUriElement,
    List<Reference>? basedOn,
    List<Reference>? replaces,
    Identifier? requisition,
    RequestStatus? status,
    Element? statusElement,
    RequestIntent? intent,
    Element? intentElement,
    List<ServiceRequestCategoryCodes>? category,
    RequestPriority? priority,
    Element? priorityElement,
    FhirBoolean? doNotPerform,
    Element? doNotPerformElement,
    CodeableConcept? code,
    List<ServiceRequestOrderDetailsCodes>? orderDetail,
    Quantity? quantityQuantity,
    Ratio? quantityRatio,
    Range? quantityRange,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    FhirBoolean? asNeededBoolean,
    Element? asNeededBooleanElement,
    CodeableConcept? asNeededCodeableConcept,
    FhirDateTime? authoredOn,
    Element? authoredOnElement,
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
    Element? patientInstructionElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      instantiatesCanonical:
          instantiatesCanonical ?? this.instantiatesCanonical,
      instantiatesCanonicalElement:
          instantiatesCanonicalElement ?? this.instantiatesCanonicalElement,
      instantiatesUri: instantiatesUri ?? this.instantiatesUri,
      instantiatesUriElement:
          instantiatesUriElement ?? this.instantiatesUriElement,
      basedOn: basedOn ?? this.basedOn,
      replaces: replaces ?? this.replaces,
      requisition: requisition ?? this.requisition,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      intent: intent ?? this.intent,
      intentElement: intentElement ?? this.intentElement,
      category: category ?? this.category,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      doNotPerformElement: doNotPerformElement ?? this.doNotPerformElement,
      code: code ?? this.code,
      orderDetail: orderDetail ?? this.orderDetail,
      quantityQuantity: quantityQuantity ?? this.quantityQuantity,
      quantityRatio: quantityRatio ?? this.quantityRatio,
      quantityRange: quantityRange ?? this.quantityRange,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      asNeededBoolean: asNeededBoolean ?? this.asNeededBoolean,
      asNeededBooleanElement:
          asNeededBooleanElement ?? this.asNeededBooleanElement,
      asNeededCodeableConcept:
          asNeededCodeableConcept ?? this.asNeededCodeableConcept,
      authoredOn: authoredOn ?? this.authoredOn,
      authoredOnElement: authoredOnElement ?? this.authoredOnElement,
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
      patientInstructionElement:
          patientInstructionElement ?? this.patientInstructionElement,
      relevantHistory: relevantHistory ?? this.relevantHistory,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ServiceRequest.fromYaml(dynamic yaml) => yaml is String
      ? ServiceRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ServiceRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ServiceRequest cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ServiceRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ServiceRequest.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
