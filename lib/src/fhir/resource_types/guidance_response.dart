import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [GuidanceResponse]
/// A guidance response is the formal response to a guidance request,
/// including any output parameters returned by the evaluation, as well as
/// the description of any proposed actions to be taken.
class GuidanceResponse extends DomainResource {
  /// Primary constructor for [GuidanceResponse]

  GuidanceResponse({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.requestIdentifier,
    this.identifier,
    this.moduleUri,
    this.moduleCanonical,
    this.moduleCodeableConcept,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.GuidanceResponse,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory GuidanceResponse.fromJson(Map<String, dynamic> json) {
    return GuidanceResponse(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      requestIdentifier: json['requestIdentifier'] != null
          ? Identifier.fromJson(
              json['requestIdentifier'] as Map<String, dynamic>,
            )
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      moduleUri: json['moduleUri'] != null
          ? FhirUri.fromJson({
              'value': json['moduleUri'],
              '_value': json['_moduleUri'],
            })
          : null,
      moduleCanonical: json['moduleCanonical'] != null
          ? FhirCanonical.fromJson({
              'value': json['moduleCanonical'],
              '_value': json['_moduleCanonical'],
            })
          : null,
      moduleCodeableConcept: json['moduleCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['moduleCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      status: GuidanceResponseStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      occurrenceDateTime: json['occurrenceDateTime'] != null
          ? FhirDateTime.fromJson({
              'value': json['occurrenceDateTime'],
              '_value': json['_occurrenceDateTime'],
            })
          : null,
      performer: json['performer'] != null
          ? Reference.fromJson(
              json['performer'] as Map<String, dynamic>,
            )
          : null,
      reasonCode: json['reasonCode'] != null
          ? (json['reasonCode'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonReference: json['reasonReference'] != null
          ? (json['reasonReference'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      evaluationMessage: json['evaluationMessage'] != null
          ? (json['evaluationMessage'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      outputParameters: json['outputParameters'] != null
          ? Reference.fromJson(
              json['outputParameters'] as Map<String, dynamic>,
            )
          : null,
      result: json['result'] != null
          ? Reference.fromJson(
              json['result'] as Map<String, dynamic>,
            )
          : null,
      dataRequirement: json['dataRequirement'] != null
          ? (json['dataRequirement'] as List<dynamic>)
              .map<DataRequirement>(
                (v) => DataRequirement.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [GuidanceResponse] from a [String]
  /// or [YamlMap] object
  factory GuidanceResponse.fromYaml(dynamic yaml) => yaml is String
      ? GuidanceResponse.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? GuidanceResponse.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('GuidanceResponse cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [GuidanceResponse]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory GuidanceResponse.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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

  /// [moduleUri]
  /// An identifier, CodeableConcept or canonical reference to the guidance
  /// that was requested.
  final FhirUri? moduleUri;

  /// [moduleCanonical]
  /// An identifier, CodeableConcept or canonical reference to the guidance
  /// that was requested.
  final FhirCanonical? moduleCanonical;

  /// [moduleCodeableConcept]
  /// An identifier, CodeableConcept or canonical reference to the guidance
  /// that was requested.
  final CodeableConcept? moduleCodeableConcept;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (requestIdentifier != null) {
      final fieldJson8 = requestIdentifier!.toJson();
      json['requestIdentifier'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_requestIdentifier'] = fieldJson8['_value'];
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson9 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson9.map((e) => e['value']).toList();
      if (fieldJson9.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson9.map((e) => e['_value']).toList();
      }
    }

    if (moduleUri != null) {
      final fieldJson10 = moduleUri!.toJson();
      json['moduleUri'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_moduleUri'] = fieldJson10['_value'];
      }
    }

    if (moduleCanonical != null) {
      final fieldJson11 = moduleCanonical!.toJson();
      json['moduleCanonical'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_moduleCanonical'] = fieldJson11['_value'];
      }
    }

    if (moduleCodeableConcept != null) {
      final fieldJson12 = moduleCodeableConcept!.toJson();
      json['moduleCodeableConcept'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_moduleCodeableConcept'] = fieldJson12['_value'];
      }
    }

    final fieldJson13 = status.toJson();
    json['status'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_status'] = fieldJson13['_value'];
    }

    if (subject != null) {
      final fieldJson14 = subject!.toJson();
      json['subject'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_subject'] = fieldJson14['_value'];
      }
    }

    if (encounter != null) {
      final fieldJson15 = encounter!.toJson();
      json['encounter'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_encounter'] = fieldJson15['_value'];
      }
    }

    if (occurrenceDateTime != null) {
      final fieldJson16 = occurrenceDateTime!.toJson();
      json['occurrenceDateTime'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_occurrenceDateTime'] = fieldJson16['_value'];
      }
    }

    if (performer != null) {
      final fieldJson17 = performer!.toJson();
      json['performer'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_performer'] = fieldJson17['_value'];
      }
    }

    if (reasonCode != null && reasonCode!.isNotEmpty) {
      final fieldJson18 = reasonCode!.map((e) => e.toJson()).toList();
      json['reasonCode'] = fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_reasonCode'] = fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (reasonReference != null && reasonReference!.isNotEmpty) {
      final fieldJson19 = reasonReference!.map((e) => e.toJson()).toList();
      json['reasonReference'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_reasonReference'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson20 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson20.map((e) => e['value']).toList();
      if (fieldJson20.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson20.map((e) => e['_value']).toList();
      }
    }

    if (evaluationMessage != null && evaluationMessage!.isNotEmpty) {
      final fieldJson21 = evaluationMessage!.map((e) => e.toJson()).toList();
      json['evaluationMessage'] = fieldJson21.map((e) => e['value']).toList();
      if (fieldJson21.any((e) => e['_value'] != null)) {
        json['_evaluationMessage'] =
            fieldJson21.map((e) => e['_value']).toList();
      }
    }

    if (outputParameters != null) {
      final fieldJson22 = outputParameters!.toJson();
      json['outputParameters'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_outputParameters'] = fieldJson22['_value'];
      }
    }

    if (result != null) {
      final fieldJson23 = result!.toJson();
      json['result'] = fieldJson23['value'];
      if (fieldJson23['_value'] != null) {
        json['_result'] = fieldJson23['_value'];
      }
    }

    if (dataRequirement != null && dataRequirement!.isNotEmpty) {
      final fieldJson24 = dataRequirement!.map((e) => e.toJson()).toList();
      json['dataRequirement'] = fieldJson24.map((e) => e['value']).toList();
      if (fieldJson24.any((e) => e['_value'] != null)) {
        json['_dataRequirement'] = fieldJson24.map((e) => e['_value']).toList();
      }
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
    FhirUri? moduleUri,
    FhirCanonical? moduleCanonical,
    CodeableConcept? moduleCodeableConcept,
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      moduleUri: moduleUri ?? this.moduleUri,
      moduleCanonical: moduleCanonical ?? this.moduleCanonical,
      moduleCodeableConcept:
          moduleCodeableConcept ?? this.moduleCodeableConcept,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
