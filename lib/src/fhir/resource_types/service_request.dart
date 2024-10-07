import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ServiceRequest extends DomainResource {
  final List<Identifier>? identifier;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final List<Reference>? basedOn;
  final List<Reference>? replaces;
  final Identifier? requisition;
  final FhirCode status;
  final Element? statusElement;
  final FhirCode intent;
  final Element? intentElement;
  final List<CodeableConcept>? category;
  final FhirCode? priority;
  final Element? priorityElement;
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;
  final CodeableConcept? code;
  final List<CodeableConcept>? orderDetail;
  final Quantity? quantityQuantity;
  final Ratio? quantityRatio;
  final Range? quantityRange;
  final Reference subject;
  final Reference? encounter;
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;
  final Period? occurrencePeriod;
  final Timing? occurrenceTiming;
  final FhirBoolean? asNeededBoolean;
  final Element? asNeededBooleanElement;
  final CodeableConcept? asNeededCodeableConcept;
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;
  final Reference? requester;
  final CodeableConcept? performerType;
  final List<Reference>? performer;
  final List<CodeableConcept>? locationCode;
  final List<Reference>? locationReference;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Reference>? insurance;
  final List<Reference>? supportingInfo;
  final List<Reference>? specimen;
  final List<CodeableConcept>? bodySite;
  final List<Annotation>? note;
  final FhirString? patientInstruction;
  final Element? patientInstructionElement;
  final List<Reference>? relevantHistory;

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

@override
ServiceRequest clone() => throw UnimplementedError();
}

