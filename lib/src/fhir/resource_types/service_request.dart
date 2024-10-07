import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

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
  }) : super(resourceType: R4ResourceType.ServiceRequest);

  @Id()
  @JsonKey(ignore: true)
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
  final FhirCode status;
  final Element? statusElement;

  /// [intent] /// Whether the request is a proposal, plan, an original order or a reflex
  /// order.
  final FhirCode intent;
  final Element? intentElement;

  /// [category] /// A code that classifies the service for searching, sorting and display
  /// purposes (e.g. "Surgical Procedure").
  final List<CodeableConcept>? category;

  /// [priority] /// Indicates how quickly the ServiceRequest should be addressed with respect
  /// to other requests.
  final FhirCode? priority;
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
  ServiceRequest clone() => throw UnimplementedError();
  ServiceRequest copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
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
    FhirCode? status,
    Element? statusElement,
    FhirCode? intent,
    Element? intentElement,
    List<CodeableConcept>? category,
    FhirCode? priority,
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
    );
  }
}
