import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ResearchStudy]
/// A process where a researcher or organization plans and then executes a
/// series of steps intended to increase the field of healthcare-related
/// knowledge. This includes studies of safety, efficacy, comparative
/// effectiveness and other information about medications, devices,
/// therapies and other interventional and investigative techniques. A
/// ResearchStudy involves the gathering of information about human or
/// animal subjects.
class ResearchStudy extends DomainResource {
  /// Primary constructor for [ResearchStudy]

  ResearchStudy({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.title,
    this.protocol,
    this.partOf,
    required this.status,
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
  }) : super(
          resourceType: R4ResourceType.ResearchStudy,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudy.fromJson(Map<String, dynamic> json) {
    return ResearchStudy(
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
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      protocol: json['protocol'] != null
          ? (json['protocol'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: ResearchStudyStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      primaryPurposeType: json['primaryPurposeType'] != null
          ? CodeableConcept.fromJson(
              json['primaryPurposeType'] as Map<String, dynamic>,
            )
          : null,
      phase: json['phase'] != null
          ? CodeableConcept.fromJson(
              json['phase'] as Map<String, dynamic>,
            )
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      focus: json['focus'] != null
          ? (json['focus'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      condition: json['condition'] != null
          ? (json['condition'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>(
                (v) => ContactDetail.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      relatedArtifact: json['relatedArtifact'] != null
          ? (json['relatedArtifact'] as List<dynamic>)
              .map<RelatedArtifact>(
                (v) => RelatedArtifact.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      keyword: json['keyword'] != null
          ? (json['keyword'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
      enrollment: json['enrollment'] != null
          ? (json['enrollment'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
      sponsor: json['sponsor'] != null
          ? Reference.fromJson(
              json['sponsor'] as Map<String, dynamic>,
            )
          : null,
      principalInvestigator: json['principalInvestigator'] != null
          ? Reference.fromJson(
              json['principalInvestigator'] as Map<String, dynamic>,
            )
          : null,
      site: json['site'] != null
          ? (json['site'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      reasonStopped: json['reasonStopped'] != null
          ? CodeableConcept.fromJson(
              json['reasonStopped'] as Map<String, dynamic>,
            )
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
      arm: json['arm'] != null
          ? (json['arm'] as List<dynamic>)
              .map<ResearchStudyArm>(
                (v) => ResearchStudyArm.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      objective: json['objective'] != null
          ? (json['objective'] as List<dynamic>)
              .map<ResearchStudyObjective>(
                (v) => ResearchStudyObjective.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [ResearchStudy] from a [String]
  /// or [YamlMap] object
  factory ResearchStudy.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudy.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ResearchStudy.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ResearchStudy cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ResearchStudy]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudy.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchStudy.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudy';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Identifiers assigned to this research study by the sponsor or other
  /// systems.
  final List<Identifier>? identifier;

  /// [title]
  /// A short, descriptive user-friendly label for the study.
  final FhirString? title;

  /// [protocol]
  /// The set of steps expected to be performed as part of the execution of
  /// the study.
  final List<Reference>? protocol;

  /// [partOf]
  /// A larger research study of which this particular study is a component
  /// or step.
  final List<Reference>? partOf;

  /// [status]
  /// The current state of the study.
  final ResearchStudyStatus status;

  /// [primaryPurposeType]
  /// The type of study based upon the intent of the study's activities. A
  /// classification of the intent of the study.
  final CodeableConcept? primaryPurposeType;

  /// [phase]
  /// The stage in the progression of a therapy from initial experimental use
  /// in humans in clinical trials to post-market evaluation.
  final CodeableConcept? phase;

  /// [category]
  /// Codes categorizing the type of study such as investigational vs.
  /// observational, type of blinding, type of randomization, safety vs.
  /// efficacy, etc.
  final List<CodeableConcept>? category;

  /// [focus]
  /// The medication(s), food(s), therapy(ies), device(s) or other concerns
  /// or interventions that the study is seeking to gain more information
  /// about.
  final List<CodeableConcept>? focus;

  /// [condition]
  /// The condition that is the focus of the study. For example, In a study
  /// to examine risk factors for Lupus, might have as an inclusion criterion
  /// "healthy volunteer", but the target condition code would be a Lupus
  /// SNOMED code.
  final List<CodeableConcept>? condition;

  /// [contact]
  /// Contact details to assist a user in learning more about or engaging
  /// with the study.
  final List<ContactDetail>? contact;

  /// [relatedArtifact]
  /// Citations, references and other related documents.
  final List<RelatedArtifact>? relatedArtifact;

  /// [keyword]
  /// Key terms to aid in searching for or filtering the study.
  final List<CodeableConcept>? keyword;

  /// [location]
  /// Indicates a country, state or other region where the study is taking
  /// place.
  final List<CodeableConcept>? location;

  /// [description]
  /// A full description of how the study is being conducted.
  final FhirMarkdown? description;

  /// [enrollment]
  /// Reference to a Group that defines the criteria for and quantity of
  /// subjects participating in the study. E.g. " 200 female Europeans
  /// between the ages of 20 and 45 with early onset diabetes".
  final List<Reference>? enrollment;

  /// [period]
  /// Identifies the start date and the expected (or actual, depending on
  /// status) end date for the study.
  final Period? period;

  /// [sponsor]
  /// An organization that initiates the investigation and is legally
  /// responsible for the study.
  final Reference? sponsor;

  /// [principalInvestigator]
  /// A researcher in a study who oversees multiple aspects of the study,
  /// such as concept development, protocol writing, protocol submission for
  /// IRB approval, participant recruitment, informed consent, data
  /// collection, analysis, interpretation and presentation.
  final Reference? principalInvestigator;

  /// [site]
  /// A facility in which study activities are conducted.
  final List<Reference>? site;

  /// [reasonStopped]
  /// A description and/or code explaining the premature termination of the
  /// study.
  final CodeableConcept? reasonStopped;

  /// [note]
  /// Comments made about the study by the performer, subject or other
  /// participants.
  final List<Annotation>? note;

  /// [arm]
  /// Describes an expected sequence of events for one of the participants of
  /// a study. E.g. Exposure to drug A, wash-out, exposure to drug B,
  /// wash-out, follow-up.
  final List<ResearchStudyArm>? arm;

  /// [objective]
  /// A goal that the study is aiming to achieve in terms of a scientific
  /// question to be answered by the analysis of data collected during the
  /// study.
  final List<ResearchStudyObjective>? objective;
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
      json['language'] = language!.toJson();
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

    if (title != null) {
      final fieldJson8 = title!.toJson();
      json['title'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_title'] = fieldJson8['_value'];
      }
    }

    if (protocol != null && protocol!.isNotEmpty) {
      json['protocol'] = protocol!.map((e) => e.toJson()).toList();
    }

    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] = partOf!.map((e) => e.toJson()).toList();
    }

    json['status'] = status.toJson();

    if (primaryPurposeType != null) {
      json['primaryPurposeType'] = primaryPurposeType!.toJson();
    }

    if (phase != null) {
      json['phase'] = phase!.toJson();
    }

    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    if (focus != null && focus!.isNotEmpty) {
      json['focus'] = focus!.map((e) => e.toJson()).toList();
    }

    if (condition != null && condition!.isNotEmpty) {
      json['condition'] = condition!.map((e) => e.toJson()).toList();
    }

    if (contact != null && contact!.isNotEmpty) {
      json['contact'] = contact!.map((e) => e.toJson()).toList();
    }

    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      json['relatedArtifact'] =
          relatedArtifact!.map((e) => e.toJson()).toList();
    }

    if (keyword != null && keyword!.isNotEmpty) {
      json['keyword'] = keyword!.map((e) => e.toJson()).toList();
    }

    if (location != null && location!.isNotEmpty) {
      json['location'] = location!.map((e) => e.toJson()).toList();
    }

    if (description != null) {
      final fieldJson21 = description!.toJson();
      json['description'] = fieldJson21['value'];
      if (fieldJson21['_value'] != null) {
        json['_description'] = fieldJson21['_value'];
      }
    }

    if (enrollment != null && enrollment!.isNotEmpty) {
      json['enrollment'] = enrollment!.map((e) => e.toJson()).toList();
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    if (sponsor != null) {
      json['sponsor'] = sponsor!.toJson();
    }

    if (principalInvestigator != null) {
      json['principalInvestigator'] = principalInvestigator!.toJson();
    }

    if (site != null && site!.isNotEmpty) {
      json['site'] = site!.map((e) => e.toJson()).toList();
    }

    if (reasonStopped != null) {
      json['reasonStopped'] = reasonStopped!.toJson();
    }

    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map((e) => e.toJson()).toList();
    }

    if (arm != null && arm!.isNotEmpty) {
      json['arm'] = arm!.map((e) => e.toJson()).toList();
    }

    if (objective != null && objective!.isNotEmpty) {
      json['objective'] = objective!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ResearchStudy clone() => throw UnimplementedError();
  @override
  ResearchStudy copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? title,
    List<Reference>? protocol,
    List<Reference>? partOf,
    ResearchStudyStatus? status,
    CodeableConcept? primaryPurposeType,
    CodeableConcept? phase,
    List<CodeableConcept>? category,
    List<CodeableConcept>? focus,
    List<CodeableConcept>? condition,
    List<ContactDetail>? contact,
    List<RelatedArtifact>? relatedArtifact,
    List<CodeableConcept>? keyword,
    List<CodeableConcept>? location,
    FhirMarkdown? description,
    List<Reference>? enrollment,
    Period? period,
    Reference? sponsor,
    Reference? principalInvestigator,
    List<Reference>? site,
    CodeableConcept? reasonStopped,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      title: title ?? this.title,
      protocol: protocol ?? this.protocol,
      partOf: partOf ?? this.partOf,
      status: status ?? this.status,
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
}

/// [ResearchStudyArm]
/// Describes an expected sequence of events for one of the participants of
/// a study. E.g. Exposure to drug A, wash-out, exposure to drug B,
/// wash-out, follow-up.
class ResearchStudyArm extends BackboneElement {
  /// Primary constructor for [ResearchStudyArm]

  ResearchStudyArm({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.name,
    this.type,
    this.description,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyArm.fromJson(Map<String, dynamic> json) {
    return ResearchStudyArm(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      name: FhirString.fromJson({
        'value': json['name'],
        '_value': json['_name'],
      }),
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
      description: json['description'] != null
          ? FhirString.fromJson({
              'value': json['description'],
              '_value': json['_description'],
            })
          : null,
    );
  }

  /// Deserialize [ResearchStudyArm] from a [String]
  /// or [YamlMap] object
  factory ResearchStudyArm.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudyArm.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ResearchStudyArm.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ResearchStudyArm cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ResearchStudyArm]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyArm.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchStudyArm.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyArm';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [name]
  /// Unique, human-readable label for this arm of the study.
  final FhirString name;

  /// [type]
  /// Categorization of study arm, e.g. experimental, active comparator,
  /// placebo comparater.
  final CodeableConcept? type;

  /// [description]
  /// A succinct description of the path through the study that would be
  /// followed by a subject adhering to this arm.
  final FhirString? description;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    final fieldJson2 = name.toJson();
    json['name'] = fieldJson2['value'];
    if (fieldJson2['_value'] != null) {
      json['_name'] = fieldJson2['_value'];
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (description != null) {
      final fieldJson4 = description!.toJson();
      json['description'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_description'] = fieldJson4['_value'];
      }
    }

    return json;
  }

  @override
  ResearchStudyArm clone() => throw UnimplementedError();
  @override
  ResearchStudyArm copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? type,
    FhirString? description,
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
      type: type ?? this.type,
      description: description ?? this.description,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ResearchStudyObjective]
/// A goal that the study is aiming to achieve in terms of a scientific
/// question to be answered by the analysis of data collected during the
/// study.
class ResearchStudyObjective extends BackboneElement {
  /// Primary constructor for [ResearchStudyObjective]

  ResearchStudyObjective({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.name,
    this.type,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ResearchStudyObjective.fromJson(Map<String, dynamic> json) {
    return ResearchStudyObjective(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      name: json['name'] != null
          ? FhirString.fromJson({
              'value': json['name'],
              '_value': json['_name'],
            })
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(
              json['type'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ResearchStudyObjective] from a [String]
  /// or [YamlMap] object
  factory ResearchStudyObjective.fromYaml(dynamic yaml) => yaml is String
      ? ResearchStudyObjective.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ResearchStudyObjective.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ResearchStudyObjective cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ResearchStudyObjective]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ResearchStudyObjective.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ResearchStudyObjective.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ResearchStudyObjective';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [name]
  /// Unique, human-readable label for this objective of the study.
  final FhirString? name;

  /// [type]
  /// The kind of study objective.
  final CodeableConcept? type;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (name != null) {
      final fieldJson2 = name!.toJson();
      json['name'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_name'] = fieldJson2['_value'];
      }
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    return json;
  }

  @override
  ResearchStudyObjective clone() => throw UnimplementedError();
  @override
  ResearchStudyObjective copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    CodeableConcept? type,
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
      type: type ?? this.type,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
