// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'device_request.freezed.dart';
part 'device_request.g.dart';

/// [DeviceRequest] Represents a request for a patient to employ a medical
@freezed
class DeviceRequest with _$DeviceRequest implements DomainResource {
  /// [DeviceRequest] Represents a request for a patient to employ a medical
  const DeviceRequest._();

  /// [DeviceRequest] Represents a request for a patient to employ a medical
  /// device. The device may be an implantable device, or an external assistive
  ///  device, such as a walker.
  ///
  /// [resourceType] This is a DeviceRequest resource
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
  /// [identifier] Identifiers assigned to this order by the orderer or by the
  ///  receiver.
  ///
  /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
  /// guideline, orderset or other definition that is adhered to in whole or in
  ///  part by this DeviceRequest.
  ///
  /// [instantiatesUri] The URL pointing to an externally maintained protocol,
  /// guideline, orderset or other definition that is adhered to in whole or in
  ///  part by this DeviceRequest.
  ///
  /// [instantiatesUriElement] Extensions for instantiatesUri
  ///
  /// [basedOn] Plan/proposal/order fulfilled by this request.
  ///
  /// [priorRequest] The request takes the place of the referenced completed or
  ///  terminated request(s).
  ///
  /// [groupIdentifier] Composite request this is part of.
  ///
  /// [status] The status of the request.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [intent] Whether the request is a proposal, plan, an original order or a
  ///  reflex order.
  ///
  /// [intentElement] Extensions for intent
  ///
  /// [priority] Indicates how quickly the {{title}} should be addressed with
  ///  respect to other requests.
  ///
  /// [priorityElement] Extensions for priority
  ///
  /// [codeReference] The details of the device to be used.
  ///
  /// [codeCodeableConcept] The details of the device to be used.
  ///
  /// [parameter] Specific parameters for the ordered item.  For example, the
  ///  prism value for lenses.
  ///
  /// [subject] The patient who will use the device.
  ///
  /// [encounter] An encounter that provides additional context in which this
  ///  request is made.
  ///
  /// [occurrenceDateTime] The timing schedule for the use of the device. The
  /// Schedule data type allows many different expressions, for example. "Every
  /// 8 hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days
  ///  from 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  ///
  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  ///
  /// [occurrencePeriod] The timing schedule for the use of the device. The
  /// Schedule data type allows many different expressions, for example. "Every
  /// 8 hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days
  ///  from 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  ///
  /// [occurrenceTiming] The timing schedule for the use of the device. The
  /// Schedule data type allows many different expressions, for example. "Every
  /// 8 hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days
  ///  from 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
  ///
  /// [authoredOn] When the request transitioned to being actionable.
  ///
  /// [authoredOnElement] Extensions for authoredOn
  ///
  /// [requester] The individual who initiated the request and has
  ///  responsibility for its activation.
  ///
  /// [performerType] Desired type of performer for doing the diagnostic
  ///  testing.
  ///
  /// [performer] The desired performer for doing the diagnostic testing.
  ///
  /// [reasonCode] Reason or justification for the use of this device.
  ///
  /// [reasonReference] Reason or justification for the use of this device.
  ///
  /// [insurance] Insurance plans, coverage extensions, pre-authorizations
  /// and/or pre-determinations that may be required for delivering the
  ///  requested service.
  ///
  /// [supportingInfo] Additional clinical information about the patient that
  /// may influence the request fulfilment.  For example, this may include where
  ///  on the subject's body the device will be used (i.e. the target site).
  ///
  /// [note] Details about this request that were not represented at all or
  /// sufficiently in one of the attributes provided in a class. These may
  /// include for example a comment, an instruction, or a note associated with
  ///  the statement.
  ///
  /// [relevantHistory] Key events in the history of the request.
  const factory DeviceRequest({
    @Default(R4ResourceType.DeviceRequest)
    @JsonKey(unknownEnumValue: R4ResourceType.DeviceRequest)

    /// [resourceType] This is a DeviceRequest resource
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

    /// [identifier] Identifiers assigned to this order by the orderer or by the
    ///  receiver.
    List<Identifier>? identifier,

    /// [instantiatesCanonical] The URL pointing to a FHIR-defined protocol,
    /// guideline, orderset or other definition that is adhered to in whole or in
    ///  part by this DeviceRequest.
    List<FhirCanonical>? instantiatesCanonical,

    /// [instantiatesUri] The URL pointing to an externally maintained protocol,
    /// guideline, orderset or other definition that is adhered to in whole or in
    ///  part by this DeviceRequest.
    List<FhirUri>? instantiatesUri,

    /// [instantiatesUriElement] Extensions for instantiatesUri
    @JsonKey(name: '_instantiatesUri') List<Element?>? instantiatesUriElement,

    /// [basedOn] Plan/proposal/order fulfilled by this request.
    List<Reference>? basedOn,

    /// [priorRequest] The request takes the place of the referenced completed or
    ///  terminated request(s).
    List<Reference>? priorRequest,

    /// [groupIdentifier] Composite request this is part of.
    Identifier? groupIdentifier,

    /// [status] The status of the request.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [intent] Whether the request is a proposal, plan, an original order or a
    ///  reflex order.
    FhirCode? intent,

    /// [intentElement] Extensions for intent
    @JsonKey(name: '_intent') PrimitiveElement? intentElement,

    /// [priority] Indicates how quickly the {{title}} should be addressed with
    ///  respect to other requests.
    FhirCode? priority,

    /// [priorityElement] Extensions for priority
    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,

    /// [codeReference] The details of the device to be used.
    Reference? codeReference,

    /// [codeCodeableConcept] The details of the device to be used.
    CodeableConcept? codeCodeableConcept,

    /// [parameter] Specific parameters for the ordered item.  For example, the
    ///  prism value for lenses.
    List<DeviceRequestParameter>? parameter,

    /// [subject] The patient who will use the device.
    required Reference subject,

    /// [encounter] An encounter that provides additional context in which this
    ///  request is made.
    Reference? encounter,

    /// [occurrenceDateTime] The timing schedule for the use of the device. The
    /// Schedule data type allows many different expressions, for example. "Every
    /// 8 hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days
    ///  from 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
    FhirDateTime? occurrenceDateTime,

    /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
    @JsonKey(name: '_occurrenceDateTime')
    PrimitiveElement? occurrenceDateTimeElement,

    /// [occurrencePeriod] The timing schedule for the use of the device. The
    /// Schedule data type allows many different expressions, for example. "Every
    /// 8 hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days
    ///  from 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
    Period? occurrencePeriod,

    /// [occurrenceTiming] The timing schedule for the use of the device. The
    /// Schedule data type allows many different expressions, for example. "Every
    /// 8 hours"; "Three times a day"; "1/2 an hour before breakfast for 10 days
    ///  from 23-Dec 2011:"; "15 Oct 2013, 17 Oct 2013 and 1 Nov 2013".
    Timing? occurrenceTiming,

    /// [authoredOn] When the request transitioned to being actionable.
    FhirDateTime? authoredOn,

    /// [authoredOnElement] Extensions for authoredOn
    @JsonKey(name: '_authoredOn') PrimitiveElement? authoredOnElement,

    /// [requester] The individual who initiated the request and has
    ///  responsibility for its activation.
    Reference? requester,

    /// [performerType] Desired type of performer for doing the diagnostic
    ///  testing.
    CodeableConcept? performerType,

    /// [performer] The desired performer for doing the diagnostic testing.
    Reference? performer,

    /// [reasonCode] Reason or justification for the use of this device.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Reason or justification for the use of this device.
    List<Reference>? reasonReference,

    /// [insurance] Insurance plans, coverage extensions, pre-authorizations
    /// and/or pre-determinations that may be required for delivering the
    ///  requested service.
    List<Reference>? insurance,

    /// [supportingInfo] Additional clinical information about the patient that
    /// may influence the request fulfilment.  For example, this may include where
    ///  on the subject's body the device will be used (i.e. the target site).
    List<Reference>? supportingInfo,

    /// [note] Details about this request that were not represented at all or
    /// sufficiently in one of the attributes provided in a class. These may
    /// include for example a comment, an instruction, or a note associated with
    ///  the statement.
    List<Annotation>? note,

    /// [relevantHistory] Key events in the history of the request.
    List<Reference>? relevantHistory,
  }) = _DeviceRequest;

