import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ImmunizationEvaluation]
/// Describes a comparison of an immunization event against published
/// recommendations to determine if the administration is "valid" in
/// relation to those recommendations.
class ImmunizationEvaluation extends DomainResource {
  /// Primary constructor for [ImmunizationEvaluation]

  ImmunizationEvaluation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.patient,
    this.date,
    this.authority,
    required this.targetDisease,
    required this.immunizationEvent,
    required this.doseStatus,
    this.doseStatusReason,
    this.description,
    this.series,
    this.doseNumberPositiveInt,
    this.doseNumberString,
    this.seriesDosesPositiveInt,
    this.seriesDosesString,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ImmunizationEvaluation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationEvaluation.fromJson(Map<String, dynamic> json) {
    return ImmunizationEvaluation(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: ImmunizationEvaluationStatusCodes.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      patient: Reference.fromJson(
        json['patient'] as Map<String, dynamic>,
      ),
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      authority: json['authority'] != null
          ? Reference.fromJson(
              json['authority'] as Map<String, dynamic>,
            )
          : null,
      targetDisease: CodeableConcept.fromJson(
        json['targetDisease'] as Map<String, dynamic>,
      ),
      immunizationEvent: Reference.fromJson(
        json['immunizationEvent'] as Map<String, dynamic>,
      ),
      doseStatus: CodeableConcept.fromJson(
        json['doseStatus'] as Map<String, dynamic>,
      ),
      doseStatusReason: json['doseStatusReason'] != null
          ? (json['doseStatusReason'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      series: json['series'] != null
          ? FhirString.fromJson({
              'value': json['series'],
              '_value': json['_series'],
            })
          : null,
      doseNumberPositiveInt: json['doseNumberPositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['doseNumberPositiveInt'],
              '_value': json['_doseNumberPositiveInt'],
            })
          : null,
      doseNumberString: json['doseNumberString'] != null
          ? FhirString.fromJson({
              'value': json['doseNumberString'],
              '_value': json['_doseNumberString'],
            })
          : null,
      seriesDosesPositiveInt: json['seriesDosesPositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['seriesDosesPositiveInt'],
              '_value': json['_seriesDosesPositiveInt'],
            })
          : null,
      seriesDosesString: json['seriesDosesString'] != null
          ? FhirString.fromJson({
              'value': json['seriesDosesString'],
              '_value': json['_seriesDosesString'],
            })
          : null,
    );
  }

  /// Deserialize [ImmunizationEvaluation] from a [String]
  /// or [YamlMap] object
  factory ImmunizationEvaluation.fromYaml(dynamic yaml) => yaml is String
      ? ImmunizationEvaluation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ImmunizationEvaluation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ImmunizationEvaluation cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ImmunizationEvaluation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationEvaluation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ImmunizationEvaluation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ImmunizationEvaluation';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// A unique identifier assigned to this immunization evaluation record.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the current status of the evaluation of the vaccination
  /// administration event.
  final ImmunizationEvaluationStatusCodes status;

  /// [patient]
  /// The individual for whom the evaluation is being done.
  final Reference patient;

  /// [date]
  /// The date the evaluation of the vaccine administration event was
  /// performed.
  final FhirDateTime? date;

  /// [authority]
  /// Indicates the authority who published the protocol (e.g. ACIP).
  final Reference? authority;

  /// [targetDisease]
  /// The vaccine preventable disease the dose is being evaluated against.
  final CodeableConcept targetDisease;

  /// [immunizationEvent]
  /// The vaccine administration event being evaluated.
  final Reference immunizationEvent;

  /// [doseStatus]
  /// Indicates if the dose is valid or not valid with respect to the
  /// published recommendations.
  final CodeableConcept doseStatus;

  /// [doseStatusReason]
  /// Provides an explanation as to why the vaccine administration event is
  /// valid or not relative to the published recommendations.
  final List<CodeableConcept>? doseStatusReason;

  /// [description]
  /// Additional information about the evaluation.
  final FhirString? description;

  /// [series]
  /// One possible path to achieve presumed immunity against a disease -
  /// within the context of an authority.
  final FhirString? series;

  /// [doseNumberPositiveInt]
  /// Nominal position in a series.
  final FhirPositiveInt? doseNumberPositiveInt;

  /// [doseNumberString]
  /// Nominal position in a series.
  final FhirString? doseNumberString;

