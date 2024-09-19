// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'plan_definition.freezed.dart';
part 'plan_definition.g.dart';

/// [PlanDefinition] This resource allows for the definition of various types
@freezed
class PlanDefinition extends DomainResource with _$PlanDefinition {
  /// [PlanDefinition] This resource allows for the definition of various types
  PlanDefinition._();

  /// [PlanDefinition] This resource allows for the definition of various types
  /// of plans as a sharable, consumable, and executable artifact. The resource
  /// is general enough to support the description of a broad range of clinical
  /// artifacts such as clinical decision support rules, order sets and
  ///  protocols.
  ///
  /// [resourceType] This is a PlanDefinition resource
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
  /// [url] An absolute URI that is used to identify this plan definition when
  /// it is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// plan definition is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the plan definition is
  ///  stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this plan
  /// definition when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// plan definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the plan definition author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence. To provide a version consistent with the Decision Support
  /// Service specification, use the format Major.Minor.Revision (e.g. 1.0.0).
  /// For more information on versioning knowledge assets, refer to the Decision
  /// Support Service specification. Note that a version is required for
  ///  non-experimental active artifacts.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the plan definition. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the plan
  ///  definition.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [subtitle] An explanatory or alternate title for the plan definition
  ///  giving additional information about its content.
  ///
  /// [subtitleElement] Extensions for subtitle
  ///
  /// [type] A high-level category for the plan definition that distinguishes
  ///  the kinds of systems that would be interested in the plan definition.
  ///
  /// [status] The status of this plan definition. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this plan definition is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [subjectCodeableConcept] A code or group definition that describes the
  ///  intended subject of the plan definition.
  ///
  /// [subjectReference] A code or group definition that describes the intended
  ///  subject of the plan definition.
  ///
  /// [date] The date  (and optionally time) when the plan definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the plan definition changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  plan definition.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the plan
  ///  definition from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate plan definition instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the plan definition
  ///  is intended to be used.
  ///
  /// [purpose] Explanation of why this plan definition is needed and why it
  ///  has been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [usage] A detailed description of how the plan definition is used from a
  ///  clinical perspective.
  ///
  /// [usageElement] Extensions for usage
  ///
  /// [copyright] A copyright statement relating to the plan definition and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the plan definition.
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
  /// [effectivePeriod] The period during which the plan definition content was
  ///  or is planned to be in active use.
  ///
  /// [topic] Descriptive topics related to the content of the plan definition.
  /// Topics provide a high-level categorization of the definition that can be
  ///  useful for filtering and searching.
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
  /// [library] A reference to a Library resource containing any formal logic
  ///  used by the plan definition.
  ///
  /// [goal] Goals that describe what the activities within the plan are
  /// intended to achieve. For example, weight loss, restoring an activity of
  /// daily living, obtaining herd immunity via immunization, meeting a process
  ///  improvement objective, etc.
  ///
  /// [action] An action or group of actions to be taken as part of the plan.
  factory PlanDefinition({
    @Default(R4ResourceType.PlanDefinition)
    @JsonKey(unknownEnumValue: R4ResourceType.PlanDefinition)

    /// [resourceType] This is a PlanDefinition resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [url] An absolute URI that is used to identify this plan definition when
    /// it is referenced in a specification, model, design or an instance; also
    /// called its canonical identifier. This SHOULD be globally unique and SHOULD
    /// be a literal address at which at which an authoritative instance of this
    /// plan definition is (or will be) published. This URL can be the target of a
    /// canonical reference. It SHALL remain the same when the plan definition is
    ///  stored on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [identifier] A formal identifier that is used to identify this plan
    /// definition when it is represented in other formats, or referenced in a
    ///  specification, model, design or an instance.
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the
    /// plan definition when it is referenced in a specification, model, design or
    /// instance. This is an arbitrary value managed by the plan definition author
    /// and is not expected to be globally unique. For example, it might be a
    /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
    /// also no expectation that versions can be placed in a lexicographical
    /// sequence. To provide a version consistent with the Decision Support
    /// Service specification, use the format Major.Minor.Revision (e.g. 1.0.0).
    /// For more information on versioning knowledge assets, refer to the Decision
    /// Support Service specification. Note that a version is required for
    ///  non-experimental active artifacts.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the plan definition. This name
    /// should be usable as an identifier for the module by machine processing
    ///  applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the plan
    ///  definition.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [subtitle] An explanatory or alternate title for the plan definition
    ///  giving additional information about its content.
    String? subtitle,

    /// [subtitleElement] Extensions for subtitle
    @JsonKey(name: '_subtitle') PrimitiveElement? subtitleElement,

    /// [type] A high-level category for the plan definition that distinguishes
    ///  the kinds of systems that would be interested in the plan definition.
    CodeableConcept? type,

    /// [status] The status of this plan definition. Enables tracking the
    ///  life-cycle of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this plan definition is
    /// authored for testing purposes (or education/evaluation/marketing) and is
    ///  not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [subjectCodeableConcept] A code or group definition that describes the
    ///  intended subject of the plan definition.
    CodeableConcept? subjectCodeableConcept,

    /// [subjectReference] A code or group definition that describes the intended
    ///  subject of the plan definition.
    Reference? subjectReference,
    FhirCanonical? subjectCanonical,
    @JsonKey(name: '_subjectCanonical')
    PrimitiveElement? subjectCanonicalElement,

    /// [date] The date  (and optionally time) when the plan definition was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the plan definition changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  plan definition.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the plan
    ///  definition from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate plan definition instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the plan definition
    ///  is intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this plan definition is needed and why it
    ///  has been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [usage] A detailed description of how the plan definition is used from a
    ///  clinical perspective.
    String? usage,

    /// [usageElement] Extensions for usage
    @JsonKey(name: '_usage') PrimitiveElement? usageElement,

    /// [copyright] A copyright statement relating to the plan definition and/or
    /// its contents. Copyright statements are generally legal restrictions on the
    ///  use and publishing of the plan definition.
    FhirMarkdown? copyright,

    /// [copyrightElement] Extensions for copyright
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,

    /// [approvalDate] The date on which the resource content was approved by the
    /// publisher. Approval happens once when the content is officially approved
    ///  for usage.
    FhirDate? approvalDate,

    /// [approvalDateElement] Extensions for approvalDate
    @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,

    /// [lastReviewDate] The date on which the resource content was last
    /// reviewed. Review happens periodically after approval but does not change
    ///  the original approval date.
    FhirDate? lastReviewDate,

    /// [lastReviewDateElement] Extensions for lastReviewDate
    @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,

    /// [effectivePeriod] The period during which the plan definition content was
    ///  or is planned to be in active use.
    Period? effectivePeriod,

    /// [topic] Descriptive topics related to the content of the plan definition.
    /// Topics provide a high-level categorization of the definition that can be
    ///  useful for filtering and searching.
    List<CodeableConcept>? topic,

    /// [author] An individiual or organization primarily involved in the
    ///  creation and maintenance of the content.
    List<ContactDetail>? author,

    /// [editor] An individual or organization primarily responsible for internal
    ///  coherence of the content.
    List<ContactDetail>? editor,

    /// [reviewer] An individual or organization primarily responsible for review
    ///  of some aspect of the content.
    List<ContactDetail>? reviewer,

    /// [endorser] An individual or organization responsible for officially
    ///  endorsing the content for use in some setting.
    List<ContactDetail>? endorser,

    /// [relatedArtifact] Related artifacts such as additional documentation,
    ///  justification, or bibliographic references.
    List<RelatedArtifact>? relatedArtifact,

    /// [library] A reference to a Library resource containing any formal logic
    ///  used by the plan definition.
    @JsonKey(name: 'library') List<FhirCanonical>? library_,

    /// [goal] Goals that describe what the activities within the plan are
    /// intended to achieve. For example, weight loss, restoring an activity of
    /// daily living, obtaining herd immunity via immunization, meeting a process
    ///  improvement objective, etc.
    List<PlanDefinitionGoal>? goal,

    /// [action] An action or group of actions to be taken as part of the plan.
    List<PlanDefinitionAction>? action,
  }) = _PlanDefinition;

