// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'guidance_response.freezed.dart';
part 'guidance_response.g.dart';

/// [GuidanceResponse] A guidance response is the formal response to a
@freezed
class GuidanceResponse extends DomainResource with _$GuidanceResponse {
  /// [GuidanceResponse] A guidance response is the formal response to a
  GuidanceResponse._();

  /// [GuidanceResponse] A guidance response is the formal response to a
  /// guidance request, including any output parameters returned by the
  /// evaluation, as well as the description of any proposed actions to be
  ///  taken.
  ///
  /// [resourceType] This is a GuidanceResponse resource
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
  /// [requestIdentifier] The identifier of the request associated with this
  /// response. If an identifier was given as part of the request, it will be
  /// reproduced here to enable the requester to more easily identify the
  ///  response in a multi-request scenario.
  ///
  /// [identifier] Allows a service to provide  unique, business identifiers
  ///  for the response.
  ///
  /// [moduleUri] An identifier, CodeableConcept or canonical reference to the
  ///  guidance that was requested.
  ///
  /// [moduleUriElement] Extensions for moduleUri
  ///
  /// [moduleCanonical] An identifier, CodeableConcept or canonical reference
  ///  to the guidance that was requested.
  ///
  /// [moduleCanonicalElement] Extensions for moduleCanonical
  ///
  /// [moduleCodeableConcept] An identifier, CodeableConcept or canonical
  ///  reference to the guidance that was requested.
  ///
  /// [status] The status of the response. If the evaluation is completed
  /// successfully, the status will indicate success. However, in order to
  /// complete the evaluation, the engine may require more information. In this
  /// case, the status will be data-required, and the response will contain a
  /// description of the additional required information. If the evaluation
  /// completed successfully, but the engine determines that a potentially more
  /// accurate response could be provided if more data was available, the status
  /// will be data-requested, and the response will contain a description of the
  ///  additional requested information.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [subject] The patient for which the request was processed.
  ///
  /// [encounter] The encounter during which this response was created or to
  ///  which the creation of this record is tightly associated.
  ///
  /// [occurrenceDateTime] Indicates when the guidance response was processed.
  ///
  /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
  ///
  /// [performer] Provides a reference to the device that performed the
  ///  guidance.
  ///
  /// [reasonCode] Describes the reason for the guidance response in coded or
  ///  textual form.
  ///
  /// [reasonReference] Indicates the reason the request was initiated. This is
  /// typically provided as a parameter to the evaluation and echoed by the
  /// service, although for some use cases, such as subscription- or event-based
  ///  scenarios, it may provide an indication of the cause for the response.
  ///
  /// [note] Provides a mechanism to communicate additional information about
  ///  the response.
  ///
  /// [evaluationMessage] Messages resulting from the evaluation of the
  /// artifact or artifacts. As part of evaluating the request, the engine may
  /// produce informational or warning messages. These messages will be provided
  ///  by this element.
  ///
  /// [outputParameters] The output parameters of the evaluation, if any. Many
  /// modules will result in the return of specific resources such as procedure
  /// or communication requests that are returned as part of the operation
  /// result. However, modules may define specific outputs that would be
  /// returned as the result of the evaluation, and these would be returned in
  ///  this element.
  ///
  /// [result] The actions, if any, produced by the evaluation of the artifact.
  ///
  /// [dataRequirement] If the evaluation could not be completed due to lack of
  /// information, or additional information would potentially result in a more
  /// accurate response, this element will a description of the data required in
  /// order to proceed with the evaluation. A subsequent request to the service
  ///  should include this data.
  const factory GuidanceResponse({
    @Default(R4ResourceType.GuidanceResponse)
    @JsonKey(unknownEnumValue: R4ResourceType.GuidanceResponse)

    /// [resourceType] This is a GuidanceResponse resource
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

    /// [requestIdentifier] The identifier of the request associated with this
    /// response. If an identifier was given as part of the request, it will be
    /// reproduced here to enable the requester to more easily identify the
    ///  response in a multi-request scenario.
    Identifier? requestIdentifier,

    /// [identifier] Allows a service to provide  unique, business identifiers
    ///  for the response.
    List<Identifier>? identifier,

    /// [moduleUri] An identifier, CodeableConcept or canonical reference to the
    ///  guidance that was requested.
    FhirUri? moduleUri,

    /// [moduleUriElement] Extensions for moduleUri
    @JsonKey(name: '_moduleUri') PrimitiveElement? moduleUriElement,

    /// [moduleCanonical] An identifier, CodeableConcept or canonical reference
    ///  to the guidance that was requested.
    FhirCanonical? moduleCanonical,

    /// [moduleCanonicalElement] Extensions for moduleCanonical
    @JsonKey(name: '_moduleCanonical') PrimitiveElement? moduleCanonicalElement,

    /// [moduleCodeableConcept] An identifier, CodeableConcept or canonical
    ///  reference to the guidance that was requested.
    CodeableConcept? moduleCodeableConcept,

    /// [status] The status of the response. If the evaluation is completed
    /// successfully, the status will indicate success. However, in order to
    /// complete the evaluation, the engine may require more information. In this
    /// case, the status will be data-required, and the response will contain a
    /// description of the additional required information. If the evaluation
    /// completed successfully, but the engine determines that a potentially more
    /// accurate response could be provided if more data was available, the status
    /// will be data-requested, and the response will contain a description of the
    ///  additional requested information.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [subject] The patient for which the request was processed.
    Reference? subject,

    /// [encounter] The encounter during which this response was created or to
    ///  which the creation of this record is tightly associated.
    Reference? encounter,

    /// [occurrenceDateTime] Indicates when the guidance response was processed.
    FhirDateTime? occurrenceDateTime,

    /// [occurrenceDateTimeElement] Extensions for occurrenceDateTime
    @JsonKey(name: '_occurrenceDateTime')
    PrimitiveElement? occurrenceDateTimeElement,

    /// [performer] Provides a reference to the device that performed the
    ///  guidance.
    Reference? performer,

    /// [reasonCode] Describes the reason for the guidance response in coded or
    ///  textual form.
    List<CodeableConcept>? reasonCode,

    /// [reasonReference] Indicates the reason the request was initiated. This is
    /// typically provided as a parameter to the evaluation and echoed by the
    /// service, although for some use cases, such as subscription- or event-based
    ///  scenarios, it may provide an indication of the cause for the response.
    List<Reference>? reasonReference,

    /// [note] Provides a mechanism to communicate additional information about
    ///  the response.
    List<Annotation>? note,

    /// [evaluationMessage] Messages resulting from the evaluation of the
    /// artifact or artifacts. As part of evaluating the request, the engine may
    /// produce informational or warning messages. These messages will be provided
    ///  by this element.
    List<Reference>? evaluationMessage,

    /// [outputParameters] The output parameters of the evaluation, if any. Many
    /// modules will result in the return of specific resources such as procedure
    /// or communication requests that are returned as part of the operation
    /// result. However, modules may define specific outputs that would be
    /// returned as the result of the evaluation, and these would be returned in
    ///  this element.
    Reference? outputParameters,

    /// [result] The actions, if any, produced by the evaluation of the artifact.
    Reference? result,

    /// [dataRequirement] If the evaluation could not be completed due to lack of
    /// information, or additional information would potentially result in a more
    /// accurate response, this element will a description of the data required in
    /// order to proceed with the evaluation. A subsequent request to the service
    ///  should include this data.
    List<DataRequirement>? dataRequirement,
  }) = _GuidanceResponse;

  @override
  String get fhirType => 'GuidanceResponse';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory GuidanceResponse.fromYaml(dynamic yaml) => yaml is String
      ? GuidanceResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? GuidanceResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'GuidanceResponse cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory GuidanceResponse.fromJson(Map<String, dynamic> json) =>
      _$GuidanceResponseFromJson(json);

  /// Acts like a constructor, returns a [GuidanceResponse], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory GuidanceResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$GuidanceResponseFromJson(json);
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
