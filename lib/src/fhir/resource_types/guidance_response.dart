import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'guidance_response.g.dart';

/// [GuidanceResponse] /// A guidance response is the formal response to a guidance request, including
/// any output parameters returned by the evaluation, as well as the
/// description of any proposed actions to be taken.
@JsonSerializable()
class GuidanceResponse extends DomainResource {
  GuidanceResponse({
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
    this.requestIdentifier,
    this.identifier,
    this.moduleUri,
    this.moduleUriElement,
    this.moduleCanonical,
    this.moduleCanonicalElement,
    this.moduleCodeableConcept,
    required this.status,
    this.statusElement,
    this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.evaluationMessage,
    this.outputParameters,
    this.result,
    this.dataRequirement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.GuidanceResponse);
  @override
  String get fhirType => 'GuidanceResponse';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [requestIdentifier] /// The identifier of the request associated with this response. If an
  /// identifier was given as part of the request, it will be reproduced here to
  /// enable the requester to more easily identify the response in a
  /// multi-request scenario.
  @JsonKey(name: 'requestIdentifier')
  final Identifier? requestIdentifier;

  /// [identifier] /// Allows a service to provide unique, business identifiers for the response.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [moduleUri] /// An identifier, CodeableConcept or canonical reference to the guidance that
  /// was requested.
  @JsonKey(name: 'moduleUri')
  final FhirUri? moduleUri;
  @JsonKey(name: '_moduleUri')
  final Element? moduleUriElement;

  /// [moduleCanonical] /// An identifier, CodeableConcept or canonical reference to the guidance that
  /// was requested.
  @JsonKey(name: 'moduleCanonical')
  final FhirCanonical? moduleCanonical;
  @JsonKey(name: '_moduleCanonical')
  final Element? moduleCanonicalElement;

  /// [moduleCodeableConcept] /// An identifier, CodeableConcept or canonical reference to the guidance that
  /// was requested.
  @JsonKey(name: 'moduleCodeableConcept')
  final CodeableConcept? moduleCodeableConcept;

  /// [status] /// The status of the response. If the evaluation is completed successfully,
  /// the status will indicate success. However, in order to complete the
  /// evaluation, the engine may require more information. In this case, the
  /// status will be data-required, and the response will contain a description
  /// of the additional required information. If the evaluation completed
  /// successfully, but the engine determines that a potentially more accurate
  /// response could be provided if more data was available, the status will be
  /// data-requested, and the response will contain a description of the
  /// additional requested information.
  @JsonKey(name: 'status')
  final GuidanceResponseStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [subject] /// The patient for which the request was processed.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [encounter] /// The encounter during which this response was created or to which the
  /// creation of this record is tightly associated.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [occurrenceDateTime] /// Indicates when the guidance response was processed.
  @JsonKey(name: 'occurrenceDateTime')
  final FhirDateTime? occurrenceDateTime;
  @JsonKey(name: '_occurrenceDateTime')
  final Element? occurrenceDateTimeElement;

  /// [performer] /// Provides a reference to the device that performed the guidance.
  @JsonKey(name: 'performer')
  final Reference? performer;

  /// [reasonCode] /// Describes the reason for the guidance response in coded or textual form.
  @JsonKey(name: 'reasonCode')
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates the reason the request was initiated. This is typically provided
  /// as a parameter to the evaluation and echoed by the service, although for
  /// some use cases, such as subscription- or event-based scenarios, it may
  /// provide an indication of the cause for the response.
  @JsonKey(name: 'reasonReference')
  final List<Reference>? reasonReference;

  /// [note] /// Provides a mechanism to communicate additional information about the
  /// response.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [evaluationMessage] /// Messages resulting from the evaluation of the artifact or artifacts. As
  /// part of evaluating the request, the engine may produce informational or
  /// warning messages. These messages will be provided by this element.
  @JsonKey(name: 'evaluationMessage')
  final List<Reference>? evaluationMessage;

  /// [outputParameters] /// The output parameters of the evaluation, if any. Many modules will result
  /// in the return of specific resources such as procedure or communication
  /// requests that are returned as part of the operation result. However,
  /// modules may define specific outputs that would be returned as the result of
  /// the evaluation, and these would be returned in this element.
  @JsonKey(name: 'outputParameters')
  final Reference? outputParameters;

  /// [result] /// The actions, if any, produced by the evaluation of the artifact.
  @JsonKey(name: 'result')
  final Reference? result;

  /// [dataRequirement] /// If the evaluation could not be completed due to lack of information, or
  /// additional information would potentially result in a more accurate
  /// response, this element will a description of the data required in order to
  /// proceed with the evaluation. A subsequent request to the service should
  /// include this data.
  @JsonKey(name: 'dataRequirement')
  final List<DataRequirement>? dataRequirement;
  factory GuidanceResponse.fromJson(Map<String, dynamic> json) =>
      _$GuidanceResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GuidanceResponseToJson(this);

  @override
  GuidanceResponse clone() => throw UnimplementedError();
  @override
  GuidanceResponse copyWith({
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
    Identifier? requestIdentifier,
    List<Identifier>? identifier,
    FhirUri? moduleUri,
    Element? moduleUriElement,
    FhirCanonical? moduleCanonical,
    Element? moduleCanonicalElement,
    CodeableConcept? moduleCodeableConcept,
    GuidanceResponseStatus? status,
    Element? statusElement,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Element? occurrenceDateTimeElement,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<Reference>? evaluationMessage,
    Reference? outputParameters,
    Reference? result,
    List<DataRequirement>? dataRequirement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return GuidanceResponse(
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
      requestIdentifier: requestIdentifier ?? this.requestIdentifier,
      identifier: identifier ?? this.identifier,
      moduleUri: moduleUri ?? this.moduleUri,
      moduleUriElement: moduleUriElement ?? this.moduleUriElement,
      moduleCanonical: moduleCanonical ?? this.moduleCanonical,
      moduleCanonicalElement:
          moduleCanonicalElement ?? this.moduleCanonicalElement,
      moduleCodeableConcept:
          moduleCodeableConcept ?? this.moduleCodeableConcept,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      occurrenceDateTimeElement:
          occurrenceDateTimeElement ?? this.occurrenceDateTimeElement,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      evaluationMessage: evaluationMessage ?? this.evaluationMessage,
      outputParameters: outputParameters ?? this.outputParameters,
      result: result ?? this.result,
      dataRequirement: dataRequirement ?? this.dataRequirement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory GuidanceResponse.fromYaml(dynamic yaml) => yaml is String
      ? GuidanceResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? GuidanceResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'GuidanceResponse cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory GuidanceResponse.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GuidanceResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