  @override
  String get fhirType => 'PlanDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PlanDefinition.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PlanDefinition.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinitionFromJson(json);

  /// Acts like a constructor, returns a [PlanDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PlanDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

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
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [PlanDefinitionGoal] This resource allows for the definition of various
@freezed

/// [PlanDefinitionGoal] This resource allows for the definition of various
@freezed
class PlanDefinitionGoal extends BackboneElement with _$PlanDefinitionGoal {
  /// [PlanDefinitionGoal] This resource allows for the definition of various
  PlanDefinitionGoal._();

  /// [PlanDefinitionGoal] This resource allows for the definition of various
  /// types of plans as a sharable, consumable, and executable artifact. The
  /// resource is general enough to support the description of a broad range of
  /// clinical artifacts such as clinical decision support rules, order sets and
  ///  protocols.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [category] Indicates a category the goal falls within.
  ///
  /// [description] Human-readable and/or coded description of a specific
  /// desired objective of care, such as "control blood pressure" or "negotiate
  ///  an obstacle course" or "dance with child at wedding".
  ///
  /// [priority] Identifies the expected level of importance associated with
  ///  reaching/sustaining the defined goal.
  ///
  /// [start] The event after which the goal should begin being pursued.
  ///
  /// [addresses] Identifies problems, conditions, issues, or concerns the goal
  ///  is intended to address.
  ///
  /// [documentation] Didactic or other informational resources associated with
  /// the goal that provide further supporting information about the goal.
  /// Information resources can include inline text commentary and links to web
  ///  resources.
  ///
  /// [target] Indicates what should be done and within what timeframe.
  factory PlanDefinitionGoal({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [category] Indicates a category the goal falls within.
    CodeableConcept? category,

    /// [description] Human-readable and/or coded description of a specific
    /// desired objective of care, such as "control blood pressure" or "negotiate
    ///  an obstacle course" or "dance with child at wedding".
    required CodeableConcept description,

    /// [priority] Identifies the expected level of importance associated with
    ///  reaching/sustaining the defined goal.
    CodeableConcept? priority,

    /// [start] The event after which the goal should begin being pursued.
    CodeableConcept? start,

    /// [addresses] Identifies problems, conditions, issues, or concerns the goal
    ///  is intended to address.
    List<CodeableConcept>? addresses,

    /// [documentation] Didactic or other informational resources associated with
    /// the goal that provide further supporting information about the goal.
    /// Information resources can include inline text commentary and links to web
    ///  resources.
    List<RelatedArtifact>? documentation,

    /// [target] Indicates what should be done and within what timeframe.
    List<PlanDefinitionTarget>? target,
  }) = _PlanDefinitionGoal;

