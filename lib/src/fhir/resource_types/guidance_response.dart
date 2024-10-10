import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [GuidanceResponse] /// A guidance response is the formal response to a guidance request, including
/// any output parameters returned by the evaluation, as well as the
/// description of any proposed actions to be taken.
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
  }) : super(resourceType: R4ResourceType.GuidanceResponse);

  @override
  String get fhirType => 'GuidanceResponse';

  /// [requestIdentifier] /// The identifier of the request associated with this response. If an
  /// identifier was given as part of the request, it will be reproduced here to
  /// enable the requester to more easily identify the response in a
  /// multi-request scenario.
  final Identifier? requestIdentifier;

  /// [identifier] /// Allows a service to provide unique, business identifiers for the response.
  final List<Identifier>? identifier;

  /// [moduleUri] /// An identifier, CodeableConcept or canonical reference to the guidance that
  /// was requested.
  final FhirUri? moduleUri;
  final Element? moduleUriElement;

  /// [moduleCanonical] /// An identifier, CodeableConcept or canonical reference to the guidance that
  /// was requested.
  final FhirCanonical? moduleCanonical;
  final Element? moduleCanonicalElement;

  /// [moduleCodeableConcept] /// An identifier, CodeableConcept or canonical reference to the guidance that
  /// was requested.
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
  final GuidanceResponseStatus status;
  final Element? statusElement;

  /// [subject] /// The patient for which the request was processed.
  final Reference? subject;

  /// [encounter] /// The encounter during which this response was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [occurrenceDateTime] /// Indicates when the guidance response was processed.
  final FhirDateTime? occurrenceDateTime;
  final Element? occurrenceDateTimeElement;

  /// [performer] /// Provides a reference to the device that performed the guidance.
  final Reference? performer;

  /// [reasonCode] /// Describes the reason for the guidance response in coded or textual form.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference] /// Indicates the reason the request was initiated. This is typically provided
  /// as a parameter to the evaluation and echoed by the service, although for
  /// some use cases, such as subscription- or event-based scenarios, it may
  /// provide an indication of the cause for the response.
  final List<Reference>? reasonReference;

  /// [note] /// Provides a mechanism to communicate additional information about the
  /// response.
  final List<Annotation>? note;

  /// [evaluationMessage] /// Messages resulting from the evaluation of the artifact or artifacts. As
  /// part of evaluating the request, the engine may produce informational or
  /// warning messages. These messages will be provided by this element.
  final List<Reference>? evaluationMessage;

  /// [outputParameters] /// The output parameters of the evaluation, if any. Many modules will result
  /// in the return of specific resources such as procedure or communication
  /// requests that are returned as part of the operation result. However,
  /// modules may define specific outputs that would be returned as the result of
  /// the evaluation, and these would be returned in this element.
  final Reference? outputParameters;

  /// [result] /// The actions, if any, produced by the evaluation of the artifact.
  final Reference? result;

  /// [dataRequirement] /// If the evaluation could not be completed due to lack of information, or
  /// additional information would potentially result in a more accurate
  /// response, this element will a description of the data required in order to
  /// proceed with the evaluation. A subsequent request to the service should
  /// include this data.
  final List<DataRequirement>? dataRequirement;
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
      json['implicitRules'] = implicitRules!.toJson();
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
    if (requestIdentifier != null) {
      json['requestIdentifier'] = requestIdentifier!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (moduleUri?.value != null) {
      json['moduleUri'] = moduleUri!.toJson();
    }
    if (moduleUriElement != null) {
      json['_moduleUri'] = moduleUriElement!.toJson();
    }
    if (moduleCanonical?.value != null) {
      json['moduleCanonical'] = moduleCanonical!.toJson();
    }
    if (moduleCanonicalElement != null) {
      json['_moduleCanonical'] = moduleCanonicalElement!.toJson();
    }
    if (moduleCodeableConcept != null) {
      json['moduleCodeableConcept'] = moduleCodeableConcept!.toJson();
    }
    json['status'] = status.toJson();
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (occurrenceDateTime?.value != null) {
      json['occurrenceDateTime'] = occurrenceDateTime!.toJson();
    }
    if (occurrenceDateTimeElement != null) {
      json['_occurrenceDateTime'] = occurrenceDateTimeElement!.toJson();
    }
    if (performer != null) {
      json['performer'] = performer!.toJson();
    }
    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] =
          reasonCode!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (evaluationMessage != null && evaluationMessage!.isNotEmpty) {
      json['evaluationMessage'] =
          evaluationMessage!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (outputParameters != null) {
      json['outputParameters'] = outputParameters!.toJson();
    }
    if (result != null) {
      json['result'] = result!.toJson();
    }
    if (dataRequirement != null && dataRequirement!.isNotEmpty) {
      json['dataRequirement'] = dataRequirement!
          .map<dynamic>((DataRequirement v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory GuidanceResponse.fromJson(Map<String, dynamic> json) {
    return GuidanceResponse(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
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
      requestIdentifier: json['requestIdentifier'] != null
          ? Identifier.fromJson(
              json['requestIdentifier'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      moduleUri: json['moduleUri'] != null
          ? FhirUri.fromJson(json['moduleUri'])
          : null,
      moduleUriElement: json['_moduleUri'] != null
          ? Element.fromJson(json['_moduleUri'] as Map<String, dynamic>)
          : null,
      moduleCanonical: json['moduleCanonical'] != null
          ? FhirCanonical.fromJson(json['moduleCanonical'])
          : null,
      moduleCanonicalElement: json['_moduleCanonical'] != null
          ? Element.fromJson(json['_moduleCanonical'] as Map<String, dynamic>)
          : null,
      moduleCodeableConcept: json['moduleCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['moduleCodeableConcept'] as Map<String, dynamic>)
          : null,
      status: GuidanceResponseStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime.fromJson(json['occurrenceDateTime'])
          : null,
      occurrenceDateTimeElement: json['_occurrenceDateTime'] != null
          ? Element.fromJson(
              json['_occurrenceDateTime'] as Map<String, dynamic>)
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(json['performer'] as Map<String, dynamic>)
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
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      evaluationMessage: json['evaluationMessage'] != null
          ? (json['evaluationMessage'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      outputParameters: json['outputParameters'] != null
          ? Reference.fromJson(json['outputParameters'] as Map<String, dynamic>)
          : null,
      result: json['result'] != null
          ? Reference.fromJson(json['result'] as Map<String, dynamic>)
          : null,
      dataRequirement: json['dataRequirement'] != null
          ? (json['dataRequirement'] as List<dynamic>)
              .map<DataRequirement>((dynamic v) =>
                  DataRequirement.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
