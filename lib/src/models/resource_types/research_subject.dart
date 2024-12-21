import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ResearchSubject]
/// A physical entity which is the primary unit of operational and/or
/// administrative interest in a study.
class ResearchSubject extends DomainResource {
  /// Primary constructor for
  /// [ResearchSubject]

  const ResearchSubject({
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
    this.period,
    required this.study,
    required this.individual,
    this.assignedArm,
    this.actualArm,
    this.consent,
  }) : super(
          resourceType: R4ResourceType.ResearchSubject,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchSubject.fromJson(
    Map<String, dynamic> json,
  ) {
    return ResearchSubject(
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
      status: ResearchSubjectStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      study: Reference.fromJson(
        json['study'] as Map<String, dynamic>,
      ),
      individual: Reference.fromJson(
        json['individual'] as Map<String, dynamic>,
      ),
      assignedArm: (json['assignedArm'] != null || json['_assignedArm'] != null)
          ? FhirString.fromJson({
              'value': json['assignedArm'],
              '_value': json['_assignedArm'],
            })
          : null,
      actualArm: (json['actualArm'] != null || json['_actualArm'] != null)
          ? FhirString.fromJson({
              'value': json['actualArm'],
              '_value': json['_actualArm'],
            })
          : null,
      consent: json['consent'] != null
          ? Reference.fromJson(
              json['consent'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ResearchSubject]
  /// from a [String] or [YamlMap] object
  factory ResearchSubject.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ResearchSubject.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ResearchSubject.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ResearchSubject '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ResearchSubject]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchSubject.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchSubject.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ResearchSubject';

  /// [identifier]
  /// Identifiers assigned to this research subject for a study.
  final List<Identifier>? identifier;

  /// [status]
  /// The current state of the subject.
  final ResearchSubjectStatus status;

  /// [period]
  /// The dates the subject began and ended their participation in the study.
  final Period? period;

  /// [study]
  /// Reference to the study the subject is participating in.
  final Reference study;

  /// [individual]
  /// The record of the person or animal who is involved in the study.
  final Reference individual;

  /// [assignedArm]
  /// The name of the arm in the study the subject is expected to follow as
  /// part of this study.
  final FhirString? assignedArm;

  /// [actualArm]
  /// The name of the arm in the study the subject actually followed as part
  /// of this study.
  final FhirString? actualArm;

  /// [consent]
  /// A record of the patient's informed agreement to participate in the
  /// study.
  final Reference? consent;
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
    if (period != null) {
      json['period'] = period!.toJson();
    }

    json['study'] = study.toJson();

    json['individual'] = individual.toJson();

    if (assignedArm != null) {
      addField('assignedArm', assignedArm);
    }

    if (actualArm != null) {
      addField('actualArm', actualArm);
    }

    if (consent != null) {
      json['consent'] = consent!.toJson();
    }

    return json;
  }

  @override
  ResearchSubject clone() => throw UnimplementedError();
  @override
  ResearchSubject copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ResearchSubjectStatus? status,
    Period? period,
    Reference? study,
    Reference? individual,
    FhirString? assignedArm,
    FhirString? actualArm,
    Reference? consent,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ResearchSubject(
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
      period: period ?? this.period,
      study: study ?? this.study,
      individual: individual ?? this.individual,
      assignedArm: assignedArm ?? this.assignedArm,
      actualArm: actualArm ?? this.actualArm,
      consent: consent ?? this.consent,
    );
  }
}