  @override
  String get fhirType => 'PlanDefinitionGoal';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PlanDefinitionGoal.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionGoal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinitionGoal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinitionGoal cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionGoal.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinitionGoalFromJson(json);

  /// Acts like a constructor, returns a [PlanDefinitionGoal], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PlanDefinitionGoal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinitionGoalFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [PlanDefinitionTarget] This resource allows for the definition of
@freezed

/// [PlanDefinitionTarget] This resource allows for the definition of
@freezed
class PlanDefinitionTarget extends BackboneElement with _$PlanDefinitionTarget {
  /// [PlanDefinitionTarget] This resource allows for the definition of
  PlanDefinitionTarget._();

  /// [PlanDefinitionTarget] This resource allows for the definition of
  /// various types of plans as a sharable, consumable, and executable artifact.
  /// The resource is general enough to support the description of a broad range
  /// of clinical artifacts such as clinical decision support rules, order sets
  ///  and protocols.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [measure] The parameter whose value is to be tracked, e.g. body weight,
  ///  blood pressure, or hemoglobin A1c level.
  ///
  /// [detailQuantity] The target value of the measure to be achieved to
  /// signify fulfillment of the goal, e.g. 150 pounds or 7.0%. Either the high
  /// or low or both values of the range can be specified. When a low value is
  /// missing, it indicates that the goal is achieved at any value at or below
  /// the high value. Similarly, if the high value is missing, it indicates that
  ///  the goal is achieved at any value at or above the low value.
  ///
  /// [detailRange] The target value of the measure to be achieved to signify
  /// fulfillment of the goal, e.g. 150 pounds or 7.0%. Either the high or low
  /// or both values of the range can be specified. When a low value is missing,
  /// it indicates that the goal is achieved at any value at or below the high
  /// value. Similarly, if the high value is missing, it indicates that the goal
  ///  is achieved at any value at or above the low value.
  ///
  /// [detailCodeableConcept] The target value of the measure to be achieved to
  /// signify fulfillment of the goal, e.g. 150 pounds or 7.0%. Either the high
  /// or low or both values of the range can be specified. When a low value is
  /// missing, it indicates that the goal is achieved at any value at or below
  /// the high value. Similarly, if the high value is missing, it indicates that
  ///  the goal is achieved at any value at or above the low value.
  ///
  /// [due] Indicates the timeframe after the start of the goal in which the
  ///  goal should be met.
  factory PlanDefinitionTarget({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [measure] The parameter whose value is to be tracked, e.g. body weight,
    ///  blood pressure, or hemoglobin A1c level.
    CodeableConcept? measure,

    /// [detailQuantity] The target value of the measure to be achieved to
    /// signify fulfillment of the goal, e.g. 150 pounds or 7.0%. Either the high
    /// or low or both values of the range can be specified. When a low value is
    /// missing, it indicates that the goal is achieved at any value at or below
    /// the high value. Similarly, if the high value is missing, it indicates that
    ///  the goal is achieved at any value at or above the low value.
    Quantity? detailQuantity,

    /// [detailRange] The target value of the measure to be achieved to signify
    /// fulfillment of the goal, e.g. 150 pounds or 7.0%. Either the high or low
    /// or both values of the range can be specified. When a low value is missing,
    /// it indicates that the goal is achieved at any value at or below the high
    /// value. Similarly, if the high value is missing, it indicates that the goal
    ///  is achieved at any value at or above the low value.
    Range? detailRange,

    /// [detailCodeableConcept] The target value of the measure to be achieved to
    /// signify fulfillment of the goal, e.g. 150 pounds or 7.0%. Either the high
    /// or low or both values of the range can be specified. When a low value is
    /// missing, it indicates that the goal is achieved at any value at or below
    /// the high value. Similarly, if the high value is missing, it indicates that
    ///  the goal is achieved at any value at or above the low value.
    CodeableConcept? detailCodeableConcept,

    /// [due] Indicates the timeframe after the start of the goal in which the
    ///  goal should be met.
    FhirDuration? due,
  }) = _PlanDefinitionTarget;

