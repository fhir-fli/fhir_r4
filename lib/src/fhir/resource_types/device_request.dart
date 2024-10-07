import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [DeviceRequest] /// Represents a request for a patient to employ a medical device. The device
/// may be an implantable device, or an external assistive device, such as a
/// walker.
class DeviceRequest extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this order by the orderer or by the receiver.
  final List<Identifier>? identifier;

  /// [instantiatesCanonical] /// The URL pointing to a FHIR-defined protocol, guideline, orderset or other
  /// definition that is adhered to in whole or in part by this DeviceRequest.
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;

  /// [instantiatesUri] /// The URL pointing to an externally maintained protocol, guideline, orderset
  /// or other definition that is adhered to in whole or in part by this
  /// DeviceRequest.
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;

  /// [basedOn] /// Plan/proposal/order fulfilled by this request.
  final List<Reference>? basedOn;

  /// [priorRequest] /// The request takes the place of the referenced completed or terminated
  /// request(s).
  final List<Reference>? priorRequest;

  /// [groupIdentifier] /// Composite request this is part of.
  final Identifier? groupIdentifier;

  /// [status] /// The status of the request.
  final FhirCode? status;
  final Element? statusElement;

  /// [intent] /// Whether the request is a proposal, plan, an original order or a reflex
  /// order.
  final FhirCode intent;
  final Element? intentElement;

  /// [priority] /// Indicates how quickly the {{title}} should be addressed with respect to
  /// other requests.
  final FhirCode? priority;
  final Element? priorityElement;

  /// [codeReference] /// The details of the device to be used.
  final Reference codeReference;

  /// [codeCodeableConcept] /// The details of the device to be used.
  final CodeableConcept codeCodeableConcept;

  /// [parameter] /// Specific parameters for the ordered item. For example, the prism value for
  /// lenses.
  final List<DeviceRequestParameter>? parameter;

  /// [subject] /// The patient who will use the device.
  final Reference subject;

  /// [encounter] /// An encounter that provides additional context in which this request is
  /// made.
  final Reference? encounter;

  /// [occurrenceDateTime] /// The timing schedule for the use of the device. The Schedule data type
  /// allows many different expressions, for example. "Every 8 hours"; "Three
  /// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec 2011:";
  /// "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [occurrencePeriod] /// The timing schedule for the use of the device. The Schedule data type
  /// allows many different expressions, for example. "Every 8 hours"; "Three
  /// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec 2011:";
  /// "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  final Period? occurrencePeriod;

  /// [occurrenceTiming] /// The timing schedule for the use of the device. The Schedule data type
  /// allows many different expressions, for example. "Every 8 hours"; "Three
  /// times a day"; "1/2 an hour before breakfast for 10 days from 23-Dec 2011:";
  /// "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  final Timing? occurrenceTiming;

  /// [authoredOn] /// When the request transitioned to being actionable.
  final FhirDateTime? authoredOn;
  final Element? authoredOnElement;

  /// [requester] /// The individual who initiated the request and has responsibility for its
  /// activation.
  final Reference? requester;

  /// [performerType] /// Desired type of performer for doing the diagnostic testing.
  final CodeableConcept? performerType;

  /// [performer] /// The desired performer for doing the diagnostic testing.
  final Reference? performer;

  /// [reasonCode] /// Reason or justification for the use of this device.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Reason or justification for the use of this device.
  final List<Reference>? reasonReference;

  /// [insurance] /// Insurance plans, coverage extensions, pre-authorizations and/or
  /// pre-determinations that may be required for delivering the requested
  /// service.
  final List<Reference>? insurance;

  /// [supportingInfo] /// Additional clinical information about the patient that may influence the
  /// request fulfilment. For example, this may include where on the subject's
  /// body the device will be used (i.e. the target site).
  final List<Reference>? supportingInfo;

  /// [note] /// Details about this request that were not represented at all or sufficiently
  /// in one of the attributes provided in a class. These may include for example
  /// a comment, an instruction, or a note associated with the statement.
  final List<Annotation>? note;

  /// [relevantHistory] /// Key events in the history of the request.
  final List<Reference>? relevantHistory;
  @override
  DeviceRequest clone() => throw UnimplementedError();
  DeviceRequest copy({
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
    List<Reference>? priorRequest,
    Identifier? groupIdentifier,
    FhirCode? status,
    Element? statusElement,
    FhirCode? intent,
    Element? intentElement,
    FhirCode? priority,
    Element? priorityElement,
    Reference? codeReference,
    CodeableConcept? codeCodeableConcept,
    List<DeviceRequestParameter>? parameter,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Period? occurrencePeriod,
    Timing? occurrenceTiming,
    FhirDateTime? authoredOn,
    Element? authoredOnElement,
    Reference? requester,
    CodeableConcept? performerType,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Reference>? insurance,
    List<Reference>? supportingInfo,
    List<Annotation>? note,
    List<Reference>? relevantHistory,
  }) {
    return DeviceRequest(
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
      priorRequest: priorRequest ?? this.priorRequest,
      groupIdentifier: groupIdentifier ?? this.groupIdentifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      intent: intent ?? this.intent,
      intentElement: intentElement ?? this.intentElement,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      codeReference: codeReference ?? this.codeReference,
      codeCodeableConcept: codeCodeableConcept ?? this.codeCodeableConcept,
      parameter: parameter ?? this.parameter,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      occurrencePeriod: occurrencePeriod ?? this.occurrencePeriod,
      occurrenceTiming: occurrenceTiming ?? this.occurrenceTiming,
      authoredOn: authoredOn ?? this.authoredOn,
      authoredOnElement: authoredOnElement ?? this.authoredOnElement,
      requester: requester ?? this.requester,
      performerType: performerType ?? this.performerType,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      insurance: insurance ?? this.insurance,
      supportingInfo: supportingInfo ?? this.supportingInfo,
      note: note ?? this.note,
      relevantHistory: relevantHistory ?? this.relevantHistory,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [DeviceRequestParameter] /// Specific parameters for the ordered item. For example, the prism value for
/// lenses.
class DeviceRequestParameter extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code or string that identifies the device detail being asserted.
  final CodeableConcept? code;

  /// [valueCodeableConcept] /// The value of the device detail.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// The value of the device detail.
  final Quantity? valueQuantity;

  /// [valueRange] /// The value of the device detail.
  final Range? valueRange;

  /// [valueBoolean] /// The value of the device detail.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;
  @override
  DeviceRequestParameter clone() => throw UnimplementedError();
  DeviceRequestParameter copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
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
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
    );
  }
}
