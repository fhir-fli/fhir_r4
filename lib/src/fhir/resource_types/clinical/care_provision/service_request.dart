// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'service_request.freezed.dart';
part 'service_request.g.dart';

/// [ServiceRequest] A record of a request for service such as diagnostic
@freezed
class ServiceRequest with _$ServiceRequest implements DomainResource {
  /// [ServiceRequest] A record of a request for service such as diagnostic
  const ServiceRequest._();

  /// [ServiceRequest] A record of a request for service such as diagnostic
  ///  investigations, treatments, or operations to be performed.
  ///
  /// [resourceType] This is a ServiceRequest resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Identifiers assigned to this order instance by the orderer
  ///  and/or the receiver and/or order fulfiller.
  ///
  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, orderset or other definition that is adhered to in whole or in
  ///  part by this ServiceRequest.
  ///
  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, orderset or other definition that is adhered to in whole or in
  ///  part by this ServiceRequest.
  ///
  /// [instantiatesUriElement] Extensions for instantiatesUri
  ///
  /// [basedOn] Plan/proposal/order fulfilled by this request.
  ///
  /// [replaces] The request takes the place of the referenced completed or
  ///  terminated request(s).
  ///
  /// [requisition] A shared identifier common to all service requests that
  /// were authorized more or less simultaneously by a single author,
  ///  representing the composite or group identifier.
  ///
  /// [status] The status of the order.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [intent] Whether the request is a proposal, plan, an original order or a
  ///  reflex order.
  ///
  /// [intentElement] Extensions for intent
  ///
  /// [category] A code that classifies the service for searching, sorting and
  ///  display purposes (e.g. "Surgical Procedure").
  ///
  /// [priority] Indicates how quickly the ServiceRequest should be addressed
  ///  with respect to other requests.
  ///
  /// [priorityElement] Extensions for priority
  ///
  /// [doNotPerform] Set this to true if the record is saying that the
  ///  service/procedure should NOT be performed.
  ///
  /// [doNotPerformElement] Extensions for doNotPerform
  ///
  /// [code] A code that identifies a particular service (i.e., procedure,
  /// diagnostic investigation, or panel of investigations) that have been
  ///  requested.
  ///
  /// [orderDetail] Additional details and instructions about the how the
  /// services are to be delivered.   For example, and order for a urinary
  /// catheter may have an order detail for an external or indwelling catheter,
  /// or an order for a bandage may require additional instructions specifying
  ///  how the bandage should be applied.
  ///
  /// [quantityQuantity] An amount of service being requested which can be a
  /// quantity ( for example $1,500 home modification), a ratio ( for example,
  ///  20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
  ///
  /// [quantityRatio] An amount of service being requested which can be a
  /// quantity ( for example $1,500 home modification), a ratio ( for example,
  ///  20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
  ///
  /// [quantityRange] An amount of service being requested which can be a
  /// quantity ( for example $1,500 home modification), a ratio ( for example,
  ///  20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
  ///
  /// [subject] On whom or what the service is to be performed. This is usually
  /// a human patient, but can also be requested on animals, groups of humans or
  /// animals, devices such as dialysis machines, or even locations (typically
  ///  for environmental scans).
  ///
  /// [encounter] An encounter that provides additional information about the
  ///  healthcare context in which this request is made.
  ///
  /// [occurrenceDateTime] The date/time at which the requested service should
  ///  occur.
  ///
  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  ///
  /// [occurrencePeriod] The date/time at which the requested service should
  ///  occur.
  ///
  /// [occurrenceTiming] The date/time at which the requested service should
  ///  occur.
  ///
  /// [asNeededBoolean] If a CodeableConcept is present, it indicates the
  /// pre-condition for performing the service.  For example "pain", "on
  ///  flare-up", etc.
  ///
  /// [asNeededBooleanElement] Extensions for asNeededBoolean
  ///
  /// [asNeededCodeableConcept] If a CodeableConcept is present, it indicates
  /// the pre-condition for performing the service.  For example "pain", "on
  ///  flare-up", etc.
  ///
  /// [authoredOn] When the request transitioned to being actionable.
  ///
  /// [authoredOnElement] Extensions for authoredOn
  ///
  /// [requester] The individual who initiated the request and has
  ///  responsibility for its activation.
  ///
  /// [performerType] Desired type of performer for doing the requested
  ///  service.
  ///
  /// [performer] The desired performer for doing the requested service.  For
  ///  example, the surgeon, dermatopathologist, endoscopist, etc.
  ///
  /// [locationCode] The preferred location(s) where the procedure should
  /// actually happen in coded or free text form. E.g. at home or nursing day
  ///  care center.
  ///
  /// [locationReference] A reference to the the preferred location(s) where
  /// the procedure should actually happen. E.g. at home or nursing day care
  ///  center.
  ///
  /// [reasonCode] An explanation or justification for why this service is
  /// being requested in coded or textual form.   This is often for billing
  ///  purposes.  May relate to the resources referred to in `supportingInfo`.
  ///
  /// [reasonReference] Indicates another resource that provides a
  /// justification for why this service is being requested.   May relate to the
  ///  resources referred to in `supportingInfo`.
  ///
  /// [insurance] Insurance plans, coverage extensions, pre-authorizations
  /// and/or pre-determinations that may be needed for delivering the requested
  ///  service.
  ///
  /// [supportingInfo] Additional clinical information about the patient or
  /// specimen that may influence the services or their interpretations.
  /// This information includes diagnosis, clinical findings and other
  /// observations.  In laboratory ordering these are typically referred to as
  /// "ask at order entry questions (AOEs)".  This includes observations
  /// explicitly requested by the producer (filler) to provide context or
  /// supporting information needed to complete the order. For example,
  ///  reporting the amount of inspired oxygen for blood gas measurements.
  ///
  /// [specimen] One or more specimens that the laboratory procedure will use.
  ///
  /// [bodySite] Anatomic location where the procedure should be performed.
  ///  This is the target site.
  ///
  /// [note] Any other notes and comments made about the service request. For
  ///  example, internal billing notes.
  ///
  /// [patientInstruction] Instructions in terms that are understood by the
  ///  patient or consumer.
  ///
  /// [patientInstructionElement] Extensions for patientInstruction
  ///
  /// [relevantHistory] Key events in the history of the request.
  const factory ServiceRequest({
    @Default(R4ResourceType.ServiceRequest)
    @JsonKey(unknownEnumValue: R4ResourceType.ServiceRequest)

    /// [resourceType] This is a ServiceRequest resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [identifier] Identifiers assigned to this order instance by the orderer
    ///  and/or the receiver and/or order fulfiller.
    List<Identifier>? identifier,

    /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
    /// guideline, orderset or other definition that is adhered to in whole or in
    ///  part by this ServiceRequest.
    List<FhirCanonical>? instantiatesCanonical,

    /// [instantiatesUri] The URL pointing to an externally maintained protocol,
    /// guideline, orderset or other definition that is adhered to in whole or in
    ///  part by this ServiceRequest.
    List<FhirUri>? instantiatesUri,

    /// [instantiatesUriElement] Extensions for instantiatesUri
    @JsonKey(name: '_instantiatesUri')
    List<PrimitiveElement>? instantiatesUriElement,

    /// [basedOn] Plan/proposal/order fulfilled by this request.
    List<Reference>? basedOn,

    /// [replaces] The request takes the place of the referenced completed or
    ///  terminated request(s).
    List<Reference>? replaces,

    /// [requisition] A shared identifier common to all service requests that
    /// were authorized more or less simultaneously by a single author,
    ///  representing the composite or group identifier.
    Identifier? requisition,

    /// [status] The status of the order.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [intent] Whether the request is a proposal, plan, an original order or a
    ///  reflex order.
    FhirCode? intent,

    /// [intentElement] Extensions for intent
    @JsonKey(name: '_intent') PrimitiveElement? intentElement,

    /// [category] A code that classifies the service for searching, sorting and
    ///  display purposes (e.g. "Surgical Procedure").
    List<CodeableConcept>? category,

    /// [priority] Indicates how quickly the ServiceRequest should be addressed
    ///  with respect to other requests.
    FhirCode? priority,

    /// [priorityElement] Extensions for priority
    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,

    /// [doNotPerform] Set this to true if the record is saying that the
    ///  service/procedure should NOT be performed.
    FhirBoolean? doNotPerform,

    /// [doNotPerformElement] Extensions for doNotPerform
    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,

    /// [code] A code that identifies a particular service (i.e., procedure,
    /// diagnostic investigation, or panel of investigations) that have been
    ///  requested.
    CodeableConcept? code,

    /// [orderDetail] Additional details and instructions about the how the
    /// services are to be delivered.   For example, and order for a urinary
    /// catheter may have an order detail for an external or indwelling catheter,
    /// or an order for a bandage may require additional instructions specifying
    ///  how the bandage should be applied.
    List<CodeableConcept>? orderDetail,

    /// [quantityQuantity] An amount of service being requested which can be a
    /// quantity ( for example $1,500 home modification), a ratio ( for example,
    ///  20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
    Quantity? quantityQuantity,

    /// [quantityRatio] An amount of service being requested which can be a
    /// quantity ( for example $1,500 home modification), a ratio ( for example,
    ///  20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
    Ratio? quantityRatio,

    /// [quantityRange] An amount of service being requested which can be a
    /// quantity ( for example $1,500 home modification), a ratio ( for example,
    ///  20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).
    Range? quantityRange,

    /// [subject] On whom or what the service is to be performed. This is usually
    /// a human patient, but can also be requested on animals, groups of humans or
    /// animals, devices such as dialysis machines, or even locations (typically
    ///  for environmental scans).
    required Reference subject,

    /// [encounter] An encounter that provides additional information about the
    ///  healthcare context in which this request is made.
    Reference? encounter,

    /// [occurrenceDateTime] The date/time at which the requested service should
    ///  occur.
    FhirDateTime? occurrenceDateTime,

    /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
    @JsonKey(name: '_occurrenceDateTime')
    PrimitiveElement? occurrenceDateTimeElement,

    /// [occurrencePeriod] The date/time at which the requested service should
    ///  occur.
    Period? occurrencePeriod,

    /// [occurrenceTiming] The date/time at which the requested service should
    ///  occur.
    Timing? occurrenceTiming,

    /// [asNeededBoolean] If a CodeableConcept is present, it indicates the
    /// pre-condition for performing the service.  For example "pain", "on
    ///  flare-up", etc.
    FhirBoolean? asNeededBoolean,

    /// [asNeededBooleanElement] Extensions for asNeededBoolean
    @JsonKey(name: '_asNeededBoolean') PrimitiveElement? asNeededBooleanElement,

    /// [asNeededCodeableConcept] If a CodeableConcept is present, it indicates
    /// the pre-condition for performing the service.  For example "pain", "on
    ///  flare-up", etc.
    CodeableConcept? asNeededCodeableConcept,

    /// [authoredOn] When the request transitioned to being actionable.
    FhirDateTime? authoredOn,

    /// [authoredOnElement] Extensions for authoredOn
    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,

    /// [requester] The individual who initiated the request and has
    ///  responsibility for its activation.
    Reference? requester,

    /// [performerType] Desired type of performer for doing the requested
    ///  service.
    CodeableConcept? performerType,

    /// [performer] The desired performer for doing the requested service.  For
    ///  example, the surgeon, dermatopathologist, endoscopist, etc.
    List<Reference>? performer,

    /// [locationCode] The preferred location(s) where the procedure should
    /// actually happen in coded or free text form. E.g. at home or nursing day
    ///  care center.
    List<CodeableConcept>? locationCode,

    /// [locationReference] A reference to the the preferred location(s) where
    /// the procedure should actually happen. E.g. at home or nursing day care
    ///  center.
    List<Reference>? locationReference,

    /// [reasonCode] An explanation or justification for why this service is
    /// being requested in coded or textual form.   This is often for billing
    ///  purposes.  May relate to the resources referred to in `supportingInfo`.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Indicates another resource that provides a
    /// justification for why this service is being requested.   May relate to the
    ///  resources referred to in `supportingInfo`.
    List<Reference>? reasonReference,

    /// [insurance] Insurance plans, coverage extensions, pre-authorizations
    /// and/or pre-determinations that may be needed for delivering the requested
    ///  service.
    List<Reference>? insurance,

    /// [supportingInfo] Additional clinical information about the patient or
    /// specimen that may influence the services or their interpretations.
    /// This information includes diagnosis, clinical findings and other
    /// observations.  In laboratory ordering these are typically referred to as
    /// "ask at order entry questions (AOEs)".  This includes observations
    /// explicitly requested by the producer (filler) to provide context or
    /// supporting information needed to complete the order. For example,
    ///  reporting the amount of inspired oxygen for blood gas measurements.
    List<Reference>? supportingInfo,

    /// [specimen] One or more specimens that the laboratory procedure will use.
    List<Reference>? specimen,

    /// [bodySite] Anatomic location where the procedure should be performed.
    ///  This is the target site.
    List<CodeableConcept>? bodySite,

    /// [note] Any other notes and comments made about the service request. For
    ///  example, internal billing notes.
    List<Annotation>? note,

    /// [patientInstruction] Instructions in terms that are understood by the
    ///  patient or consumer.
    String? patientInstruction,

    /// [patientInstructionElement] Extensions for patientInstruction
    @JsonKey(name: '_patientInstruction')
    PrimitiveElement? patientInstructionElement,

    /// [relevantHistory] Key events in the history of the request.
    List<Reference>? relevantHistory,
  }) = _ServiceRequest;

  @override
  String get fhirType => 'ServiceRequest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ServiceRequest.fromYaml(dynamic yaml) => yaml is String
      ? ServiceRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ServiceRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ServiceRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestFromJson(json);

  /// Acts like a constructor, returns a [ServiceRequest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ServiceRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ServiceRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}