  @override
  String get fhirType => 'PlanDefinitionTarget';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PlanDefinitionTarget.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinitionTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinitionTarget cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionTarget.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinitionTargetFromJson(json);

  /// Acts like a constructor, returns a [PlanDefinitionTarget], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PlanDefinitionTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinitionTargetFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [PlanDefinitionAction] This resource allows for the definition of
@freezed

/// [PlanDefinitionAction] This resource allows for the definition of
@freezed
class PlanDefinitionAction extends BackboneElement with _$PlanDefinitionAction {
  /// [PlanDefinitionAction] This resource allows for the definition of
  PlanDefinitionAction._();

  /// [PlanDefinitionAction] This resource allows for the definition of
  /// various types of plans as a sharable, consumable, and executable artifact.
  /// The resource is general enough to support the description of a broad range
  /// of clinical artifacts such as clinical decision support rules, order sets
  ///  and protocols.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [prefix] A user-visible prefix for the action.
  ///
  /// [prefixElement] Extensions for prefix
  ///
  /// [title] The title of the action displayed to a user.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [description] A brief description of the action used to provide a summary
  ///  to display to the user.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [textEquivalent] A text equivalent of the action to be performed. This
  /// provides a human-interpretable description of the action when the
  /// definition is consumed by a system that might not be capable of
  ///  interpreting it dynamically.
  ///
  /// [textEquivalentElement] Extensions for textEquivalent
  ///
  /// [priority] Indicates how quickly the action should be addressed with
  ///  respect to other actions.
  ///
  /// [priorityElement] Extensions for priority
  ///
  /// [code] A code that provides meaning for the action or action group. For
  /// example, a section may have a LOINC code for the section of a
  ///  documentation template.
  ///
  /// [reason] A description of why this action is necessary or appropriate.
  ///
  /// [documentation] Didactic or other informational resources associated with
  /// the action that can be provided to the CDS recipient. Information
  ///  resources can include inline text commentary and links to web resources.
  ///
  /// [goalId] Identifies goals that this action supports. The reference must
  ///  be to a goal element defined within this plan definition.
  ///
  /// [goalIdElement] Extensions for goalId
  ///
  /// [subjectCodeableConcept] A code or group definition that describes the
  ///  intended subject of the action and its children, if any.
  ///
  /// [subjectReference] A code or group definition that describes the intended
  ///  subject of the action and its children, if any.
  ///
  /// [trigger] A description of when the action should be triggered.
  ///
  /// [condition] An expression that describes applicability criteria or
  ///  start/stop conditions for the action.
  ///
  /// [input] Defines input data requirements for the action.
  ///
  /// [output] Defines the outputs of the action, if any.
  ///
  /// [relatedAction] A relationship to another action such as "before" or
  ///  "30-60 minutes after start of".
  ///
  /// [timingDateTime] An optional value describing when the action should be
  ///  performed.
  ///
  /// [timingDateTimeElement] Extensions for timingDateTime
  ///
  /// [timingAge] An optional value describing when the action should be
  ///  performed.
  ///
  /// [timingPeriod] An optional value describing when the action should be
  ///  performed.
  ///
  /// [timingDuration] An optional value describing when the action should be
  ///  performed.
  ///
  /// [timingRange] An optional value describing when the action should be
  ///  performed.
  ///
  /// [timingTiming] An optional value describing when the action should be
  ///  performed.
  ///
  /// [participant] Indicates who should participate in performing the action
  ///  described.
  ///
  /// [type] The type of action to perform (create, update, remove).
  ///
  /// [groupingBehavior] Defines the grouping behavior for the action and its
  ///  children.
  ///
  /// [groupingBehaviorElement] Extensions for groupingBehavior
  ///
  /// [selectionBehavior] Defines the selection behavior for the action and its
  ///  children.
  ///
  /// [selectionBehaviorElement] Extensions for selectionBehavior
  ///
  /// [requiredBehavior] Defines the required behavior for the action.
  ///
  /// [requiredBehaviorElement] Extensions for requiredBehavior
  ///
  /// [precheckBehavior] Defines whether the action should usually be
  ///  preselected.
  ///
  /// [precheckBehaviorElement] Extensions for precheckBehavior
  ///
  /// [cardinalityBehavior] Defines whether the action can be selected multiple
  ///  times.
  ///
  /// [cardinalityBehaviorElement] Extensions for cardinalityBehavior
  ///
  /// [definitionCanonical] A reference to an ActivityDefinition that describes
  /// the action to be taken in detail, or a PlanDefinition that describes a
  ///  series of actions to be taken.
  ///
  /// [definitionCanonicalElement] Extensions for definitionCanonical
  ///
  /// [definitionUri] A reference to an ActivityDefinition that describes the
  /// action to be taken in detail, or a PlanDefinition that describes a series
  ///  of actions to be taken.
  ///
  /// [definitionUriElement] Extensions for definitionUri
  ///
  /// [transform] A reference to a StructureMap resource that defines a
  /// transform that can be executed to produce the intent resource using the
  ///  ActivityDefinition instance as the input.
  ///
  /// [dynamicValue] Customizations that should be applied to the statically
  /// defined resource. For example, if the dosage of a medication must be
  /// computed based on the patient's weight, a customization would be used to
  /// specify an expression that calculated the weight, and the path on the
  ///  resource that would contain the result.
  ///
  /// [action] Sub actions that are contained within the action. The behavior
  /// of this action determines the functionality of the sub-actions. For
  /// example, a selection behavior of at-most-one indicates that of the
  /// sub-actions, at most one may be chosen as part of realizing the action
  ///  definition.
  factory PlanDefinitionAction({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [prefix] A user-visible prefix for the action.
    String? prefix,

    /// [prefixElement] Extensions for prefix
    @JsonKey(name: '_prefix') PrimitiveElement? prefixElement,

    /// [title] The title of the action displayed to a user.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [description] A brief description of the action used to provide a summary
    ///  to display to the user.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [textEquivalent] A text equivalent of the action to be performed. This
    /// provides a human-interpretable description of the action when the
    /// definition is consumed by a system that might not be capable of
    ///  interpreting it dynamically.
    String? textEquivalent,

    /// [textEquivalentElement] Extensions for textEquivalent
    @JsonKey(name: '_textEquivalent') PrimitiveElement? textEquivalentElement,

    /// [priority] Indicates how quickly the action should be addressed with
    ///  respect to other actions.
    FhirCode? priority,

    /// [priorityElement] Extensions for priority
    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,

    /// [code] A code that provides meaning for the action or action group. For
    /// example, a section may have a LOINC code for the section of a
    ///  documentation template.
    List<CodeableConcept>? code,

    /// [reason] A description of why this action is necessary or appropriate.
    List<CodeableConcept>? reason,

    /// [documentation] Didactic or other informational resources associated with
    /// the action that can be provided to the CDS recipient. Information
    ///  resources can include inline text commentary and links to web resources.
    List<RelatedArtifact>? documentation,

    /// [goalId] Identifies goals that this action supports. The reference must
    ///  be to a goal element defined within this plan definition.
    List<FhirId>? goalId,

    /// [goalIdElement] Extensions for goalId
    @JsonKey(name: '_goalId') List<PrimitiveElement>? goalIdElement,

    /// [subjectCodeableConcept] A code or group definition that describes the
    ///  intended subject of the action and its children, if any.
    CodeableConcept? subjectCodeableConcept,

    /// [subjectReference] A code or group definition that describes the intended
    ///  subject of the action and its children, if any.
    Reference? subjectReference,
    FhirCanonical? subjectCanonical,
    @JsonKey(name: '_subjectCanonical')
    List<PrimitiveElement>? subjectCanonicalElement,

    /// [trigger] A description of when the action should be triggered.
    List<TriggerDefinition>? trigger,

    /// [condition] An expression that describes applicability criteria or
    ///  start/stop conditions for the action.
    List<PlanDefinitionCondition>? condition,

    /// [input] Defines input data requirements for the action.
    List<DataRequirement>? input,

    /// [output] Defines the outputs of the action, if any.
    List<DataRequirement>? output,

    /// [relatedAction] A relationship to another action such as "before" or
    ///  "30-60 minutes after start of".
    List<PlanDefinitionRelatedAction>? relatedAction,

    /// [timingDateTime] An optional value describing when the action should be
    ///  performed.
    FhirDateTime? timingDateTime,

    /// [timingDateTimeElement] Extensions for timingDateTime
    @JsonKey(name: '_timingDateTime') PrimitiveElement? timingDateTimeElement,

    /// [timingAge] An optional value describing when the action should be
    ///  performed.
    Age? timingAge,

    /// [timingPeriod] An optional value describing when the action should be
    ///  performed.
    Period? timingPeriod,

    /// [timingDuration] An optional value describing when the action should be
    ///  performed.
    FhirDuration? timingDuration,

    /// [timingRange] An optional value describing when the action should be
    ///  performed.
    Range? timingRange,

    /// [timingTiming] An optional value describing when the action should be
    ///  performed.
    Timing? timingTiming,

    /// [participant] Indicates who should participate in performing the action
    ///  described.
    List<PlanDefinitionParticipant>? participant,

    /// [type] The type of action to perform (create, update, remove).
    CodeableConcept? type,

    /// [groupingBehavior] Defines the grouping behavior for the action and its
    ///  children.
    FhirCode? groupingBehavior,

    /// [groupingBehaviorElement] Extensions for groupingBehavior
    @JsonKey(name: '_groupingBehavior')
    PrimitiveElement? groupingBehaviorElement,

    /// [selectionBehavior] Defines the selection behavior for the action and its
    ///  children.
    FhirCode? selectionBehavior,

    /// [selectionBehaviorElement] Extensions for selectionBehavior
    @JsonKey(name: '_selectionBehavior')
    PrimitiveElement? selectionBehaviorElement,

    /// [requiredBehavior] Defines the required behavior for the action.
    FhirCode? requiredBehavior,

    /// [requiredBehaviorElement] Extensions for requiredBehavior
    @JsonKey(name: '_requiredBehavior')
    PrimitiveElement? requiredBehaviorElement,

    /// [precheckBehavior] Defines whether the action should usually be
    ///  preselected.
    FhirCode? precheckBehavior,

    /// [precheckBehaviorElement] Extensions for precheckBehavior
    @JsonKey(name: '_precheckBehavior')
    PrimitiveElement? precheckBehaviorElement,

    /// [cardinalityBehavior] Defines whether the action can be selected multiple
    ///  times.
    FhirCode? cardinalityBehavior,

    /// [cardinalityBehaviorElement] Extensions for cardinalityBehavior
    @JsonKey(name: '_cardinalityBehavior')
    PrimitiveElement? cardinalityBehaviorElement,

    /// [definitionCanonical] A reference to an ActivityDefinition that describes
    /// the action to be taken in detail, or a PlanDefinition that describes a
    ///  series of actions to be taken.
    FhirCanonical? definitionCanonical,

    /// [definitionCanonicalElement] Extensions for definitionCanonical
    @JsonKey(name: '_definitionCanonical')
    PrimitiveElement? definitionCanonicalElement,

    /// [definitionUri] A reference to an ActivityDefinition that describes the
    /// action to be taken in detail, or a PlanDefinition that describes a series
    ///  of actions to be taken.
    FhirUri? definitionUri,

    /// [definitionUriElement] Extensions for definitionUri
    @JsonKey(name: '_definitionUri') PrimitiveElement? definitionUriElement,

    /// [transform] A reference to a StructureMap resource that defines a
    /// transform that can be executed to produce the intent resource using the
    ///  ActivityDefinition instance as the input.
    FhirCanonical? transform,

    /// [dynamicValue] Customizations that should be applied to the statically
    /// defined resource. For example, if the dosage of a medication must be
    /// computed based on the patient's weight, a customization would be used to
    /// specify an expression that calculated the weight, and the path on the
    ///  resource that would contain the result.
    List<PlanDefinitionDynamicValue>? dynamicValue,

    /// [action] Sub actions that are contained within the action. The behavior
    /// of this action determines the functionality of the sub-actions. For
    /// example, a selection behavior of at-most-one indicates that of the
    /// sub-actions, at most one may be chosen as part of realizing the action
    ///  definition.
    List<PlanDefinitionAction>? action,
  }) = _PlanDefinitionAction;

