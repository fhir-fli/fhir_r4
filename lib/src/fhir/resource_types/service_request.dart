import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ServiceRequest] /// A record of a request for service such as diagnostic investigations,
/// treatments, or operations to be performed.
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
  }) : super(resourceType: R4ResourceType.ServiceRequest);

  @override
  String get fhirType => 'ServiceRequest';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this order instance by the orderer and/or the
  /// receiver and/or order fulfiller.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other
  /// definition that is adhered to in whole or in part by this ServiceRequest.
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// ServiceRequest.
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// Plan/proposal/order fulfilled by this request.
  final List<Reference>? basedOn;

  /// [replaces] /// The request takes the place of the referenced completed or terminated
  /// request(s).
  final List<Reference>? replaces;

  /// [requisition] /// A shared identifier common to all service requests that were authorized
  /// more or less simultaneously by a single author, representing the composite
  /// or group identifier.
  final Identifier? requisition;

  /// [status] /// The status of the order.
  final RequestStatus status;
  final Element? statusElement;

  /// [intent] /// Whether the request is a proposal, plan, an original order or a reflex
  /// order.
  final RequestIntent intent;
  final Element? intentElement;

  /// [category] /// A code that classifies the service for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  final List<CodeableConcept>? category;

  /// [priority] /// Indicates how quickly the ServiceRequest should be addressed with respect
  /// to other requests.
  final RequestPriority? priority;
  final Element? priorityElement;

  /// [doNotPerform] /// Set this to true if the record is saying that the service/procedure should
  /// NOT be performed.
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;

  /// [code] /// A code that identifies a particular service (i.e., procedure, diagnostic
  /// investigation, or panel of investigations) that have been requested.
  final CodeableConcept? code;

  /// [orderDetail] /// Additional details and instructions about the how the services are to be
  /// delivered. For example, and order for a urinary catheter may have an order
  /// detail for an external or indwelling catheter, or an order for a bandage
  /// may require additional instructions specifying how the bandage should be
  /// applied.
  final List<CodeableConcept>? orderDetail;

  /// [quantityQuantity] /// An amount of service being requested which can be a quantity ( for example
  /// $1,500 home modification), a ratio ( for example, 20 half day visits per
  /// month), or a range (2.0 to 1.8 Gy per fraction).
  final Quantity? quantityQuantity;

  /// [quantityRatio] /// An amount of service being requested which can be a quantity ( for example
  /// $1,500 home modification), a ratio ( for example, 20 half day visits per
  /// month), or a range (2.0 to 1.8 Gy per fraction).
  final Ratio? quantityRatio;

  /// [quantityRange] /// An amount of service being requested which can be a quantity ( for example
  /// $1,500 home modification), a ratio ( for example, 20 half day visits per
  /// month), or a range (2.0 to 1.8 Gy per fraction).
  final Range? quantityRange;

  /// [subject] /// On whom or what the service is to be performed. This is usually a human
  /// patient, but can also be requested on animals, groups of humans or animals,
  /// devices such as dialysis machines, or even locations (typically for
  /// environmental scans).
  final Reference subject;

  /// [encounter] /// An encounter that provides additional information about the healthcare
  /// context in which this request is made.
  final Reference? encounter;

  /// [occurrenceDateTime] /// The date/time at which the requested service should occur.
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// The date/time at which the requested service should occur.
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// The date/time at which the requested service should occur.
  final Timing? occurrenceTiming;

  /// [asNeededBoolean] /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  final FhirBoolean? asNeededBoolean;
  final Element? asNeededBooleanElement;

  /// [asNeededCodeableConcept] /// If a CodeableConcept is present, it indicates the pre-condition for
  /// performing the service. For example "pain", "on flare-up", etc.
  final CodeableConcept? asNeededCodeableConcept;

  /// [authoredOn] /// When the request transitioned to being actionable.
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;

  /// [requester] /// The individual who initiated the request and has responsibility for its
  /// activation.
  final Reference? requester;

  /// [performerType] /// Desired type of performer for doing the requested service.
  final CodeableConcept? performerType;

  /// [performer] /// The desired performer for doing the requested service. For example, the
  /// surgeon, dermatopathologist, endoscopist, etc.
  final List<Reference>? performer;

  /// [locationCode] /// The preferred location(s) where the procedure should actually happen in
  /// coded or free text form. E.g. at home or nursing day care center.
  final List<CodeableConcept>? locationCode;

  /// [locationReference] /// A reference to the the preferred location(s) where the procedure should
  /// actually happen. E.g. at home or nursing day care center.
  final List<Reference>? locationReference;

  /// [reasonCode] /// An explanation or justification for why this service is being requested in
  /// coded or textual form. This is often for billing purposes. May relate to
  /// the resources referred to in `supportingInfo`.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates another resource that provides a justification for why this
  /// service is being requested. May relate to the resources referred to in
  /// `supportingInfo`.
  final List<Reference>? reasonReference;

  /// [insurance] /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be needed for delivering the requested service.
  final List<Reference>? insurance;

  /// [supportingInfo] /// Additional clinical information about the patient or specimen that may
  /// influence the services or their interpretations. This information includes
  /// diagnosis, clinical findings and other observations. In laboratory ordering
  /// these are typically referred to as "ask at order entry questions (AOEs)".
  /// This includes observations explicitly requested by the producer (filler) to
  /// provide context or supporting information needed to complete the order. For
  /// example, reporting the amount of inspired oxygen for blood gas
  /// measurements.
  final List<Reference>? supportingInfo;

  /// [specimen] /// One or more specimens that the laboratory procedure will use.
  final List<Reference>? specimen;

  /// [bodySite] /// Anatomic location where the procedure should be performed. This is the
  /// target site.
  final List<CodeableConcept>? bodySite;

  /// [note] /// Any other notes and comments made about the service request. For example,
  /// internal billing notes.
  final List<Annotation>? note;

  /// [patientInstruction] /// Instructions in terms that are understood by the patient or consumer.
  final FhirString? patientInstruction;
  final Element? patientInstructionElement;

  /// [relevantHistory] /// Key events in the history of the request.
  final List<Reference>? relevantHistory;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (instantiatesCanonical != null && instantiatesCanonical!.isNotEmpty) {
      json['instantiatesCanonical'] =
          instantiatesCanonical!.map((FhirCanonical v) => v.value).toList();
    }
    if (instantiatesCanonicalElement != null &&
        instantiatesCanonicalElement!.isNotEmpty) {
      json['_instantiatesCanonical'] =
          instantiatesCanonicalElement!.map((Element v) => v.toJson()).toList();
    }
    if (instantiatesUri != null && instantiatesUri!.isNotEmpty) {
      json['instantiatesUri'] =
          instantiatesUri!.map((FhirUri v) => v.value).toList();
    }
    if (instantiatesUriElement != null && instantiatesUriElement!.isNotEmpty) {
      json['_instantiatesUri'] =
          instantiatesUriElement!.map((Element v) => v.toJson()).toList();
    }
    if (basedOn != null && basedOn!.isNotEmpty) {
      json['basedOn'] =
          basedOn!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (replaces != null && replaces!.isNotEmpty) {
      json['replaces'] =
          replaces!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (requisition != null) {
      json['requisition'] = requisition!.toJson();
    }
    json['status'] = status.toJson();
    json['intent'] = intent.toJson();
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (priority != null) {
      json['priority'] = priority!.toJson();
    }
    if (doNotPerform?.value != null) {
      json['doNotPerform'] = doNotPerform!.value;
    }
    if (doNotPerformElement != null) {
      json['_doNotPerform'] = doNotPerformElement!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (orderDetail != null && orderDetail!.isNotEmpty) {
      json['orderDetail'] =
          orderDetail!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (quantityQuantity != null) {
      json['quantityQuantity'] = quantityQuantity!.toJson();
    }
    if (quantityRatio != null) {
      json['quantityRatio'] = quantityRatio!.toJson();
    }
    if (quantityRange != null) {
      json['quantityRange'] = quantityRange!.toJson();
    }
    json['subject'] = subject.toJson();
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (occurrenceDateTime?.value != null) {
      json['occurrenceDateTime'] = occurrenceDateTime!.value;
    }
    if (occurrenceDateTimeElement != null) {
      json['_occurrenceDateTime'] = occurrenceDateTimeElement!.toJson();
    }
    if (occurrencePeriod != null) {
      json['occurrencePeriod'] = occurrencePeriod!.toJson();
    }
    if (occurrenceTiming != null) {
      json['occurrenceTiming'] = occurrenceTiming!.toJson();
    }
    if (asNeededBoolean?.value != null) {
      json['asNeededBoolean'] = asNeededBoolean!.value;
    }
    if (asNeededBooleanElement != null) {
      json['_asNeededBoolean'] = asNeededBooleanElement!.toJson();
    }
    if (asNeededCodeableConcept != null) {
      json['asNeededCodeableConcept'] = asNeededCodeableConcept!.toJson();
    }
    if (authoredOn?.value != null) {
      json['authoredOn'] = authoredOn!.value;
    }
    if (authoredOnElement != null) {
      json['_authoredOn'] = authoredOnElement!.toJson();
    }
    if (requester != null) {
      json['requester'] = requester!.toJson();
    }
    if (performerType != null) {
      json['performerType'] = performerType!.toJson();
    }
    if (performer != null && performer!.isNotEmpty) {
      json['performer'] =
          performer!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (locationCode != null && locationCode!.isNotEmpty) {
      json['locationCode'] = locationCode!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (locationReference != null && locationReference!.isNotEmpty) {
      json['locationReference'] =
          locationReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (insurance != null && insurance!.isNotEmpty) {
      json['insurance'] =
          insurance!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (supportingInfo != null && supportingInfo!.isNotEmpty) {
      json['supportingInfo'] =
          supportingInfo!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (specimen != null && specimen!.isNotEmpty) {
      json['specimen'] =
          specimen!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (bodySite != null && bodySite!.isNotEmpty) {
      json['bodySite'] =
          bodySite!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (patientInstruction?.value != null) {
      json['patientInstruction'] = patientInstruction!.value;
    }
    if (patientInstructionElement != null) {
      json['_patientInstruction'] = patientInstructionElement!.toJson();
    }
    if (relevantHistory != null && relevantHistory!.isNotEmpty) {
      json['relevantHistory'] =
          relevantHistory!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    return json;
  }

  factory ServiceRequest.fromJson(Map<String, dynamic> json) {
    return ServiceRequest(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instantiatesCanonical: json['instantiatesCanonical'] != null
          ? (json['instantiatesCanonical'] as List<dynamic>)
              .map<FhirCanonical>(
                  (dynamic v) => FhirCanonical.fromJson(v as dynamic))
              .toList()
          : null,
      instantiatesCanonicalElement: json['_instantiatesCanonical'] != null
          ? (json['_instantiatesCanonical'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      instantiatesUri: json['instantiatesUri'] != null
          ? (json['instantiatesUri'] as List<dynamic>)
              .map<FhirUri>((dynamic v) => FhirUri.fromJson(v as dynamic))
              .toList()
          : null,
      instantiatesUriElement: json['_instantiatesUri'] != null
          ? (json['_instantiatesUri'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      basedOn: json['basedOn'] != null
          ? (json['basedOn'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      replaces: json['replaces'] != null
          ? (json['replaces'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      requisition: json['requisition'] != null
          ? Identifier.fromJson(json['requisition'] as Map<String, dynamic>)
          : null,
      status: RequestStatus.fromJson(json['status'] as Map<String, dynamic>),
      intent: RequestIntent.fromJson(json['intent'] as Map<String, dynamic>),
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      priority: json['priority'] != null
          ? RequestPriority.fromJson(json['priority'] as Map<String, dynamic>)
          : null,
      doNotPerform: json['doNotPerform'] != null
          ? FhirBoolean(json['doNotPerform'])
          : null,
      doNotPerformElement: json['_doNotPerform'] != null
          ? Element.fromJson(json['_doNotPerform'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      orderDetail: json['orderDetail'] != null
          ? (json['orderDetail'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      quantityQuantity: json['quantityQuantity'] != null
          ? Quantity.fromJson(json['quantityQuantity'] as Map<String, dynamic>)
          : null,
      quantityRatio: json['quantityRatio'] != null
          ? Ratio.fromJson(json['quantityRatio'] as Map<String, dynamic>)
          : null,
      quantityRange: json['quantityRange'] != null
          ? Range.fromJson(json['quantityRange'] as Map<String, dynamic>)
          : null,
      subject: Reference.fromJson(json['subject'] as Map<String, dynamic>),
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime(json['occurrenceDateTime'])
          : null,
      occurrenceDateTimeElement: json['_occurrenceDateTime'] != null
          ? Element.fromJson(
              json['_occurrenceDateTime'] as Map<String, dynamic>)
          : null,
      occurrencePeriod: json['occurrencePeriod'] != null
          ? Period.fromJson(json['occurrencePeriod'] as Map<String, dynamic>)
          : null,
      occurrenceTiming: json['occurrenceTiming'] != null
          ? Timing.fromJson(json['occurrenceTiming'] as Map<String, dynamic>)
          : null,
      asNeededBoolean: json['asNeededBoolean'] != null
          ? FhirBoolean(json['asNeededBoolean'])
          : null,
      asNeededBooleanElement: json['_asNeededBoolean'] != null
          ? Element.fromJson(json['_asNeededBoolean'] as Map<String, dynamic>)
          : null,
      asNeededCodeableConcept: json['asNeededCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['asNeededCodeableConcept'] as Map<String, dynamic>)
          : null,
      authoredOn:
          json['authoredOn'] != null ? FhirDateTime(json['authoredOn']) : null,
      authoredOnElement: json['_authoredOn'] != null
          ? Element.fromJson(json['_authoredOn'] as Map<String, dynamic>)
          : null,
      requester: json['requester'] != null
          ? Reference.fromJson(json['requester'] as Map<String, dynamic>)
          : null,
      performerType: json['performerType'] != null
          ? CodeableConcept.fromJson(
              json['performerType'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? (json['performer'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      locationCode: json['locationCode'] != null
          ? (json['locationCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      locationReference: json['locationReference'] != null
          ? (json['locationReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      insurance: json['insurance'] != null
          ? (json['insurance'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      supportingInfo: json['supportingInfo'] != null
          ? (json['supportingInfo'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      specimen: json['specimen'] != null
          ? (json['specimen'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      bodySite: json['bodySite'] != null
          ? (json['bodySite'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      patientInstruction: json['patientInstruction'] != null
          ? FhirString(json['patientInstruction'])
          : null,
      patientInstructionElement: json['_patientInstruction'] != null
          ? Element.fromJson(
              json['_patientInstruction'] as Map<String, dynamic>)
          : null,
      relevantHistory: json['relevantHistory'] != null
          ? (json['relevantHistory'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
    List<CodeableConcept>? category,
    RequestPriority? priority,
    Element? priorityElement,
    FhirBoolean? doNotPerform,
    Element? doNotPerformElement,
    CodeableConcept? code,
    List<CodeableConcept>? orderDetail,
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