  @override
  String get fhirType => 'DeviceRequest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DeviceRequest.fromYaml(dynamic yaml) => yaml is String
      ? DeviceRequest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceRequest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceRequest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DeviceRequest.fromJson(Map<String, dynamic> json) =>
      _$DeviceRequestFromJson(json);

  /// Acts like a constructor, returns a [DeviceRequest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DeviceRequest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceRequestFromJson(json);
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

/// [DeviceRequestParameter] Represents a request for a patient to employ a
@freezed

/// [DeviceRequestParameter] Represents a request for a patient to employ a
@freezed
class DeviceRequestParameter
    with _$DeviceRequestParameter
    implements BackboneElement {
  /// [DeviceRequestParameter] Represents a request for a patient to employ a
  const DeviceRequestParameter._();

  /// [DeviceRequestParameter] Represents a request for a patient to employ a
  /// medical device. The device may be an implantable device, or an external
  ///  assistive device, such as a walker.
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
  /// [code] A code or string that identifies the device detail being asserted.
  ///
  /// [valueCodeableConcept] The value of the device detail.
  ///
  /// [valueQuantity] The value of the device detail.
  ///
  /// [valueRange] The value of the device detail.
  ///
  /// [valueBoolean] The value of the device detail.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  const factory DeviceRequestParameter({
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

    /// [code] A code or string that identifies the device detail being asserted.
    CodeableConcept? code,

    /// [valueCodeableConcept] The value of the device detail.
    CodeableConcept? valueCodeableConcept,

    /// [valueQuantity] The value of the device detail.
    Quantity? valueQuantity,

    /// [valueRange] The value of the device detail.
    Range? valueRange,

    /// [valueBoolean] The value of the device detail.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
  }) = _DeviceRequestParameter;

  @override
  String get fhirType => 'DeviceRequestParameter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DeviceRequestParameter.fromYaml(dynamic yaml) => yaml is String
      ? DeviceRequestParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceRequestParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceRequestParameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DeviceRequestParameter.fromJson(Map<String, dynamic> json) =>
      _$DeviceRequestParameterFromJson(json);

  /// Acts like a constructor, returns a [DeviceRequestParameter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DeviceRequestParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceRequestParameterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