  /// [seriesDosesPositiveInt]
  /// The recommended number of doses to achieve immunity.
  final FhirPositiveInt? seriesDosesPositiveInt;

  /// [seriesDosesString]
  /// The recommended number of doses to achieve immunity.
  final FhirString? seriesDosesString;
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

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    final fieldJson10 = patient.toJson();
    json['patient'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_patient'] = fieldJson10['_value'];
    }

    if (date != null) {
      final fieldJson11 = date!.toJson();
      json['date'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_date'] = fieldJson11['_value'];
      }
    }

    if (authority != null) {
      final fieldJson12 = authority!.toJson();
      json['authority'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_authority'] = fieldJson12['_value'];
      }
    }

    final fieldJson13 = targetDisease.toJson();
    json['targetDisease'] = fieldJson13['value'];
    if (fieldJson13['_value'] != null) {
      json['_targetDisease'] = fieldJson13['_value'];
    }

    final fieldJson14 = immunizationEvent.toJson();
    json['immunizationEvent'] = fieldJson14['value'];
    if (fieldJson14['_value'] != null) {
      json['_immunizationEvent'] = fieldJson14['_value'];
    }

    final fieldJson15 = doseStatus.toJson();
    json['doseStatus'] = fieldJson15['value'];
    if (fieldJson15['_value'] != null) {
      json['_doseStatus'] = fieldJson15['_value'];
    }

    if (doseStatusReason != null && doseStatusReason!.isNotEmpty) {
      final fieldJson16 = doseStatusReason!.map((e) => e.toJson()).toList();
      json['doseStatusReason'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_doseStatusReason'] =
            fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (description != null) {
      final fieldJson17 = description!.toJson();
      json['description'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_description'] = fieldJson17['_value'];
      }
    }

    if (series != null) {
      final fieldJson18 = series!.toJson();
      json['series'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_series'] = fieldJson18['_value'];
      }
    }

    if (doseNumberPositiveInt != null) {
      final fieldJson19 = doseNumberPositiveInt!.toJson();
      json['doseNumberPositiveInt'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_doseNumberPositiveInt'] = fieldJson19['_value'];
      }
    }

    if (doseNumberString != null) {
      final fieldJson20 = doseNumberString!.toJson();
      json['doseNumberString'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_doseNumberString'] = fieldJson20['_value'];
      }
    }

    if (seriesDosesPositiveInt != null) {
      final fieldJson21 = seriesDosesPositiveInt!.toJson();
      json['seriesDosesPositiveInt'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_seriesDosesPositiveInt'] = fieldJson21['_value'];
      }
    }

    if (seriesDosesString != null) {
      final fieldJson22 = seriesDosesString!.toJson();
      json['seriesDosesString'] = fieldJson22['value'];
      if (fieldJson22['_value'] != null) {
        json['_seriesDosesString'] = fieldJson22['_value'];
      }
    }

    return json;
  }

  @override
  ImmunizationEvaluation clone() => throw UnimplementedError();
  @override
  ImmunizationEvaluation copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ImmunizationEvaluationStatusCodes? status,
    Reference? patient,
    FhirDateTime? date,
    Reference? authority,
    CodeableConcept? targetDisease,
    Reference? immunizationEvent,
    CodeableConcept? doseStatus,
    List<CodeableConcept>? doseStatusReason,
    FhirString? description,
    FhirString? series,
    FhirPositiveInt? doseNumberPositiveInt,
    FhirString? doseNumberString,
    FhirPositiveInt? seriesDosesPositiveInt,
    FhirString? seriesDosesString,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ImmunizationEvaluation(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      patient: patient ?? this.patient,
      date: date ?? this.date,
      authority: authority ?? this.authority,
      targetDisease: targetDisease ?? this.targetDisease,
      immunizationEvent: immunizationEvent ?? this.immunizationEvent,
      doseStatus: doseStatus ?? this.doseStatus,
      doseStatusReason: doseStatusReason ?? this.doseStatusReason,
      description: description ?? this.description,
      series: series ?? this.series,
      doseNumberPositiveInt:
          doseNumberPositiveInt ?? this.doseNumberPositiveInt,
      doseNumberString: doseNumberString ?? this.doseNumberString,
      seriesDosesPositiveInt:
          seriesDosesPositiveInt ?? this.seriesDosesPositiveInt,
      seriesDosesString: seriesDosesString ?? this.seriesDosesString,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
