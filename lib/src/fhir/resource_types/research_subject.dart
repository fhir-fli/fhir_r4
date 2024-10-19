// ignore_for_file: overridden_fields

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

/// [ResearchSubject]
/// A physical entity which is the primary unit of operational and/or
/// administrative interest in a study.
@Entity()
class ResearchSubject extends DomainResource {
  /// Primary constructor for
  /// [ResearchSubject]

  ResearchSubject({
    this.dbId = 0,
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.period,
    required this.study,
    required this.individual,
    this.assignedArm,
    this.actualArm,
    this.consent,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
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
  ) =>
      yaml is String
          ? ResearchSubject.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? ResearchSubject.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'ResearchSubject '
                  'cannot be constructed from input provided, '
                  'it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [ResearchSubject]
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

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  int dbId;

  @override
  String get fhirType => 'ResearchSubject';

  /// [id]
  /// The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.
  @override
  FhirString? id;

  /// [meta]
  /// The metadata about the resource. This is content that is maintained by
  /// the infrastructure. Changes to the content might not always be
  /// associated with version changes to the resource.
  @override
  FhirMeta? meta;

  /// [implicitRules]
  /// A reference to a set of rules that were followed when the resource was
  /// constructed, and which must be understood when processing the content.
  /// Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  @override
  FhirUri? implicitRules;

  /// [language]
  /// The base language in which the resource is written.
  @override
  CommonLanguages? language;

  /// [text]
  /// A human-readable narrative that contains a summary of the resource and
  /// can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to
  /// just read the narrative. Resource definitions may define what content
  /// should be represented in the narrative to ensure clinical safety.
  @override
  Narrative? text;

  /// [contained]
  /// These resources do not have an independent existence apart from the
  /// resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope.
  @override
  List<Resource>? contained;

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  @override
  List<FhirExtension>? extension_;

  /// [modifierExtension]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource and that modifies the understanding of
  /// the element that contains it and/or the understanding of the containing
  /// element's descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there
  /// is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer is allowed to define an extension,
  /// there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  /// required to check for modifier extensions.
  ///
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  @override
  List<FhirExtension>? modifierExtension;

  /// [identifier]
  /// Identifiers assigned to this research subject for a study.
  List<Identifier>? identifier;

  /// [status]
  /// The current state of the subject.
  ResearchSubjectStatus status;

  /// [period]
  /// The dates the subject began and ended their participation in the study.
  Period? period;

  /// [study]
  /// Reference to the study the subject is participating in.
  Reference study;

  /// [individual]
  /// The record of the person or animal who is involved in the study.
  Reference individual;

  /// [assignedArm]
  /// The name of the arm in the study the subject is expected to follow as
  /// part of this study.
  FhirString? assignedArm;

  /// [actualArm]
  /// The name of the arm in the study the subject actually followed as part
  /// of this study.
  FhirString? actualArm;

  /// [consent]
  /// A record of the patient's informed agreement to participate in the
  /// study.
  Reference? consent;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      final fieldJson2 = language!.toJson();
      json['language'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_language'] = fieldJson2['_value'];
      }
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

    final fieldJson8 = status.toJson();
    json['status'] = fieldJson8['value'];
    if (fieldJson8['_value'] != null) {
      json['_status'] = fieldJson8['_value'];
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    json['study'] = study.toJson();

    json['individual'] = individual.toJson();

    if (assignedArm != null) {
      final fieldJson12 = assignedArm!.toJson();
      json['assignedArm'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_assignedArm'] = fieldJson12['_value'];
      }
    }

    if (actualArm != null) {
      final fieldJson13 = actualArm!.toJson();
      json['actualArm'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_actualArm'] = fieldJson13['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
