import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DeviceRequest extends DomainResource {
  final List<Identifier>? identifier;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final List<Reference>? basedOn;
  final List<Reference>? priorRequest;
  final Identifier? groupIdentifier;
  final FhirCode? status;
  final Element? statusElement;
  final FhirCode intent;
  final Element? intentElement;
  final FhirCode? priority;
  final Element? priorityElement;
  final Reference codeReference;
  final CodeableConcept codeCodeableConcept;
  final List<DeviceRequestParameter>? parameter;
  final Reference subject;
  final Reference? encounter;
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;
  final Period? occurrencePeriod;
  final Timing? occurrenceTiming;
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;
  final Reference? requester;
  final CodeableConcept? performerType;
  final Reference? performer;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Reference>? insurance;
  final List<Reference>? supportingInfo;
  final List<Annotation>? note;
  final List<Reference>? relevantHistory;

  DeviceRequest({
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
    this.priorRequest,
    this.groupIdentifier,
    this.status,
this.statusElement,
    required this.intent,
this.intentElement,
    this.priority,
this.priorityElement,
    required this.codeReference,
    required this.codeCodeableConcept,
    this.parameter,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.authoredOn,
this.authoredOnElement,
    this.requester,
    this.performerType,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.note,
    this.relevantHistory,
  }) : super(resourceType: R4ResourceType.DeviceRequest);

@override
DeviceRequest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DeviceRequestParameter extends BackboneElement {
  final CodeableConcept? code;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final Range? valueRange;
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  DeviceRequestParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
    this.valueBoolean,
this.valueBooleanElement,
  });

@override
DeviceRequestParameter clone() => throw UnimplementedError();
}

