// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'medication_request.freezed.dart';
part 'medication_request.g.dart';

/// [MedicationRequest] An order or request for both supply of the medication
@freezed
class MedicationRequest extends DomainResource with _$MedicationRequest {
  /// [MedicationRequest] An order or request for both supply of the medication
  MedicationRequest._();

  /// [MedicationRequest] An order or request for both supply of the medication
  /// and the instructions for administration of the medication to a patient.
  /// The resource is called "MedicationRequest" rather than
  /// "MedicationPrescription" or "MedicationOrder" to generalize the use across
  /// inpatient and outpatient settings, including care plans, etc., and to
  ///  harmonize with workflow patterns.
  ///
  /// [resourceType] This is a MedicationRequest resource
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
  /// [identifier] Identifiers associated with this medication request that are
  /// defined by business processes and/or used to refer to it when a direct URL
  /// reference to the resource itself is not appropriate. They are business
  /// identifiers assigned to this resource by the performer or other systems
  /// and remain constant as the resource is updated and propagates from server
  ///  to server.
  ///
  /// [status] A code specifying the current state of the order.  Generally,
  ///  this will be active or completed state.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [statusReason] Captures the reason for the current state of the
  ///  MedicationRequest.
  ///
  /// [intent] Whether the request is a proposal, plan, or an original order.
  ///
  /// [intentElement] Extensions for intent
  ///
  /// [category] Indicates the type of medication request (for example, where
  /// the medication is expected to be consumed or administered (i.e. inpatient
  ///  or outpatient)).
  ///
  /// [priority] Indicates how quickly the Medication Request should be
  ///  addressed with respect to other requests.
  ///
  /// [priorityElement] Extensions for priority
  ///
  /// [doNotPerform] If true indicates that the provider is asking for the
  ///  medication request not to occur.
  ///
  /// [doNotPerformElement] Extensions for doNotPerform
  ///
  /// [reportedBoolean] Indicates if this record was captured as a secondary
  /// 'reported' record rather than as an original primary source-of-truth
  ///  record.  It may also indicate the source of the report.
  ///
  /// [reportedBooleanElement] Extensions for reportedBoolean
  ///
  /// [reportedReference] Indicates if this record was captured as a secondary
  /// 'reported' record rather than as an original primary source-of-truth
  ///  record.  It may also indicate the source of the report.
  ///
  /// [medicationCodeableConcept] Identifies the medication being requested.
  /// This is a link to a resource that represents the medication which may be
  /// the details of the medication or simply an attribute carrying a code that
  ///  identifies the medication from a known list of medications.
  ///
  /// [medicationReference] Identifies the medication being requested. This is
  /// a link to a resource that represents the medication which may be the
  /// details of the medication or simply an attribute carrying a code that
  ///  identifies the medication from a known list of medications.
  ///
  /// [subject] A link to a resource representing the person or set of
  ///  individuals to whom the medication will be given.
  ///
  /// [encounter] The Encounter during which this [x] was created or to which
  ///  the creation of this record is tightly associated.
  ///
  /// [supportingInformation] Include additional information (for example,
  ///  patient height and weight) that supports the ordering of the medication.
  ///
  /// [authoredOn] The date (and perhaps time) when the prescription was
  ///  initially written or authored on.
  ///
  /// [authoredOnElement] Extensions for authoredOn
  ///
  /// [requester] The individual, organization, or device that initiated the
  ///  request and has responsibility for its activation.
  ///
  /// [performer] The specified desired performer of the medication treatment
  ///  (e.g. the performer of the medication administration).
  ///
  /// [performerType] Indicates the type of performer of the administration of
  ///  the medication.
  ///
  /// [recorder] The person who entered the order on behalf of another
  ///  individual for example in the case of a verbal or a telephone order.
  ///
  /// [reasonCode] The reason or the indication for ordering or not ordering
  ///  the medication.
  ///
  /// [reasonReference] Condition or observation that supports why the
  ///  medication was ordered.
  ///
  /// [instantiatesCanonical] The URL pointing to a protocol, guideline,
  /// orderset, or other definition that is adhered to in whole or in part by
  ///  this MedicationRequest.
  ///
  /// [instantiatesCanonicalElement] Extensions for instantiatesCanonical
  ///
  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, orderset or other definition that is adhered to in whole or in
  ///  part by this MedicationRequest.
  ///
  /// [instantiatesUriElement] Extensions for instantiatesUri
  ///
  /// [basedOn] A plan or request that is fulfilled in whole or in part by this
  ///  medication request.
  ///
  /// [groupIdentifier] A shared identifier common to all requests that were
  /// authorized more or less simultaneously by a single author, representing
  ///  the identifier of the requisition or prescription.
  ///
  /// [courseOfTherapyType] The description of the overall patte3rn of the
  ///  administration of the medication to the patient.
  ///
  /// [insurance] Insurance plans, coverage extensions, pre-authorizations
  /// and/or pre-determinations that may be required for delivering the
  ///  requested service.
  ///
  /// [note] Extra information about the prescription that could not be
  ///  conveyed by the other attributes.
  ///
  /// [dosageInstruction] Indicates how the medication is to be used by the
  ///  patient.
  ///
  /// [dispenseRequest] Indicates the specific details for the dispense or
  /// medication supply part of a medication request (also known as a Medication
  /// Prescription or Medication Order).  Note that this information is not
  /// always sent with the order.  There may be in some settings (e.g.
  /// hospitals) institutional or system support for completing the dispense
  ///  details in the pharmacy department.
  ///
  /// [substitution] Indicates whether or not substitution can or should be
  /// part of the dispense. In some cases, substitution must happen, in other
  /// cases substitution must not happen. This block explains the prescriber's
  ///  intent. If nothing is specified substitution may be done.
  ///
  /// [priorPrescription] A link to a resource representing an earlier order
  ///  related order or prescription.
  ///
  /// [detectedIssue] Indicates an actual or potential clinical issue with or
  /// between one or more active or proposed clinical actions for a patient;
  ///  e.g. Drug-drug interaction, duplicate therapy, dosage alert etc.
  ///
  /// [eventHistory] Links to Provenance records for past versions of this
  /// resource or fulfilling request or event resources that identify key state
  /// transitions or updates that are likely to be relevant to a user looking at
  ///  the current version of the resource.
  const factory MedicationRequest({
    @Default(R4ResourceType.MedicationRequest)
    @JsonKey(unknownEnumValue: R4ResourceType.MedicationRequest)

    /// [resourceType] This is a MedicationRequest resource
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

    /// [identifier] Identifiers associated with this medication request that are
    /// defined by business processes and/or used to refer to it when a direct URL
    /// reference to the resource itself is not appropriate. They are business
    /// identifiers assigned to this resource by the performer or other systems
    /// and remain constant as the resource is updated and propagates from server
    ///  to server.
    List<Identifier>? identifier,

    /// [status] A code specifying the current state of the order.  Generally,
    ///  this will be active or completed state.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [statusReason] Captures the reason for the current state of the
    ///  MedicationRequest.
    CodeableConcept? statusReason,

    /// [intent] Whether the request is a proposal, plan, or an original order.
    FhirCode? intent,

    /// [intentElement] Extensions for intent
    @JsonKey(name: '_intent') PrimitiveElement? intentElement,

    /// [category] Indicates the type of medication request (for example, where
    /// the medication is expected to be consumed or administered (i.e. inpatient
    ///  or outpatient)).
    List<CodeableConcept>? category,

    /// [priority] Indicates how quickly the Medication Request should be
    ///  addressed with respect to other requests.
    FhirCode? priority,

    /// [priorityElement] Extensions for priority
    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,

    /// [doNotPerform] If true indicates that the provider is asking for the
    ///  medication request not to occur.
    FhirBoolean? doNotPerform,

    /// [doNotPerformElement] Extensions for doNotPerform
    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,

    /// [reportedBoolean] Indicates if this record was captured as a secondary
    /// 'reported' record rather than as an original primary source-of-truth
    ///  record.  It may also indicate the source of the report.
    FhirBoolean? reportedBoolean,

    /// [reportedBooleanElement] Extensions for reportedBoolean
    @JsonKey(name: '_reportedBoolean') PrimitiveElement? reportedBooleanElement,

    /// [reportedReference] Indicates if this record was captured as a secondary
    /// 'reported' record rather than as an original primary source-of-truth
    ///  record.  It may also indicate the source of the report.
    Reference? reportedReference,

    /// [medicationCodeableConcept] Identifies the medication being requested.
    /// This is a link to a resource that represents the medication which may be
    /// the details of the medication or simply an attribute carrying a code that
    ///  identifies the medication from a known list of medications.
    CodeableConcept? medicationCodeableConcept,

    /// [medicationReference] Identifies the medication being requested. This is
    /// a link to a resource that represents the medication which may be the
    /// details of the medication or simply an attribute carrying a code that
    ///  identifies the medication from a known list of medications.
    Reference? medicationReference,

    /// [subject] A link to a resource representing the person or set of
    ///  individuals to whom the medication will be given.
    required Reference subject,

    /// [encounter] The Encounter during which this [x] was created or to which
    ///  the creation of this record is tightly associated.
    Reference? encounter,

    /// [supportingInformation] Include additional information (for example,
    ///  patient height and weight) that supports the ordering of the medication.
    List<Reference>? supportingInformation,

    /// [authoredOn] The date (and perhaps time) when the prescription was
    ///  initially written or authored on.
    FhirDateTime? authoredOn,

    /// [authoredOnElement] Extensions for authoredOn
    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,

    /// [requester] The individual, organization, or device that initiated the
    ///  request and has responsibility for its activation.
    Reference? requester,

    /// [performer] The specified desired performer of the medication treatment
    ///  (e.g. the performer of the medication administration).
    Reference? performer,

    /// [performerType] Indicates the type of performer of the administration of
    ///  the medication.
    CodeableConcept? performerType,

    /// [recorder] The person who entered the order on behalf of another
    ///  individual for example in the case of a verbal or a telephone order.
    Reference? recorder,

    /// [reasonCode] The reason or the indication for ordering or not ordering
    ///  the medication.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Condition or observation that supports why the
    ///  medication was ordered.
    List<Reference>? reasonReference,

    /// [instantiatesCanonical] The URL pointing to a protocol, guideline,
    /// orderset, or other definition that is adhered to in whole or in part by
    ///  this MedicationRequest.
    List<FhirCanonical>? instantiatesCanonical,
    @JsonKey(name: '_instantiatesCanonical')

    /// [instantiatesCanonicalElement] Extensions for instantiatesCanonical
    List<PrimitiveElement>? instantiatesCanonicalElement,

    /// [instantiatesUri] The URL pointing to an externally maintained protocol,
    /// guideline, orderset or other definition that is adhered to in whole or in
    ///  part by this MedicationRequest.
    List<FhirUri>? instantiatesUri,

    /// [instantiatesUriElement] Extensions for instantiatesUri
    @JsonKey(name: '_instantiatesUri')
    List<PrimitiveElement>? instantiatesUriElement,

    /// [basedOn] A plan or request that is fulfilled in whole or in part by this
    ///  medication request.
    List<Reference>? basedOn,

    /// [groupIdentifier] A shared identifier common to all requests that were
    /// authorized more or less simultaneously by a single author, representing
    ///  the identifier of the requisition or prescription.
    Identifier? groupIdentifier,

    /// [courseOfTherapyType] The description of the overall patte3rn of the
    ///  administration of the medication to the patient.
    CodeableConcept? courseOfTherapyType,

    /// [insurance] Insurance plans, coverage extensions, pre-authorizations
    /// and/or pre-determinations that may be required for delivering the
    ///  requested service.
    List<Reference>? insurance,

    /// [note] Extra information about the prescription that could not be
    ///  conveyed by the other attributes.
    List<Annotation>? note,

    /// [dosageInstruction] Indicates how the medication is to be used by the
    ///  patient.
    List<Dosage>? dosageInstruction,

    /// [dispenseRequest] Indicates the specific details for the dispense or
    /// medication supply part of a medication request (also known as a Medication
    /// Prescription or Medication Order).  Note that this information is not
    /// always sent with the order.  There may be in some settings (e.g.
    /// hospitals) institutional or system support for completing the dispense
    ///  details in the pharmacy department.
    MedicationRequestDispenseRequest? dispenseRequest,

    /// [substitution] Indicates whether or not substitution can or should be
    /// part of the dispense. In some cases, substitution must happen, in other
    /// cases substitution must not happen. This block explains the prescriber's
    ///  intent. If nothing is specified substitution may be done.
    MedicationRequestSubstitution? substitution,

    /// [priorPrescription] A link to a resource representing an earlier order
    ///  related order or prescription.
    Reference? priorPrescription,

    /// [detectedIssue] Indicates an actual or potential clinical issue with or
    /// between one or more active or proposed clinical actions for a patient;
    ///  e.g. Drug-drug interaction, duplicate therapy, dosage alert etc.
    List<Reference>? detectedIssue,

    /// [eventHistory] Links to Provenance records for past versions of this
    /// resource or fulfilling request or event resources that identify key state
    /// transitions or updates that are likely to be relevant to a user looking at
    ///  the current version of the resource.
    List<Reference>? eventHistory,
  }) = _MedicationRequest;

