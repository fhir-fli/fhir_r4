import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ResearchStudy] /// A process where a researcher or organization plans and then executes a
/// series of steps intended to increase the field of healthcare-related
/// knowledge. This includes studies of safety, efficacy, comparative
/// effectiveness and other information about medications, devices, therapies
/// and other interventional and investigative techniques. A ResearchStudy
/// involves the gathering of information about human or animal subjects.
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
  }) : super(resourceType: R4ResourceType.ResearchStudy);

  @override
  String get fhirType => 'ResearchStudy';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this research study by the sponsor or other
  /// systems.
  final List<Identifier>? identifier;

  /// [title] /// A short, descriptive user-friendly label for the study.
  final FhirString? title;
  final Element? titleElement;

  /// [protocol] /// The set of steps expected to be performed as part of the execution of the
  /// study.
  final List<Reference>? protocol;

  /// [partOf] /// A larger research study of which this particular study is a component or
  /// step.
  final List<Reference>? partOf;

  /// [status] /// The current state of the study.
  final ResearchStudyStatus status;
  final Element? statusElement;

  /// [primaryPurposeType] /// The type of study based upon the intent of the study's activities. A
  /// classification of the intent of the study.
  final CodeableConcept? primaryPurposeType;

  /// [phase] /// The stage in the progression of a therapy from initial experimental use in
  /// humans in clinical trials to post-market evaluation.
  final CodeableConcept? phase;

  /// [category] /// Codes categorizing the type of study such as investigational vs.
  /// observational, type of blinding, type of randomization, safety vs.
  /// efficacy, etc.
  final List<CodeableConcept>? category;

  /// [focus] /// The medication(s), food(s), therapy(ies), device(s) or other concerns or
  /// interventions that the study is seeking to gain more information about.
  final List<CodeableConcept>? focus;

  /// [condition] /// The condition that is the focus of the study. For example, In a study to
  /// examine risk factors for Lupus, might have as an inclusion criterion
  /// "healthy volunteer", but the target condition code would be a Lupus SNOMED
  /// code.
  final List<CodeableConcept>? condition;

  /// [contact] /// Contact details to assist a user in learning more about or engaging with
  /// the study.
  final List<ContactDetail>? contact;

  /// [relatedArtifact] /// Citations, references and other related documents.
  final List<RelatedArtifact>? relatedArtifact;

  /// [keyword] /// Key terms to aid in searching for or filtering the study.
  final List<CodeableConcept>? keyword;

  /// [location] /// Indicates a country, state or other region where the study is taking place.
  final List<CodeableConcept>? location;

  /// [description] /// A full description of how the study is being conducted.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [enrollment] /// Reference to a Group that defines the criteria for and quantity of subjects
  /// participating in the study. E.g. " 200 female Europeans between the ages of
  /// 20 and 45 with early onset diabetes".
  final List<Reference>? enrollment;

  /// [period] /// Identifies the start date and the expected (or actual, depending on status)
  /// end date for the study.
  final Period? period;

  /// [sponsor] /// An organization that initiates the investigation and is legally responsible
  /// for the study.
  final Reference? sponsor;

  /// [principalInvestigator] /// A researcher in a study who oversees multiple aspects of the study, such as
  /// concept development, protocol writing, protocol submission for IRB
  /// approval, participant recruitment, informed consent, data collection,
  /// analysis, interpretation and presentation.
  final Reference? principalInvestigator;

  /// [site] /// A facility in which study activities are conducted.
  final List<Reference>? site;

  /// [reasonStopped] /// A description and/or code explaining the premature termination of the
  /// study.
  final CodeableConcept? reasonStopped;

  /// [note] /// Comments made about the study by the performer, subject or other
  /// participants.
  final List<Annotation>? note;

  /// [arm] /// Describes an expected sequence of events for one of the participants of a
  /// study. E.g. Exposure to drug A, wash-out, exposure to drug B, wash-out,
  /// follow-up.
  final List<ResearchStudyArm>? arm;

  /// [objective] /// A goal that the study is aiming to achieve in terms of a scientific
  /// question to be answered by the analysis of data collected during the study.
  final List<ResearchStudyObjective>? objective;
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
    if (title?.value != null) {
      json['title'] = title!.toJson();
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (protocol != null && protocol!.isNotEmpty) {
      json['protocol'] =
          protocol!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (partOf != null && partOf!.isNotEmpty) {
      json['partOf'] =
          partOf!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (primaryPurposeType != null) {
      json['primaryPurposeType'] = primaryPurposeType!.toJson();
    }
    if (phase != null) {
      json['phase'] = phase!.toJson();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (focus != null && focus!.isNotEmpty) {
      json['focus'] =
          focus!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (condition != null && condition!.isNotEmpty) {
      json['condition'] =
          condition!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (relatedArtifact != null && relatedArtifact!.isNotEmpty) {
      json['relatedArtifact'] = relatedArtifact!
          .map<dynamic>((RelatedArtifact v) => v.toJson())
          .toList();
    }
    if (keyword != null && keyword!.isNotEmpty) {
      json['keyword'] =
          keyword!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (location != null && location!.isNotEmpty) {
      json['location'] =
          location!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (enrollment != null && enrollment!.isNotEmpty) {
      json['enrollment'] =
          enrollment!.map<dynamic>((Reference v) => v.toJson()).toList();
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
      json['site'] = site!.map<dynamic>((Reference v) => v.toJson()).toList();
    }
    if (reasonStopped != null) {
      json['reasonStopped'] = reasonStopped!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (arm != null && arm!.isNotEmpty) {
      json['arm'] =
          arm!.map<dynamic>((ResearchStudyArm v) => v.toJson()).toList();
    }
    if (objective != null && objective!.isNotEmpty) {
      json['objective'] = objective!
          .map<dynamic>((ResearchStudyObjective v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ResearchStudy.fromJson(Map<String, dynamic> json) {
    return ResearchStudy(
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
      title: json['title'] != null ? FhirString.fromJson(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      protocol: json['protocol'] != null
          ? (json['protocol'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      partOf: json['partOf'] != null
          ? (json['partOf'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: ResearchStudyStatus.fromJson(json['status']),
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      primaryPurposeType: json['primaryPurposeType'] != null
          ? CodeableConcept.fromJson(
              json['primaryPurposeType'] as Map<String, dynamic>)
          : null,
      phase: json['phase'] != null
          ? CodeableConcept.fromJson(json['phase'] as Map<String, dynamic>)
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      focus: json['focus'] != null
          ? (json['focus'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      condition: json['condition'] != null
          ? (json['condition'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      relatedArtifact: json['relatedArtifact'] != null
          ? (json['relatedArtifact'] as List<dynamic>)
              .map<RelatedArtifact>((dynamic v) =>
                  RelatedArtifact.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      keyword: json['keyword'] != null
          ? (json['keyword'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      location: json['location'] != null
          ? (json['location'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      enrollment: json['enrollment'] != null
          ? (json['enrollment'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
      sponsor: json['sponsor'] != null
          ? Reference.fromJson(json['sponsor'] as Map<String, dynamic>)
          : null,
      principalInvestigator: json['principalInvestigator'] != null
          ? Reference.fromJson(
              json['principalInvestigator'] as Map<String, dynamic>)
          : null,
      site: json['site'] != null
          ? (json['site'] as List<dynamic>)
              .map<Reference>(
                  (dynamic v) => Reference.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      reasonStopped: json['reasonStopped'] != null
          ? CodeableConcept.fromJson(
              json['reasonStopped'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      arm: json['arm'] != null
          ? (json['arm'] as List<dynamic>)
              .map<ResearchStudyArm>((dynamic v) =>
                  ResearchStudyArm.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      objective: json['objective'] != null
          ? (json['objective'] as List<dynamic>)
              .map<ResearchStudyObjective>((dynamic v) =>
                  ResearchStudyObjective.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
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
    Element? descriptionElement,
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
  });

  @override
  String get fhirType => 'ResearchStudyArm';

  @Id()
  int dbId = 0;

  /// [name] /// Unique, human-readable label for this arm of the study.
  final FhirString name;
  final Element? nameElement;

  /// [type] /// Categorization of study arm, e.g. experimental, active comparator, placebo
  /// comparater.
  final CodeableConcept? type;

  /// [description] /// A succinct description of the path through the study that would be followed
  /// by a subject adhering to this arm.
  final FhirString? description;
  final Element? descriptionElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
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
    json['name'] = name.toJson();
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.toJson();
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    return json;
  }

  factory ResearchStudyArm.fromJson(Map<String, dynamic> json) {
    return ResearchStudyArm(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      name: FhirString.fromJson(json['name']),
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      description: json['description'] != null
          ? FhirString.fromJson(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'ResearchStudyObjective';

  @Id()
  int dbId = 0;

  /// [name] /// Unique, human-readable label for this objective of the study.
  final FhirString? name;
  final Element? nameElement;

  /// [type] /// The kind of study objective.
  final CodeableConcept? type;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
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
    if (name?.value != null) {
      json['name'] = name!.toJson();
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    return json;
  }

  factory ResearchStudyObjective.fromJson(Map<String, dynamic> json) {
    return ResearchStudyObjective(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      name: json['name'] != null ? FhirString.fromJson(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ResearchStudyObjective clone() => throw UnimplementedError();
  @override
  ResearchStudyObjective copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
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