  @override
  String get fhirType => 'PlanDefinitionAction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PlanDefinitionAction.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinitionAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinitionAction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionAction.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinitionActionFromJson(json);

  /// Acts like a constructor, returns a [PlanDefinitionAction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PlanDefinitionAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinitionActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [PlanDefinitionCondition] This resource allows for the definition of
@freezed

/// [PlanDefinitionCondition] This resource allows for the definition of
@freezed
class PlanDefinitionCondition extends BackboneElement
    with _$PlanDefinitionCondition {
  /// [PlanDefinitionCondition] This resource allows for the definition of
  PlanDefinitionCondition._();

  /// [PlanDefinitionCondition] This resource allows for the definition of
  /// various types of plans as a sharable, consumable, and executable artifact.
  /// The resource is general enough to support the description of a broad range
  /// of clinical artifacts such as clinical decision support rules, order sets
  ///  and protocols.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [kind] The kind of condition.
  ///
  /// [kindElement] Extensions for kind
  ///
  /// [expression] An expression that returns true or false, indicating whether
  ///  the condition is satisfied.
  factory PlanDefinitionCondition({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [kind] The kind of condition.
    FhirCode? kind,

    /// [kindElement] Extensions for kind
    @JsonKey(name: '_kind') PrimitiveElement? kindElement,

    /// [expression] An expression that returns true or false, indicating whether
    ///  the condition is satisfied.
    FhirExpression? expression,
  }) = _PlanDefinitionCondition;

  @override
  String get fhirType => 'PlanDefinitionCondition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PlanDefinitionCondition.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionCondition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinitionCondition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinitionCondition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionCondition.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinitionConditionFromJson(json);

  /// Acts like a constructor, returns a [PlanDefinitionCondition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PlanDefinitionCondition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinitionConditionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [PlanDefinitionRelatedAction] This resource allows for the definition of
@freezed

/// [PlanDefinitionRelatedAction] This resource allows for the definition of
@freezed
class PlanDefinitionRelatedAction extends BackboneElement
    with _$PlanDefinitionRelatedAction {
  /// [PlanDefinitionRelatedAction] This resource allows for the definition of
  PlanDefinitionRelatedAction._();

  /// [PlanDefinitionRelatedAction] This resource allows for the definition of
  /// various types of plans as a sharable, consumable, and executable artifact.
  /// The resource is general enough to support the description of a broad range
  /// of clinical artifacts such as clinical decision support rules, order sets
  ///  and protocols.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [actionId] The element id of the related action.
  ///
  /// [actionIdElement] Extensions for actionId
  ///
  /// [relationship] The relationship of this action to the related action.
  ///
  /// [relationshipElement] Extensions for relationship
  ///
  /// [offsetDuration] A duration or range of durations to apply to the
  ///  relationship. For example, 30-60 minutes before.
  ///
  /// [offsetRange] A duration or range of durations to apply to the
  ///  relationship. For example, 30-60 minutes before.
  factory PlanDefinitionRelatedAction({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [actionId] The element id of the related action.
    FhirId? actionId,

    /// [actionIdElement] Extensions for actionId
    @JsonKey(name: '_actionId') PrimitiveElement? actionIdElement,

    /// [relationship] The relationship of this action to the related action.
    FhirCode? relationship,

    /// [relationshipElement] Extensions for relationship
    @JsonKey(name: '_relationship') PrimitiveElement? relationshipElement,

    /// [offsetDuration] A duration or range of durations to apply to the
    ///  relationship. For example, 30-60 minutes before.
    FhirDuration? offsetDuration,

    /// [offsetRange] A duration or range of durations to apply to the
    ///  relationship. For example, 30-60 minutes before.
    Range? offsetRange,
  }) = _PlanDefinitionRelatedAction;

  @override
  String get fhirType => 'PlanDefinitionRelatedAction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PlanDefinitionRelatedAction.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionRelatedAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinitionRelatedAction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinitionRelatedAction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionRelatedAction.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinitionRelatedActionFromJson(json);

  /// Acts like a constructor, returns a [PlanDefinitionRelatedAction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PlanDefinitionRelatedAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinitionRelatedActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [PlanDefinitionParticipant] This resource allows for the definition of
@freezed

/// [PlanDefinitionParticipant] This resource allows for the definition of
@freezed
class PlanDefinitionParticipant extends BackboneElement
    with _$PlanDefinitionParticipant {
  /// [PlanDefinitionParticipant] This resource allows for the definition of
  PlanDefinitionParticipant._();

  /// [PlanDefinitionParticipant] This resource allows for the definition of
  /// various types of plans as a sharable, consumable, and executable artifact.
  /// The resource is general enough to support the description of a broad range
  /// of clinical artifacts such as clinical decision support rules, order sets
  ///  and protocols.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [type] The type of participant in the action.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [role] The role the participant should play in performing the described
  ///  action.
  factory PlanDefinitionParticipant({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [type] The type of participant in the action.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [role] The role the participant should play in performing the described
    ///  action.
    CodeableConcept? role,
  }) = _PlanDefinitionParticipant;

  @override
  String get fhirType => 'PlanDefinitionParticipant';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PlanDefinitionParticipant.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionParticipant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinitionParticipant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinitionParticipant cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionParticipant.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinitionParticipantFromJson(json);

  /// Acts like a constructor, returns a [PlanDefinitionParticipant], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PlanDefinitionParticipant.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinitionParticipantFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [PlanDefinitionDynamicValue] This resource allows for the definition of
@freezed

/// [PlanDefinitionDynamicValue] This resource allows for the definition of
@freezed
class PlanDefinitionDynamicValue extends BackboneElement
    with _$PlanDefinitionDynamicValue {
  /// [PlanDefinitionDynamicValue] This resource allows for the definition of
  PlanDefinitionDynamicValue._();

  /// [PlanDefinitionDynamicValue] This resource allows for the definition of
  /// various types of plans as a sharable, consumable, and executable artifact.
  /// The resource is general enough to support the description of a broad range
  /// of clinical artifacts such as clinical decision support rules, order sets
  ///  and protocols.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [path] The path to the element to be customized. This is the path on the
  /// resource that will hold the result of the calculation defined by the
  /// expression. The specified path SHALL be a FHIRPath resolveable on the
  /// specified target type of the ActivityDefinition, and SHALL consist only of
  /// identifiers, constant indexers, and a restricted subset of functions. The
  /// path is allowed to contain qualifiers (.) to traverse sub-elements, as
  /// well as indexers ([x]) to traverse multiple-cardinality sub-elements (see
  ///  the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
  ///
  /// [pathElement] Extensions for path
  ///
  /// [expression] An expression specifying the value of the customized
  ///  element.
  factory PlanDefinitionDynamicValue({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [path] The path to the element to be customized. This is the path on the
    /// resource that will hold the result of the calculation defined by the
    /// expression. The specified path SHALL be a FHIRPath resolveable on the
    /// specified target type of the ActivityDefinition, and SHALL consist only of
    /// identifiers, constant indexers, and a restricted subset of functions. The
    /// path is allowed to contain qualifiers (.) to traverse sub-elements, as
    /// well as indexers ([x]) to traverse multiple-cardinality sub-elements (see
    ///  the [Simple FHIRPath Profile](fhirpath.html#simple) for full details).
    String? path,

    /// [pathElement] Extensions for path
    @JsonKey(name: '_path') PrimitiveElement? pathElement,

    /// [expression] An expression specifying the value of the customized
    ///  element.
    FhirExpression? expression,
  }) = _PlanDefinitionDynamicValue;

  @override
  String get fhirType => 'PlanDefinitionDynamicValue';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory PlanDefinitionDynamicValue.fromYaml(dynamic yaml) => yaml is String
      ? PlanDefinitionDynamicValue.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PlanDefinitionDynamicValue.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PlanDefinitionDynamicValue cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory PlanDefinitionDynamicValue.fromJson(Map<String, dynamic> json) =>
      _$PlanDefinitionDynamicValueFromJson(json);

  /// Acts like a constructor, returns a [PlanDefinitionDynamicValue], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory PlanDefinitionDynamicValue.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PlanDefinitionDynamicValueFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