  @override
  String get fhirType => 'MedicationRequest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationRequest.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationRequest.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequestFromJson(json);

  /// Acts like a constructor, returns a [MedicationRequest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationRequestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

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
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [MedicationRequestDispenseRequest] An order or request for both supply
@freezed

/// [MedicationRequestDispenseRequest] An order or request for both supply
@freezed
class MedicationRequestDispenseRequest extends BackboneElement
    with _$MedicationRequestDispenseRequest {
  /// [MedicationRequestDispenseRequest] An order or request for both supply
  MedicationRequestDispenseRequest._();

  /// [MedicationRequestDispenseRequest] An order or request for both supply
  /// of the medication and the instructions for administration of the
  /// medication to a patient. The resource is called "MedicationRequest" rather
  /// than "MedicationPrescription" or "MedicationOrder" to generalize the use
  /// across inpatient and outpatient settings, including care plans, etc., and
  ///  to harmonize with workflow patterns.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [initialFill] Indicates the quantity or duration for the first dispense
  ///  of the medication.
  ///
  /// [dispenseInterval] The minimum period of time that must occur between
  ///  dispenses of the medication.
  ///
  /// [validityPeriod] This indicates the validity period of a prescription
  ///  (stale dating the Prescription).
  ///
  /// [numberOfRepeatsAllowed] An integer indicating the number of times, in
  /// addition to the original dispense, (aka refills or repeats) that the
  /// patient can receive the prescribed medication. Usage Notes: This integer
  /// does not include the original order dispense. This means that if an order
  /// indicates dispense 30 tablets plus "3 repeats", then the order can be
  /// dispensed a total of 4 times and the patient can receive a total of 120
  /// tablets.  A prescriber may explicitly say that zero refills are permitted
  ///  after the initial dispense.
  ///
  /// [numberOfRepeatsAllowedElement] Extensions for numberOfRepeatsAllowed
  ///
  /// [quantity] The amount that is to be dispensed for one fill.
  ///
  /// [expectedSupplyDuration] Identifies the period time over which the
  /// supplied product is expected to be used, or the length of time the
  ///  dispense is expected to last.
  ///
  /// [performer] Indicates the intended dispensing Organization specified by
  ///  the prescriber.
  const factory MedicationRequestDispenseRequest({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [initialFill] Indicates the quantity or duration for the first dispense
    ///  of the medication.
    MedicationRequestInitialFill? initialFill,

    /// [dispenseInterval] The minimum period of time that must occur between
    ///  dispenses of the medication.
    FhirDuration? dispenseInterval,

    /// [validityPeriod] This indicates the validity period of a prescription
    ///  (stale dating the Prescription).
    Period? validityPeriod,

    /// [numberOfRepeatsAllowed] An integer indicating the number of times, in
    /// addition to the original dispense, (aka refills or repeats) that the
    /// patient can receive the prescribed medication. Usage Notes: This integer
    /// does not include the original order dispense. This means that if an order
    /// indicates dispense 30 tablets plus "3 repeats", then the order can be
    /// dispensed a total of 4 times and the patient can receive a total of 120
    /// tablets.  A prescriber may explicitly say that zero refills are permitted
    ///  after the initial dispense.
    FhirUnsignedInt? numberOfRepeatsAllowed,
    @JsonKey(name: '_numberOfRepeatsAllowed')

    /// [numberOfRepeatsAllowedElement] Extensions for numberOfRepeatsAllowed
    PrimitiveElement? numberOfRepeatsAllowedElement,

    /// [quantity] The amount that is to be dispensed for one fill.
    Quantity? quantity,

    /// [expectedSupplyDuration] Identifies the period time over which the
    /// supplied product is expected to be used, or the length of time the
    ///  dispense is expected to last.
    FhirDuration? expectedSupplyDuration,

    /// [performer] Indicates the intended dispensing Organization specified by
    ///  the prescriber.
    Reference? performer,
  }) = _MedicationRequestDispenseRequest;

  @override
  String get fhirType => 'MedicationRequestDispenseRequest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationRequestDispenseRequest.fromYaml(dynamic yaml) => yaml
          is String
      ? MedicationRequestDispenseRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationRequestDispenseRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationRequestDispenseRequest cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory MedicationRequestDispenseRequest.fromJson(
          Map<String, dynamic> json) =>
      _$MedicationRequestDispenseRequestFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationRequestInitialFill] An order or request for both supply of
@freezed

/// [MedicationRequestInitialFill] An order or request for both supply of
@freezed
class MedicationRequestInitialFill extends BackboneElement
    with _$MedicationRequestInitialFill {
  /// [MedicationRequestInitialFill] An order or request for both supply of
  MedicationRequestInitialFill._();

  /// [MedicationRequestInitialFill] An order or request for both supply of
  /// the medication and the instructions for administration of the medication
  /// to a patient. The resource is called "MedicationRequest" rather than
  /// "MedicationPrescription" or "MedicationOrder" to generalize the use across
  /// inpatient and outpatient settings, including care plans, etc., and to
  ///  harmonize with workflow patterns.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [quantity] The amount or quantity to provide as part of the first
  ///  dispense.
  ///
  /// [duration] The length of time that the first dispense is expected to
  ///  last.
  const factory MedicationRequestInitialFill({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [quantity] The amount or quantity to provide as part of the first
    ///  dispense.
    Quantity? quantity,

    /// [duration] The length of time that the first dispense is expected to
    ///  last.
    FhirDuration? duration,
  }) = _MedicationRequestInitialFill;

  @override
  String get fhirType => 'MedicationRequestInitialFill';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationRequestInitialFill.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequestInitialFill.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationRequestInitialFill.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationRequestInitialFill cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestInitialFill.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequestInitialFillFromJson(json);

  /// Acts like a constructor, returns a [MedicationRequestInitialFill], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationRequestInitialFill.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationRequestInitialFillFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [MedicationRequestSubstitution] An order or request for both supply of
@freezed

/// [MedicationRequestSubstitution] An order or request for both supply of
@freezed
class MedicationRequestSubstitution extends BackboneElement
    with _$MedicationRequestSubstitution {
  /// [MedicationRequestSubstitution] An order or request for both supply of
  MedicationRequestSubstitution._();

  /// [MedicationRequestSubstitution] An order or request for both supply of
  /// the medication and the instructions for administration of the medication
  /// to a patient. The resource is called "MedicationRequest" rather than
  /// "MedicationPrescription" or "MedicationOrder" to generalize the use across
  /// inpatient and outpatient settings, including care plans, etc., and to
  ///  harmonize with workflow patterns.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [allowedBoolean] True if the prescriber allows a different drug to be
  ///  dispensed from what was prescribed.
  ///
  /// [allowedBooleanElement] Extensions for allowedBoolean
  ///
  /// [allowedCodeableConcept] True if the prescriber allows a different drug
  ///  to be dispensed from what was prescribed.
  ///
  /// [reason] Indicates the reason for the substitution, or why substitution
  ///  must or must not be performed.
  const factory MedicationRequestSubstitution({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [allowedBoolean] True if the prescriber allows a different drug to be
    ///  dispensed from what was prescribed.
    FhirBoolean? allowedBoolean,

    /// [allowedBooleanElement] Extensions for allowedBoolean
    @JsonKey(name: '_allowedBoolean') PrimitiveElement? allowedBooleanElement,

    /// [allowedCodeableConcept] True if the prescriber allows a different drug
    ///  to be dispensed from what was prescribed.
    CodeableConcept? allowedCodeableConcept,

    /// [reason] Indicates the reason for the substitution, or why substitution
    ///  must or must not be performed.
    CodeableConcept? reason,
  }) = _MedicationRequestSubstitution;

  @override
  String get fhirType => 'MedicationRequestSubstitution';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory MedicationRequestSubstitution.fromYaml(dynamic yaml) => yaml is String
      ? MedicationRequestSubstitution.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MedicationRequestSubstitution.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MedicationRequestSubstitution cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory MedicationRequestSubstitution.fromJson(Map<String, dynamic> json) =>
      _$MedicationRequestSubstitutionFromJson(json);

  /// Acts like a constructor, returns a [MedicationRequestSubstitution], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory MedicationRequestSubstitution.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MedicationRequestSubstitutionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
