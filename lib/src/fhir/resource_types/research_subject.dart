import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ResearchSubject] /// A physical entity which is the primary unit of operational and/or
/// administrative interest in a study.
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
  }) : super(resourceType: R4ResourceType.ResearchSubject);

  @override
  String get fhirType => 'ResearchSubject';

  /// [identifier] /// Identifiers assigned to this research subject for a study.
  final List<Identifier>? identifier;

  /// [status] /// The current state of the subject.
  final ResearchSubjectStatus status;
  final Element? statusElement;

  /// [period] /// The dates the subject began and ended their participation in the study.
  final Period? period;

  /// [study] /// Reference to the study the subject is participating in.
  final Reference study;

  /// [individual] /// The record of the person or animal who is involved in the study.
  final Reference individual;

  /// [assignedArm] /// The name of the arm in the study the subject is expected to follow as part
  /// of this study.
  final FhirString? assignedArm;
  final Element? assignedArmElement;

  /// [actualArm] /// The name of the arm in the study the subject actually followed as part of
  /// this study.
  final FhirString? actualArm;
  final Element? actualArmElement;

  /// [consent] /// A record of the patient's informed agreement to participate in the study.
  final Reference? consent;
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
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (period != null) {
      json['period'] = period!.toJson();
    }
    json['study'] = study.toJson();
    json['individual'] = individual.toJson();
    if (assignedArm?.value != null) {
      json['assignedArm'] = assignedArm!.toJson();
    }
    if (assignedArmElement != null) {
      json['_assignedArm'] = assignedArmElement!.toJson();
    }
    if (actualArm?.value != null) {
      json['actualArm'] = actualArm!.toJson();
    }
    if (actualArmElement != null) {
      json['_actualArm'] = actualArmElement!.toJson();
    }
    if (consent != null) {
      json['consent'] = consent!.toJson();
    }
    return json;
  }

  factory ResearchSubject.fromJson(Map<String, dynamic> json) {
    return ResearchSubject(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: ResearchSubjectStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      study: Reference.fromJson(json['study'] as Map<String, dynamic>),
      individual:
          Reference.fromJson(json['individual'] as Map<String, dynamic>),
      assignedArm: json['assignedArm'] != null
          ? FhirString.fromJson(json['assignedArm'])
          : null,
      assignedArmElement: json['_assignedArm'] != null
          ? Element.fromJson(json['_assignedArm'] as Map<String, dynamic>)
          : null,
      actualArm: json['actualArm'] != null
          ? FhirString.fromJson(json['actualArm'])
          : null,
      actualArmElement: json['_actualArm'] != null
          ? Element.fromJson(json['_actualArm'] as Map<String, dynamic>)
          : null,
      consent: json['consent'] != null
          ? Reference.fromJson(json['consent'] as Map<String, dynamic>)
          : null,
    );
  }
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
