import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'research_study.g.dart';

/// [ResearchStudy] /// A process where a researcher or organization plans and then executes a
/// series of steps intended to increase the field of healthcare-related
/// knowledge. This includes studies of safety, efficacy, comparative
/// effectiveness and other information about medications, devices, therapies
/// and other interventional and investigative techniques. A ResearchStudy
/// involves the gathering of information about human or animal subjects.
@JsonSerializable()
class ResearchStudy extends DomainResource {
  ResearchStudy({
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
    this.title,
    this.titleElement,
    this.protocol,
    this.partOf,
    required this.status,
    this.statusElement,
    this.primaryPurposeType,
    this.phase,
    this.category,
    this.focus,
    this.condition,
    this.contact,
    this.relatedArtifact,
    this.keyword,
    this.location,
    this.description,
    this.descriptionElement,
    this.enrollment,
    this.period,
    this.sponsor,
    this.principalInvestigator,
    this.site,
    this.reasonStopped,
    this.note,
    this.arm,
    this.objective,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.ResearchStudy,
            fhirType: 'ResearchStudy');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this research study by the sponsor or other
  /// systems.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [title] /// A short, descriptive user-friendly label for the study.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [protocol] /// The set of steps expected to be performed as part of the execution of the
  /// study.
  @JsonKey(name: 'protocol')
  final List<Reference>? protocol;

  /// [partOf] /// A larger research study of which this particular study is a component or
  /// step.
  @JsonKey(name: 'partOf')
  final List<Reference>? partOf;

  /// [status] /// The current state of the study.
  @JsonKey(name: 'status')
  final ResearchStudyStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [primaryPurposeType] /// The type of study based upon the intent of the study's activities. A
  /// classification of the intent of the study.
  @JsonKey(name: 'primaryPurposeType')
  final ResearchStudyPrimaryPurposeType? primaryPurposeType;

  /// [phase] /// The stage in the progression of a therapy from initial experimental use in
  /// humans in clinical trials to post-market evaluation.
  @JsonKey(name: 'phase')
  final ResearchStudyPhase? phase;

  /// [category] /// Codes categorizing the type of study such as investigational vs.
  /// observational, type of blinding, type of randomization, safety vs.
  /// efficacy, etc.
  @JsonKey(name: 'category')
  final List<CodeableConcept>? category;

  /// [focus] /// The medication(s), food(s), therapy(ies), device(s) or other concerns or
  /// interventions that the study is seeking to gain more information about.
  @JsonKey(name: 'focus')
  final List<CodeableConcept>? focus;

  /// [condition] /// The condition that is the focus of the study. For example, In a study to
  /// examine risk factors for Lupus, might have as an inclusion criterion
  /// "healthy volunteer", but the target condition code would be a Lupus SNOMED
  /// code.
  @JsonKey(name: 'condition')
  final List<ConditionProblemDiagnosisCodes>? condition;

  /// [contact] /// Contact details to assist a user in learning more about or engaging with
  /// the study.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [relatedArtifact] /// Citations, references and other related documents.
  @JsonKey(name: 'relatedArtifact')
  final List<RelatedArtifact>? relatedArtifact;

  /// [keyword] /// Key terms to aid in searching for or filtering the study.
  @JsonKey(name: 'keyword')
  final List<CodeableConcept>? keyword;

  /// [location] /// Indicates a country, state or other region where the study is taking place.
  @JsonKey(name: 'location')
  final List<CodeableConcept>? location;

  /// [description] /// A full description of how the study is being conducted.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [enrollment] /// Reference to a Group that defines the criteria for and quantity of subjects
  /// participating in the study. E.g. " 200 female Europeans between the ages of
  /// 20 and 45 with early onset diabetes".
  @JsonKey(name: 'enrollment')
  final List<Reference>? enrollment;

  /// [period] /// Identifies the start date and the expected (or actual, depending on status)
  /// end date for the study.
  @JsonKey(name: 'period')
  final Period? period;

  /// [sponsor] /// An organization that initiates the investigation and is legally responsible
  /// for the study.
  @JsonKey(name: 'sponsor')
  final Reference? sponsor;

  /// [principalInvestigator] /// A researcher in a study who oversees multiple aspects of the study, such as
  /// concept development, protocol writing, protocol submission for IRB
  /// approval, participant recruitment, informed consent, data collection,
  /// analysis, interpretation and presentation.
  @JsonKey(name: 'principalInvestigator')
  final Reference? principalInvestigator;

  /// [site] /// A facility in which study activities are conducted.
  @JsonKey(name: 'site')
  final List<Reference>? site;

  /// [reasonStopped] /// A description and/or code explaining the premature termination of the
  /// study.
  @JsonKey(name: 'reasonStopped')
  final ResearchStudyReasonStopped? reasonStopped;

  /// [note] /// Comments made about the study by the performer, subject or other
  /// participants.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [arm] /// Describes an expected sequence of events for one of the participants of a
  /// study. E.g. Exposure to drug A, wash-out, exposure to drug B, wash-out,
  /// follow-up.
  @JsonKey(name: 'arm')
  final List<ResearchStudyArm>? arm;

  /// [objective] /// A goal that the study is aiming to achieve in terms of a scientific
  /// question to be answered by the analysis of data collected during the study.
  @JsonKey(name: 'objective')
  final List<ResearchStudyObjective>? objective;
  factory ResearchStudy.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ResearchStudyToJson(this);

  @override
  ResearchStudy clone() => throw UnimplementedError();
  @override
  ResearchStudy copyWith({
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
    FhirString? title,
    Element? titleElement,
    List<Reference>? protocol,
    List<Reference>? partOf,
    ResearchStudyStatus? status,
    Element? statusElement,
    ResearchStudyPrimaryPurposeType? primaryPurposeType,
    ResearchStudyPhase? phase,
    List<CodeableConcept>? category,
    List<CodeableConcept>? focus,
    List<ConditionProblemDiagnosisCodes>? condition,
    List<ContactDetail>? contact,
    List<RelatedArtifact>? relatedArtifact,
    List<CodeableConcept>? keyword,
    List<CodeableConcept>? location,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<Reference>? enrollment,
    Period? period,
    Reference? sponsor,
    Reference? principalInvestigator,
    List<Reference>? site,
    ResearchStudyReasonStopped? reasonStopped,
    List<Annotation>? note,
    List<ResearchStudyArm>? arm,
    List<ResearchStudyObjective>? objective,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ResearchStudy(
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
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      protocol: protocol ?? this.protocol,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      primaryPurposeType: primaryPurposeType ?? this.primaryPurposeType,
      phase: phase ?? this.phase,
      category: category ?? this.category,
      focus: focus ?? this.focus,
      condition: condition ?? this.condition,
      contact: contact ?? this.contact,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      keyword: keyword ?? this.keyword,
      location: location ?? this.location,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      enrollment: enrollment ?? this.enrollment,
      period: period ?? this.period,
      sponsor: sponsor ?? this.sponsor,
      principalInvestigator:
          principalInvestigator ?? this.principalInvestigator,
      site: site ?? this.site,
      reasonStopped: reasonStopped ?? this.reasonStopped,
      note: note ?? this.note,
      arm: arm ?? this.arm,
      objective: objective ?? this.objective,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ResearchStudy.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ResearchStudy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ResearchStudy cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ResearchStudy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchStudy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ResearchStudyArm] /// Describes an expected sequence of events for one of the participants of a
/// study. E.g. Exposure to drug A, wash-out, exposure to drug B, wash-out,
/// follow-up.
@JsonSerializable()
class ResearchStudyArm extends BackboneElement {
  ResearchStudyArm({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.type,
    this.description,
    this.descriptionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ResearchStudyArm');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Unique, human-readable label for this arm of the study.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [type] /// Categorization of study arm, e.g. experimental, active comparator, placebo
  /// comparater.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [description] /// A succinct description of the path through the study that would be followed
  /// by a subject adhering to this arm.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;
  factory ResearchStudyArm.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudyArmFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ResearchStudyArmToJson(this);

  @override
  ResearchStudyArm clone() => throw UnimplementedError();
  @override
  ResearchStudyArm copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    CodeableConcept? type,
    FhirString? description,
    Element? descriptionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ResearchStudyArm(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      type: type ?? this.type,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ResearchStudyArm.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudyArm.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ResearchStudyArm.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ResearchStudyArm cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ResearchStudyArm.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchStudyArm.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ResearchStudyObjective] /// A goal that the study is aiming to achieve in terms of a scientific
/// question to be answered by the analysis of data collected during the study.
@JsonSerializable()
class ResearchStudyObjective extends BackboneElement {
  ResearchStudyObjective({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.nameElement,
    this.type,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ResearchStudyObjective');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Unique, human-readable label for this objective of the study.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [type] /// The kind of study objective.
  @JsonKey(name: 'type')
  final ResearchStudyObjectiveType? type;
  factory ResearchStudyObjective.fromJson(Map<String, dynamic> json) =>
      _$ResearchStudyObjectiveFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ResearchStudyObjectiveToJson(this);

  @override
  ResearchStudyObjective clone() => throw UnimplementedError();
  @override
  ResearchStudyObjective copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    ResearchStudyObjectiveType? type,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ResearchStudyObjective(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      type: type ?? this.type,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ResearchStudyObjective.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudyObjective.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ResearchStudyObjective.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ResearchStudyObjective cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ResearchStudyObjective.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchStudyObjective.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
