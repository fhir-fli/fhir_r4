import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ImmunizationEvaluation]
/// Describes a comparison of an immunization event against published
/// recommendations to determine if the administration is "valid" in
/// relation to those recommendations.
class ImmunizationEvaluation extends DomainResource {
  /// Primary constructor for
  /// [ImmunizationEvaluation]

  const ImmunizationEvaluation({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
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
    this.doseNumberX,
    this.seriesDosesX,
  }) : super(
          resourceType: R4ResourceType.ImmunizationEvaluation,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ImmunizationEvaluation.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImmunizationEvaluation(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
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
      date: (json['date'] != null || json['_date'] != null)
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
      description: (json['description'] != null || json['_description'] != null)
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      series: (json['series'] != null || json['_series'] != null)
          ? FhirString.fromJson({
              'value': json['series'],
              '_value': json['_series'],
            })
          : null,
      doseNumberX: json['doseNumberPositiveInt'] != null ||
              json['_doseNumberPositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['doseNumberPositiveInt'],
              '_value': json['_doseNumberPositiveInt'],
            })
          : json['doseNumberString'] != null ||
                  json['_doseNumberString'] != null
              ? FhirString.fromJson({
                  'value': json['doseNumberString'],
                  '_value': json['_doseNumberString'],
                })
              : null,
      seriesDosesX: json['seriesDosesPositiveInt'] != null ||
              json['_seriesDosesPositiveInt'] != null
          ? FhirPositiveInt.fromJson({
              'value': json['seriesDosesPositiveInt'],
              '_value': json['_seriesDosesPositiveInt'],
            })
          : json['seriesDosesString'] != null ||
                  json['_seriesDosesString'] != null
              ? FhirString.fromJson({
                  'value': json['seriesDosesString'],
                  '_value': json['_seriesDosesString'],
                })
              : null,
    );
  }

  /// Deserialize [ImmunizationEvaluation]
  /// from a [String] or [YamlMap] object
  factory ImmunizationEvaluation.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ImmunizationEvaluation.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ImmunizationEvaluation.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ImmunizationEvaluation '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ImmunizationEvaluation]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ImmunizationEvaluation.fromJsonString(
    String source,
  ) {
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

  /// [doseNumberX]
  /// Nominal position in a series.
  final DoseNumberXImmunizationEvaluation? doseNumberX;

  /// [seriesDosesX]
  /// The recommended number of doses to achieve immunity.
  final SeriesDosesXImmunizationEvaluation? seriesDosesX;
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

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    json['patient'] = patient.toJson();

    if (date != null) {
      addField('date', date);
    }

    if (authority != null) {
      json['authority'] = authority!.toJson();
    }

    json['targetDisease'] = targetDisease.toJson();

    json['immunizationEvent'] = immunizationEvent.toJson();

    json['doseStatus'] = doseStatus.toJson();

    if (doseStatusReason != null && doseStatusReason!.isNotEmpty) {
      json['doseStatusReason'] =
          doseStatusReason!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      addField('description', description);
    }

    if (series != null) {
      addField('series', series);
    }

    if (doseNumberX != null) {
      addField('doseNumber${doseNumberX!.fhirType.capitalize()}', doseNumberX);
    }

    if (seriesDosesX != null) {
      addField(
          'seriesDoses${seriesDosesX!.fhirType.capitalize()}', seriesDosesX);
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
    DoseNumberXImmunizationEvaluation? doseNumberX,
    SeriesDosesXImmunizationEvaluation? seriesDosesX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
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
      doseNumberX: doseNumberX ?? this.doseNumberX,
      seriesDosesX: seriesDosesX ?? this.seriesDosesX,
    );
  }
}
