// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'evidence.freezed.dart';
part 'evidence.g.dart';

/// [Evidence] The Evidence resource describes the conditional state
@freezed
class Evidence with _$Evidence implements DomainResource {
  /// [Evidence] The Evidence resource describes the conditional state
  const Evidence._();

  /// [Evidence] The Evidence resource describes the conditional state
  /// (population and any exposures being compared within the population) and
  /// outcome (if specified) that the knowledge (evidence, assertion,
  ///  recommendation) is about.
  ///
  /// [resourceType] This is a Evidence resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [url] An absolute URI that is used to identify this evidence when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// evidence is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the evidence is stored
  ///  on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this evidence
  /// when it is represented in other formats, or referenced in a specification,
  ///  model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// evidence when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the evidence author and is
  /// not expected to be globally unique. For example, it might be a timestamp
  /// (e.g. yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence. To
  /// provide a version consistent with the Decision Support Service
  /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
  /// information on versioning knowledge assets, refer to the Decision Support
  /// Service specification. Note that a version is required for
  ///  non-experimental active artifacts.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the evidence. This name should
  /// be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the evidence.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [shortTitle] The short title provides an alternate title for use in
  /// informal descriptive contexts where the full, formal title is not
  ///  necessary.
  ///
  /// [shortTitleElement] Extensions for shortTitle
  ///
  /// [subtitle] An explanatory or alternate title for the Evidence giving
  ///  additional information about its content.
  ///
  /// [subtitleElement] Extensions for subtitle
  ///
  /// [status] The status of this evidence. Enables tracking the life-cycle of
  ///  the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [date] The date  (and optionally time) when the evidence was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  ///  substantive content of the evidence changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  evidence.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the evidence
  ///  from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [note] A human-readable string to clarify or explain concepts about the
  ///  resource.
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate evidence instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the evidence is
  ///  intended to be used.
  ///
  /// [copyright] A copyright statement relating to the evidence and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the evidence.
  ///
  /// [copyrightElement] Extensions for copyright
  ///
  /// [approvalDate] The date on which the resource content was approved by the
  /// publisher. Approval happens once when the content is officially approved
  ///  for usage.
  ///
  /// [approvalDateElement] Extensions for approvalDate
  ///
  /// [lastReviewDate] The date on which the resource content was last
  /// reviewed. Review happens periodically after approval but does not change
  ///  the original approval date.
  ///
  /// [lastReviewDateElement] Extensions for lastReviewDate
  ///
  /// [effectivePeriod] The period during which the evidence content was or is
  ///  planned to be in active use.
  ///
  /// [topic] Descriptive topics related to the content of the Evidence. Topics
  /// provide a high-level categorization grouping types of Evidences that can
  ///  be useful for filtering and searching.
  ///
  /// [author] An individiual or organization primarily involved in the
  ///  creation and maintenance of the content.
  ///
  /// [editor] An individual or organization primarily responsible for internal
  ///  coherence of the content.
  ///
  /// [reviewer] An individual or organization primarily responsible for review
  ///  of some aspect of the content.
  ///
  /// [endorser] An individual or organization responsible for officially
  ///  endorsing the content for use in some setting.
  ///
  /// [relatedArtifact] Related artifacts such as additional documentation,
  ///  justification, or bibliographic references.
  ///
  /// [exposureBackground] A reference to a EvidenceVariable resource that
  ///  defines the population for the research.
  ///
  /// [exposureVariant] A reference to a EvidenceVariable resource that defines
  ///  the exposure for the research.
  ///
  /// [outcome] A reference to a EvidenceVariable resomece that defines the
  ///  outcome for the research.
  const factory Evidence({
    @Default(R4ResourceType.Evidence)
    @JsonKey(unknownEnumValue: R4ResourceType.Evidence)
    R4ResourceType resourceType,
    String? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
    FhirCode? language,
    @JsonKey(name: '_language') PrimitiveElement? languageElement,
    Narrative? text,
    List<Resource>? contained,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    @JsonKey(name: '_url') PrimitiveElement? urlElement,
    List<Identifier>? identifier,
    String? version,
    @JsonKey(name: '_version') PrimitiveElement? versionElement,
    String? title,
    @JsonKey(name: '_title') PrimitiveElement? titleElement,
    Reference? citeAsReference,
    FhirMarkdown? citAsMarkdown,
    @JsonKey(name: '_citeAsMarkdown') PrimitiveElement? citeAsMarkdownElement,
    FhirCode? status,
    @JsonKey(name: '_status') PrimitiveElement? statusElement,
    FhirDateTime? date,
    @JsonKey(name: '_date') PrimitiveElement? dateElement,
    List<UsageContext>? useContext,
    FhirDate? approvalDate,
    @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
    FhirDate? lastReviewDate,
    @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
    String? publisher,
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirMarkdown? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    FhirMarkdown? assertion,
    @JsonKey(name: '_assertion') PrimitiveElement? assertionElement,
    List<Annotation>? note,
    required List<EvidenceVariableDefinition> variableDefinition,
    CodeableConcept? synthesisType,
    CodeableConcept? studyType,
    List<EvidenceStatistic>? statistic,
    List<EvidenceCertainty>? certainty,
  }) = _Evidence;

