import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'research_subject.g.dart';

/// [ResearchSubject] /// A physical entity which is the primary unit of operational and/or
/// administrative interest in a study.
@JsonSerializable()
class ResearchSubject extends DomainResource {
  ResearchSubject({
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
    this.identifier,
    required this.status,
    this.statusElement,
    this.period,
    required this.study,
    required this.individual,
    this.assignedArm,
    this.assignedArmElement,
    this.actualArm,
    this.actualArmElement,
    this.consent,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.ResearchSubject);
  @override
  String get fhirType => 'ResearchSubject';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this research subject for a study.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The current state of the subject.
  @JsonKey(name: 'status')
  final ResearchSubjectStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [period] /// The dates the subject began and ended their participation in the study.
  @JsonKey(name: 'period')
  final Period? period;

  /// [study] /// Reference to the study the subject is participating in.
  @JsonKey(name: 'study')
  final Reference study;

  /// [individual] /// The record of the person or animal who is involved in the study.
  @JsonKey(name: 'individual')
  final Reference individual;

  /// [assignedArm] /// The name of the arm in the study the subject is expected to follow as part
  /// of this study.
  @JsonKey(name: 'assignedArm')
  final FhirString? assignedArm;
  @JsonKey(name: '_assignedArm')
  final Element? assignedArmElement;

  /// [actualArm] /// The name of the arm in the study the subject actually followed as part of
  /// this study.
  @JsonKey(name: 'actualArm')
  final FhirString? actualArm;
  @JsonKey(name: '_actualArm')
  final Element? actualArmElement;

  /// [consent] /// A record of the patient's informed agreement to participate in the study.
  @JsonKey(name: 'consent')
  final Reference? consent;
  factory ResearchSubject.fromJson(Map<String, dynamic> json) =>
      _$ResearchSubjectFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ResearchSubjectToJson(this);

  @override
  ResearchSubject clone() => throw UnimplementedError();
  @override
  ResearchSubject copyWith({
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
    List<Identifier>? identifier,
    ResearchSubjectStatus? status,
    Element? statusElement,
    Period? period,
    Reference? study,
    Reference? individual,
    FhirString? assignedArm,
    Element? assignedArmElement,
    FhirString? actualArm,
    Element? actualArmElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      period: period ?? this.period,
      study: study ?? this.study,
      individual: individual ?? this.individual,
      assignedArm: assignedArm ?? this.assignedArm,
      assignedArmElement: assignedArmElement ?? this.assignedArmElement,
      actualArm: actualArm ?? this.actualArm,
      actualArmElement: actualArmElement ?? this.actualArmElement,
      consent: consent ?? this.consent,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ResearchSubject.fromYaml(dynamic yaml) => yaml is String
      ? ResearchSubject.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ResearchSubject.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ResearchSubject cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ResearchSubject.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchSubject.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
