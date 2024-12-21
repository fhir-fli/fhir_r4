import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [GuidanceResponse]
/// A guidance response is the formal response to a guidance request,
/// including any output parameters returned by the evaluation, as well as
/// the description of any proposed actions to be taken.
class GuidanceResponse extends DomainResource {
  /// Primary constructor for
  /// [GuidanceResponse]

  const GuidanceResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.requestIdentifier,
    this.identifier,
    required this.moduleX,
    required this.status,
    this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.evaluationMessage,
    this.outputParameters,
    this.result,
    this.dataRequirement,
  }) : super(
          resourceType: R4ResourceType.GuidanceResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GuidanceResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return GuidanceResponse(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      requestIdentifier: JsonParser.parseObject<Identifier>(
        json,
        'requestIdentifier',
        Identifier.fromJson,
      ),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      moduleX: JsonParser.parsePolymorphic<ModuleXGuidanceResponse>(json, {
        'moduleUri': FhirUri.fromJson,
        'moduleCanonical': FhirCanonical.fromJson,
        'moduleCodeableConcept': CodeableConcept.fromJson,
      })!,
      status: JsonParser.parsePrimitive<GuidanceResponseStatus>(
        json,
        'status',
        GuidanceResponseStatus.fromJson,
      )!,
      subject: JsonParser.parseObject<Reference>(
        json,
        'subject',
        Reference.fromJson,
      ),
      encounter: JsonParser.parseObject<Reference>(
        json,
        'encounter',
        Reference.fromJson,
      ),
      occurrenceDateTime: JsonParser.parsePrimitive<FhirDateTime>(
        json,
        'occurrenceDateTime',
        FhirDateTime.fromJson,
      ),
      performer: JsonParser.parseObject<Reference>(
        json,
        'performer',
        Reference.fromJson,
      ),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      reasonReference: (json['reasonReference'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map<Annotation>(
            (v) => Annotation.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      evaluationMessage: (json['evaluationMessage'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      outputParameters: JsonParser.parseObject<Reference>(
        json,
        'outputParameters',
        Reference.fromJson,
      ),
      result: JsonParser.parseObject<Reference>(
        json,
        'result',
        Reference.fromJson,
      ),
      dataRequirement: (json['dataRequirement'] as List<dynamic>?)
          ?.map<DataRequirement>(
            (v) => DataRequirement.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [GuidanceResponse]
  /// from a [String] or [YamlMap] object
  factory GuidanceResponse.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return GuidanceResponse.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return GuidanceResponse.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'GuidanceResponse '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [GuidanceResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GuidanceResponse.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return GuidanceResponse.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'GuidanceResponse';

  /// [requestIdentifier]
  /// The identifier of the request associated with this response. If an
  /// identifier was given as part of the request, it will be reproduced here
  /// to enable the requester to more easily identify the response in a
  /// multi-request scenario.
  final Identifier? requestIdentifier;

  /// [identifier]
  /// Allows a service to provide unique, business identifiers for the
  /// response.
  final List<Identifier>? identifier;

  /// [moduleX]
  /// An identifier, CodeableConcept or canonical reference to the guidance
  /// that was requested.
  final ModuleXGuidanceResponse moduleX;

  /// [status]
  /// The status of the response. If the evaluation is completed
  /// successfully, the status will indicate success. However, in order to
  /// complete the evaluation, the engine may require more information. In
  /// this case, the status will be data-required, and the response will
  /// contain a description of the additional required information. If the
  /// evaluation completed successfully, but the engine determines that a
  /// potentially more accurate response could be provided if more data was
  /// available, the status will be data-requested, and the response will
  /// contain a description of the additional requested information.
  final GuidanceResponseStatus status;

  /// [subject]
  /// The patient for which the request was processed.
  final Reference? subject;

  /// [encounter]
  /// The encounter during which this response was created or to which the
  /// creation of this record is tightly associated.
  final Reference? encounter;

  /// [occurrenceDateTime]
  /// Indicates when the guidance response was processed.
  final FhirDateTime? occurrenceDateTime;

  /// [performer]
  /// Provides a reference to the device that performed the guidance.
  final Reference? performer;

  /// [reasonCode]
  /// Describes the reason for the guidance response in coded or textual
  /// form.
  final List<CodeableConcept>? reasonCode;

  /// [reasonReference]
  /// Indicates the reason the request was initiated. This is typically
  /// provided as a parameter to the evaluation and echoed by the service,
  /// although for some use cases, such as subscription- or event-based
  /// scenarios, it may provide an indication of the cause for the response.
  final List<Reference>? reasonReference;

  /// [note]
  /// Provides a mechanism to communicate additional information about the
  /// response.
  final List<Annotation>? note;

  /// [evaluationMessage]
  /// Messages resulting from the evaluation of the artifact or artifacts. As
  /// part of evaluating the request, the engine may produce informational or
  /// warning messages. These messages will be provided by this element.
  final List<Reference>? evaluationMessage;

  /// [outputParameters]
  /// The output parameters of the evaluation, if any. Many modules will
  /// result in the return of specific resources such as procedure or
  /// communication requests that are returned as part of the operation
  /// result. However, modules may define specific outputs that would be
  /// returned as the result of the evaluation, and these would be returned
  /// in this element.
  final Reference? outputParameters;

  /// [result]
  /// The actions, if any, produced by the evaluation of the artifact.
  final Reference? result;

  /// [dataRequirement]
  /// If the evaluation could not be completed due to lack of information, or
  /// additional information would potentially result in a more accurate
  /// response, this element will a description of the data required in order
  /// to proceed with the evaluation. A subsequent request to the service
  /// should include this data.
  final List<DataRequirement>? dataRequirement;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (requestIdentifier != null) {
      json['requestIdentifier'] = requestIdentifier!.toJson();
    }

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('module${moduleX.fhirType.capitalize()}', moduleX);
    addField('status', status);
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }

    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }

    if (occurrenceDateTime != null) {
      addField('occurrenceDateTime', occurrenceDateTime);
    }

    if (performer != null) {
      json['performer'] = performer!.toJson();
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      json['reasonCode'] = reasonCode!.map((e) => e.toJson()).toList();
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      json['reasonReference'] =
          reasonReference!.map((e) => e.toJson()).toList();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (evaluationMessage != null && evaluationMessage!.isNotEmpty) {
      json['evaluationMessage'] =
          evaluationMessage!.map((e) => e.toJson()).toList();
    }

    if (outputParameters != null) {
      json['outputParameters'] = outputParameters!.toJson();
    }

    if (result != null) {
      json['result'] = result!.toJson();
    }

    if (dataRequirement != null && dataRequirement!.isNotEmpty) {
      json['dataRequirement'] =
          dataRequirement!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  GuidanceResponse clone() => throw UnimplementedError();
  @override
  GuidanceResponse copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? requestIdentifier,
    List<Identifier>? identifier,
    ModuleXGuidanceResponse? moduleX,
    GuidanceResponseStatus? status,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
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
  }) {
    return GuidanceResponse(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      requestIdentifier: requestIdentifier ?? this.requestIdentifier,
      identifier: identifier ?? this.identifier,
      moduleX: moduleX ?? this.moduleX,
      status: status ?? this.status,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      occurrenceDateTime: occurrenceDateTime ?? this.occurrenceDateTime,
      performer: performer ?? this.performer,
      reasonCode: reasonCode ?? this.reasonCode,
      reasonReference: reasonReference ?? this.reasonReference,
      note: note ?? this.note,
      evaluationMessage: evaluationMessage ?? this.evaluationMessage,
      outputParameters: outputParameters ?? this.outputParameters,
      result: result ?? this.result,
      dataRequirement: dataRequirement ?? this.dataRequirement,
    );
  }
}