  @override
  String get fhirType => 'Evidence';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Evidence.fromYaml(dynamic yaml) => yaml is String
      ? Evidence.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Evidence.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Evidence cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Evidence.fromJson(Map<String, dynamic> json) =>
      _$EvidenceFromJson(json);

  /// Acts like a constructor, returns a [Evidence], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Evidence.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [EvidenceVariableDefinition] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed

/// [EvidenceVariableDefinition] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed
class EvidenceVariableDefinition
    with _$EvidenceVariableDefinition
    implements BackboneElement {
  /// [EvidenceVariableDefinition] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  const EvidenceVariableDefinition._();

  /// [EvidenceVariableDefinition] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [description] A text description or summary of the variable.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [note] Footnotes and/or explanatory notes.;
  ///
  /// [variableRole] population | subpopulation | exposure | referenceExposure | measuredVariable | confounder.;
  ///
  /// [observed] Definition of the actual variable related to the statistic(s).;
  ///
  /// [intended] Definition of the intended variable related to the Evidence.;
  ///
  /// [directnessMatch] Indication of quality of match between intended variable to actual variable.;
  const factory EvidenceVariableDefinition({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirMarkdown? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    List<Annotation>? note,
    required CodeableConcept variableRole,
    Reference? observed,
    Reference? intended,
    CodeableConcept? directnessMatch,
  }) = _EvidenceVariableDefinition;

  @override
  String get fhirType => 'EvidenceVariableDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceVariableDefinition.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariableDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceVariableDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceVariableDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableDefinition.fromJson(Map<String, dynamic> json) =>
      _$EvidenceVariableDefinitionFromJson(json);

  /// Acts like a constructor, returns a [EvidenceVariableDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceVariableDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceVariableDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [EvidenceStatistic] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed

/// [EvidenceStatistic] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed
class EvidenceStatistic with _$EvidenceStatistic implements BackboneElement {
  /// [EvidenceStatistic] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  const EvidenceStatistic._();

  /// [EvidenceStatistic] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [description] A description of the content value of the statistic.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [note] Footnotes and/or explanatory notes.;
  ///
  /// [statisticType] Type of statistic, e.g., relative risk.;
  ///
  /// [category] When the measured variable is handled categorically, the category element is used to define which category the statistic is reporting.;
  ///
  /// [quantity] Statistic value.;
  ///
  /// [numberOfEvents] The number of events associated with the statistic, where the unit of analysis is different from numberAffected, sampleSize.knownDataCount and sampleSize.numberOfParticipants.;
  ///
  /// [numberOfEventsElement] (_numberOfEvents): Extensions for numberOfEvents;
  ///
  /// [numberAffected] The number of participants affected where the unit of analysis is the same as sampleSize.knownDataCount and sampleSize.numberOfParticipants.;
  ///
  /// [numberAffectedElement] (_numberAffected): Extensions for numberAffected;
  ///
  /// [sampleSize] Number of samples in the statistic.;
  ///
  /// [attributeEstimate] A statistical attribute of the statistic such as a measure of heterogeneity.;
  ///
  /// [modelCharacteristic] A component of the method to generate the statistic.;
  const factory EvidenceStatistic({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? statisticType,
    CodeableConcept? category,
    Quantity? quantity,
    FhirUnsignedInt? numberOfEvents,
    @JsonKey(name: '_numberOfEvents') PrimitiveElement? numberOfEventsElement,
    FhirUnsignedInt? numberAffected,
    @JsonKey(name: '_numberAffected') PrimitiveElement? numberAffectedElement,
    EvidenceSampleSize? sampleSize,
    List<EvidenceAttributeEstimate>? attributeEstimate,
    List<EvidenceModelCharacteristic>? modelCharacteristic,
  }) = _EvidenceStatistic;

  @override
  String get fhirType => 'EvidenceStatistic';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceStatistic.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceStatistic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceStatistic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceStatistic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceStatistic.fromJson(Map<String, dynamic> json) =>
      _$EvidenceStatisticFromJson(json);

  /// Acts like a constructor, returns a [EvidenceStatistic], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceStatistic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceStatisticFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [EvidenceSampleSize] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed

/// [EvidenceSampleSize] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed
class EvidenceSampleSize with _$EvidenceSampleSize implements BackboneElement {
  /// [EvidenceSampleSize] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  const EvidenceSampleSize._();

  /// [EvidenceSampleSize] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [description] Human-readable summary of population sample size.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [note] Footnote or explanatory note about the sample size.;
  ///
  /// [numberOfStudies] Number of participants in the population.;
  ///
  /// [numberOfStudiesElement] (_numberOfStudies): Extensions for numberOfStudies;
  ///
  /// [numberOfParticipants] A human-readable string to clarify or explain concepts about the sample size.;
  ///
  /// [numberOfParticipantsElement] (_numberOfParticipants): Extensions for numberOfParticipants;
  ///
  /// [knownDataCount] Number of participants with known results for measured variables.;
  ///
  /// [knownDataCountElement] (_knownDataCount): Extensions for knownDataCount;
  const factory EvidenceSampleSize({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    List<Annotation>? note,
    FhirUnsignedInt? numberOfStudies,
    @JsonKey(name: '_numberOfStudies') PrimitiveElement? numberOfStudiesElement,
    FhirUnsignedInt? numberOfParticipants,
    @JsonKey(name: '_numberOfParticipants')
    PrimitiveElement? numberOfParticipantsElement,
    FhirUnsignedInt? knownDataCount,
    @JsonKey(name: '_knownDataCount') PrimitiveElement? knownDataCountElement,
  }) = _EvidenceSampleSize;

  @override
  String get fhirType => 'EvidenceSampleSize';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceSampleSize.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceSampleSize.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceSampleSize.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceSampleSize cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceSampleSize.fromJson(Map<String, dynamic> json) =>
      _$EvidenceSampleSizeFromJson(json);

  /// Acts like a constructor, returns a [EvidenceSampleSize], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceSampleSize.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceSampleSizeFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [EvidenceAttributeEstimate] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed

/// [EvidenceAttributeEstimate] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed
class EvidenceAttributeEstimate
    with _$EvidenceAttributeEstimate
    implements BackboneElement {
  /// [EvidenceAttributeEstimate] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  const EvidenceAttributeEstimate._();

  /// [EvidenceAttributeEstimate] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [description] Human-readable summary of the estimate.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [note] Footnote or explanatory note about the estimate.;
  ///
  /// [type] The type of attribute estimate, e.g., confidence interval or p value.;
  ///
  /// [quantity] The singular quantity of the attribute estimate, for attribute estimates represented as single values; also used to report unit of measure.;
  ///
  /// [level] Use 95 for a 95% confidence interval.;
  ///
  /// [levelElement] (_level): Extensions for level;
  ///
  /// [range] Lower bound of confidence interval.;
  ///
  /// [attributeEstimate] A nested attribute estimate; which is the attribute estimate of an attribute estimate.;
  const factory EvidenceAttributeEstimate({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? type,
    Quantity? quantity,
    FhirDecimal? level,
    @JsonKey(name: '_level') PrimitiveElement? levelElement,
    Range? range,
    List<EvidenceAttributeEstimate>? attributeEstimate,
  }) = _EvidenceAttributeEstimate;

  @override
  String get fhirType => 'EvidenceAttributeEstimate';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceAttributeEstimate.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceAttributeEstimate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceAttributeEstimate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceAttributeEstimate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceAttributeEstimate.fromJson(Map<String, dynamic> json) =>
      _$EvidenceAttributeEstimateFromJson(json);

  /// Acts like a constructor, returns a [EvidenceAttributeEstimate], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceAttributeEstimate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceAttributeEstimateFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [EvidenceModelCharacteristic] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed

/// [EvidenceModelCharacteristic] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed
class EvidenceModelCharacteristic
    with _$EvidenceModelCharacteristic
    implements BackboneElement {
  /// [EvidenceModelCharacteristic] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  const EvidenceModelCharacteristic._();

  /// [EvidenceModelCharacteristic] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] Description of a component of the method to generate the statistic.;
  ///
  /// [value] Further specification of the quantified value of the component of the method to generate the statistic.;
  ///
  /// [variable] A variable adjusted for in the adjusted analysis.;
  ///
  /// [attributeEstimate] An attribute of the statistic used as a model characteristic.;
  const factory EvidenceModelCharacteristic({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required CodeableConcept code,
    Quantity? value,
    List<EvidenceVar>? variable,
    List<EvidenceAttributeEstimate>? attributeEstimate,
  }) = _EvidenceModelCharacteristic;

  @override
  String get fhirType => 'EvidenceModelCharacteristic';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceModelCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceModelCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceModelCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceModelCharacteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceModelCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$EvidenceModelCharacteristicFromJson(json);

  /// Acts like a constructor, returns a [EvidenceModelCharacteristic], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceModelCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceModelCharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [EvidenceVar] The Evidence Resource provides a machine-interpretable
@freezed

/// [EvidenceVar] The Evidence Resource provides a machine-interpretable
@freezed
class EvidenceVar with _$EvidenceVar implements BackboneElement {
  /// [EvidenceVar] The Evidence Resource provides a machine-interpretable
  const EvidenceVar._();

  /// [EvidenceVar] The Evidence Resource provides a machine-interpretable
  /// expression of an evidence concept including the evidence variables
  /// (eg population, exposures/interventions, comparators, outcomes, measured
  /// variables, confounding variables), the statistics, and the certainty of
  /// this evidence.
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  const factory EvidenceVar({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required Reference variableDefinition,
    FhirCode? handling,
    @JsonKey(name: '_handling') PrimitiveElement? handlingElement,
    List<CodeableConcept>? valueCategory,
    List<Quantity>? valueQuantity,
    List<Range>? valueRange,
  }) = _EvidenceVar;

  @override
  String get fhirType => 'EvidenceVar';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceVar.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVar.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceVar.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceVar cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceVar.fromJson(Map<String, dynamic> json) =>
      _$EvidenceVarFromJson(json);

  /// Acts like a constructor, returns a [EvidenceVar], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceVar.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceVarFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [EvidenceCertainty] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed

/// [EvidenceCertainty] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
@freezed
class EvidenceCertainty with _$EvidenceCertainty implements BackboneElement {
  /// [EvidenceCertainty] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.
  const EvidenceCertainty._();

  /// [EvidenceCertainty] The Evidence Resource provides a machine-interpretable expression of an evidence concept including the evidence variables (e.g., population, exposures/interventions, comparators, outcomes, measured variables, confounding variables), the statistics, and the certainty of this evidence.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [description] Textual description of certainty.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [note] Footnotes and/or explanatory notes.;
  ///
  /// [type] Aspect of certainty being rated.;
  ///
  /// [rating] Assessment or judgement of the aspect.;
  ///
  /// [rater] Individual or group who did the rating.;
  ///
  /// [raterElement] (_rater): Extensions for rater;
  ///
  /// [subcomponent] A domain or subdomain of certainty.;
  const factory EvidenceCertainty({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    List<Annotation>? note,
    CodeableConcept? type,
    CodeableConcept? rating,
    String? rater,
    @JsonKey(name: '_rater') PrimitiveElement? raterElement,
    List<EvidenceCertainty>? subcomponent,
  }) = _EvidenceCertainty;

  @override
  String get fhirType => 'EvidenceCertainty';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceCertainty.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceCertainty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceCertainty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceCertainty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceCertainty.fromJson(Map<String, dynamic> json) =>
      _$EvidenceCertaintyFromJson(json);

  /// Acts like a constructor, returns a [EvidenceCertainty], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceCertainty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceCertaintyFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
