import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [PlanDefinition] /// This resource allows for the definition of various types of plans as a
/// sharable, consumable, and executable artifact. The resource is general
/// enough to support the description of a broad range of clinical and
/// non-clinical artifacts such as clinical decision support rules, order sets,
/// protocols, and drug quality specifications.
class PlanDefinition extends DomainResource {
  PlanDefinition({
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.subtitle,
    this.subtitleElement,
    this.type,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.subjectCanonicalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.usage,
    this.usageElement,
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
    this.libraryElement,
    this.goal,
    this.action,
  }) : super(resourceType: R4ResourceType.PlanDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this plan definition when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this plan
  /// definition is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the plan definition is
  /// stored on different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this plan definition when it
  /// is represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the plan definition
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the plan definition author and is not
  /// expected to be globally unique. For example, it might be a timestamp (e.g.
  /// yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence. To
  /// provide a version consistent with the Decision Support Service
  /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
  /// information on versioning knowledge assets, refer to the Decision Support
  /// Service specification. Note that a version is required for non-experimental
  /// active artifacts.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the plan definition. This name should
  /// be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the plan definition.
  final FhirString? title;
  final Element? titleElement;

  /// [subtitle] /// An explanatory or alternate title for the plan definition giving additional
  /// information about its content.
  final FhirString? subtitle;
  final Element? subtitleElement;

  /// [type] /// A high-level category for the plan definition that distinguishes the kinds
  /// of systems that would be interested in the plan definition.
  final CodeableConcept? type;

  /// [status] /// The status of this plan definition. Enables tracking the life-cycle of the
  /// content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this plan definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [subjectCodeableConcept] /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the plan definition. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference] /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the plan definition. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final Reference? subjectReference;

  /// [subjectCanonical] /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the plan definition. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final FhirCanonical? subjectCanonical;
  final Element? subjectCanonicalElement;

  /// [date] /// The date (and optionally time) when the plan definition was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the plan definition changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the plan
  /// definition.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the plan definition from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate plan definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the plan definition is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this plan definition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [usage] /// A detailed description of how the plan definition is used from a clinical
  /// perspective.
  final FhirString? usage;
  final Element? usageElement;

  /// [copyright] /// A copyright statement relating to the plan definition and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the plan definition.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  final FhirDate? approvalDate;
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the plan definition content was or is planned to be
  /// in active use.
  final Period? effectivePeriod;

  /// [topic] /// Descriptive topics related to the content of the plan definition. Topics
  /// provide a high-level categorization of the definition that can be useful
  /// for filtering and searching.
  final List<CodeableConcept>? topic;

  /// [author] /// An individiual or organization primarily involved in the creation and
  /// maintenance of the content.
  final List<ContactDetail>? author;

  /// [editor] /// An individual or organization primarily responsible for internal coherence
  /// of the content.
  final List<ContactDetail>? editor;

  /// [reviewer] /// An individual or organization primarily responsible for review of some
  /// aspect of the content.
  final List<ContactDetail>? reviewer;

  /// [endorser] /// An individual or organization responsible for officially endorsing the
  /// content for use in some setting.
  final List<ContactDetail>? endorser;

  /// [relatedArtifact] /// Related artifacts such as additional documentation, justification, or
  /// bibliographic references.
  final List<RelatedArtifact>? relatedArtifact;

  /// [library_] /// A reference to a Library resource containing any formal logic used by the
  /// plan definition.
  final List<FhirCanonical>? library_;
  final List<Element>? libraryElement;

  /// [goal] /// A goal describes an expected outcome that activities within the plan are
  /// intended to achieve. For example, weight loss, restoring an activity of
  /// daily living, obtaining herd immunity via immunization, meeting a process
  /// improvement objective, meeting the acceptance criteria for a test as
  /// specified by a quality specification, etc.
  final List<PlanDefinitionGoal>? goal;

  /// [action] /// An action or group of actions to be taken as part of the plan. For example,
  /// in clinical care, an action would be to prescribe a particular indicated
  /// medication, or perform a particular test as appropriate. In pharmaceutical
  /// quality, an action would be the test that needs to be performed on a drug
  /// product as defined in the quality specification.
  final List<PlanDefinitionAction>? action;
  @override
  PlanDefinition clone() => throw UnimplementedError();
  PlanDefinition copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Element? urlElement,
    List<Identifier>? identifier,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    FhirString? subtitle,
    Element? subtitleElement,
    CodeableConcept? type,
    FhirCode? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    FhirCanonical? subjectCanonical,
    Element? subjectCanonicalElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirString? usage,
    Element? usageElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirDate? approvalDate,
    Element? approvalDateElement,
    FhirDate? lastReviewDate,
    Element? lastReviewDateElement,
    Period? effectivePeriod,
    List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    List<FhirCanonical>? library_,
    List<Element>? libraryElement,
    List<PlanDefinitionGoal>? goal,
    List<PlanDefinitionAction>? action,
  }) {
    return PlanDefinition(
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
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      subtitle: subtitle ?? this.subtitle,
      subtitleElement: subtitleElement ?? this.subtitleElement,
      type: type ?? this.type,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      subjectCanonical: subjectCanonical ?? this.subjectCanonical,
      subjectCanonicalElement:
          subjectCanonicalElement ?? this.subjectCanonicalElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      usage: usage ?? this.usage,
      usageElement: usageElement ?? this.usageElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      approvalDate: approvalDate ?? this.approvalDate,
      approvalDateElement: approvalDateElement ?? this.approvalDateElement,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      lastReviewDateElement:
          lastReviewDateElement ?? this.lastReviewDateElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      topic: topic ?? this.topic,
      author: author ?? this.author,
      editor: editor ?? this.editor,
      reviewer: reviewer ?? this.reviewer,
      endorser: endorser ?? this.endorser,
      relatedArtifact: relatedArtifact ?? this.relatedArtifact,
      library_: library_ ?? this.library_,
      libraryElement: libraryElement ?? this.libraryElement,
      goal: goal ?? this.goal,
      action: action ?? this.action,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PlanDefinitionGoal] /// A goal describes an expected outcome that activities within the plan are
/// intended to achieve. For example, weight loss, restoring an activity of
/// daily living, obtaining herd immunity via immunization, meeting a process
/// improvement objective, meeting the acceptance criteria for a test as
/// specified by a quality specification, etc.
class PlanDefinitionGoal extends BackboneElement {
  PlanDefinitionGoal({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    required this.description,
    this.priority,
    this.start,
    this.addresses,
    this.documentation,
    this.target,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// Indicates a category the goal falls within.
  final CodeableConcept? category;

  /// [description] /// Human-readable and/or coded description of a specific desired objective of
  /// care, such as "control blood pressure" or "negotiate an obstacle course" or
  /// "dance with child at wedding".
  final CodeableConcept description;

  /// [priority] /// Identifies the expected level of importance associated with
  /// reaching/sustaining the defined goal.
  final CodeableConcept? priority;

  /// [start] /// The event after which the goal should begin being pursued.
  final CodeableConcept? start;

  /// [addresses] /// Identifies problems, conditions, issues, or concerns the goal is intended
  /// to address.
  final List<CodeableConcept>? addresses;

  /// [documentation] /// Didactic or other informational resources associated with the goal that
  /// provide further supporting information about the goal. Information
  /// resources can include inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;

  /// [target] /// Indicates what should be done and within what timeframe.
  final List<PlanDefinitionTarget>? target;
  @override
  PlanDefinitionGoal clone() => throw UnimplementedError();
  PlanDefinitionGoal copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? category,
    CodeableConcept? description,
    CodeableConcept? priority,
    CodeableConcept? start,
    List<CodeableConcept>? addresses,
    List<RelatedArtifact>? documentation,
    List<PlanDefinitionTarget>? target,
  }) {
    return PlanDefinitionGoal(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      description: description ?? this.description,
      priority: priority ?? this.priority,
      start: start ?? this.start,
      addresses: addresses ?? this.addresses,
      documentation: documentation ?? this.documentation,
      target: target ?? this.target,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PlanDefinitionTarget] /// Indicates what should be done and within what timeframe.
class PlanDefinitionTarget extends BackboneElement {
  PlanDefinitionTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.measure,
    this.detailQuantity,
    this.detailRange,
    this.detailCodeableConcept,
    this.due,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [measure] /// The parameter whose value is to be tracked, e.g. body weight, blood
  /// pressure, or hemoglobin A1c level.
  final CodeableConcept? measure;

  /// [detailQuantity] /// The target value of the measure to be achieved to signify fulfillment of
  /// the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical quality
  /// - NMT 0.6%, Clear solution, etc. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any value at or below the high value. Similarly, if
  /// the high value is missing, it indicates that the goal is achieved at any
  /// value at or above the low value.
  final Quantity? detailQuantity;

  /// [detailRange] /// The target value of the measure to be achieved to signify fulfillment of
  /// the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical quality
  /// - NMT 0.6%, Clear solution, etc. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any value at or below the high value. Similarly, if
  /// the high value is missing, it indicates that the goal is achieved at any
  /// value at or above the low value.
  final Range? detailRange;

  /// [detailCodeableConcept] /// The target value of the measure to be achieved to signify fulfillment of
  /// the goal, e.g. 150 pounds or 7.0%, or in the case of pharmaceutical quality
  /// - NMT 0.6%, Clear solution, etc. Either the high or low or both values of
  /// the range can be specified. When a low value is missing, it indicates that
  /// the goal is achieved at any value at or below the high value. Similarly, if
  /// the high value is missing, it indicates that the goal is achieved at any
  /// value at or above the low value.
  final CodeableConcept? detailCodeableConcept;

  /// [due] /// Indicates the timeframe after the start of the goal in which the goal
  /// should be met.
  final FhirDuration? due;
  @override
  PlanDefinitionTarget clone() => throw UnimplementedError();
  PlanDefinitionTarget copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? measure,
    Quantity? detailQuantity,
    Range? detailRange,
    CodeableConcept? detailCodeableConcept,
    FhirDuration? due,
  }) {
    return PlanDefinitionTarget(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      measure: measure ?? this.measure,
      detailQuantity: detailQuantity ?? this.detailQuantity,
      detailRange: detailRange ?? this.detailRange,
      detailCodeableConcept:
          detailCodeableConcept ?? this.detailCodeableConcept,
      due: due ?? this.due,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PlanDefinitionAction] /// An action or group of actions to be taken as part of the plan. For example,
/// in clinical care, an action would be to prescribe a particular indicated
/// medication, or perform a particular test as appropriate. In pharmaceutical
/// quality, an action would be the test that needs to be performed on a drug
/// product as defined in the quality specification.
class PlanDefinitionAction extends BackboneElement {
  PlanDefinitionAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.prefix,
    this.prefixElement,
    this.title,
    this.titleElement,
    this.description,
    this.descriptionElement,
    this.textEquivalent,
    this.textEquivalentElement,
    this.priority,
    this.priorityElement,
    this.code,
    this.reason,
    this.documentation,
    this.goalId,
    this.goalIdElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
    this.subjectCanonicalElement,
    this.trigger,
    this.condition,
    this.input,
    this.output,
    this.relatedAction,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.timingAge,
    this.timingPeriod,
    this.timingDuration,
    this.timingRange,
    this.timingTiming,
    this.participant,
    this.type,
    this.groupingBehavior,
    this.groupingBehaviorElement,
    this.selectionBehavior,
    this.selectionBehaviorElement,
    this.requiredBehavior,
    this.requiredBehaviorElement,
    this.precheckBehavior,
    this.precheckBehaviorElement,
    this.cardinalityBehavior,
    this.cardinalityBehaviorElement,
    this.definitionCanonical,
    this.definitionCanonicalElement,
    this.definitionUri,
    this.definitionUriElement,
    this.transform,
    this.transformElement,
    this.dynamicValue,
    this.action,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [prefix] /// A user-visible prefix for the action.
  final FhirString? prefix;
  final Element? prefixElement;

  /// [title] /// The textual description of the action displayed to a user. For example,
  /// when the action is a test to be performed, the title would be the title of
  /// the test such as Assay by HPLC.
  final FhirString? title;
  final Element? titleElement;

  /// [description] /// A brief description of the action used to provide a summary to display to
  /// the user.
  final FhirString? description;
  final Element? descriptionElement;

  /// [textEquivalent] /// A text equivalent of the action to be performed. This provides a
  /// human-interpretable description of the action when the definition is
  /// consumed by a system that might not be capable of interpreting it
  /// dynamically.
  final FhirString? textEquivalent;
  final Element? textEquivalentElement;

  /// [priority] /// Indicates how quickly the action should be addressed with respect to other
  /// actions.
  final FhirCode? priority;
  final Element? priorityElement;

  /// [code] /// A code that provides a meaning, grouping, or classification for the action
  /// or action group. For example, a section may have a LOINC code for the
  /// section of a documentation template. In pharmaceutical quality, an action
  /// (Test) such as pH could be classified as a physical property.
  final List<CodeableConcept>? code;

  /// [reason] /// A description of why this action is necessary or appropriate.
  final List<CodeableConcept>? reason;

  /// [documentation] /// Didactic or other informational resources associated with the action that
  /// can be provided to the CDS recipient. Information resources can include
  /// inline text commentary and links to web resources.
  final List<RelatedArtifact>? documentation;

  /// [goalId] /// Identifies goals that this action supports. The reference must be to a goal
  /// element defined within this plan definition. In pharmaceutical quality, a
  /// goal represents acceptance criteria (Goal) for a given action (Test), so
  /// the goalId would be the unique id of a defined goal element establishing
  /// the acceptance criteria for the action.
  final List<FhirId>? goalId;
  final List<Element>? goalIdElement;

  /// [subjectCodeableConcept] /// A code, group definition, or canonical reference that describes the
  /// intended subject of the action and its children, if any. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference] /// A code, group definition, or canonical reference that describes the
  /// intended subject of the action and its children, if any. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final Reference? subjectReference;

  /// [subjectCanonical] /// A code, group definition, or canonical reference that describes the
  /// intended subject of the action and its children, if any. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final FhirCanonical? subjectCanonical;
  final Element? subjectCanonicalElement;

  /// [trigger] /// A description of when the action should be triggered.
  final List<TriggerDefinition>? trigger;

  /// [condition] /// An expression that describes applicability criteria or start/stop
  /// conditions for the action.
  final List<PlanDefinitionCondition>? condition;

  /// [input] /// Defines input data requirements for the action.
  final List<DataRequirement>? input;

  /// [output] /// Defines the outputs of the action, if any.
  final List<DataRequirement>? output;

  /// [relatedAction] /// A relationship to another action such as "before" or "30-60 minutes after
  /// start of".
  final List<PlanDefinitionRelatedAction>? relatedAction;

  /// [timingDateTime] /// An optional value describing when the action should be performed.
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;

  /// [timingAge] /// An optional value describing when the action should be performed.
  final Age? timingAge;

  /// [timingPeriod] /// An optional value describing when the action should be performed.
  final Period? timingPeriod;

  /// [timingDuration] /// An optional value describing when the action should be performed.
  final FhirDuration? timingDuration;

  /// [timingRange] /// An optional value describing when the action should be performed.
  final Range? timingRange;

  /// [timingTiming] /// An optional value describing when the action should be performed.
  final Timing? timingTiming;

  /// [participant] /// Indicates who should participate in performing the action described.
  final List<PlanDefinitionParticipant>? participant;

  /// [type] /// The type of action to perform (create, update, remove).
  final CodeableConcept? type;

  /// [groupingBehavior] /// Defines the grouping behavior for the action and its children.
  final FhirCode? groupingBehavior;
  final Element? groupingBehaviorElement;

  /// [selectionBehavior] /// Defines the selection behavior for the action and its children.
  final FhirCode? selectionBehavior;
  final Element? selectionBehaviorElement;

  /// [requiredBehavior] /// Defines the required behavior for the action.
  final FhirCode? requiredBehavior;
  final Element? requiredBehaviorElement;

  /// [precheckBehavior] /// Defines whether the action should usually be preselected.
  final FhirCode? precheckBehavior;
  final Element? precheckBehaviorElement;

  /// [cardinalityBehavior] /// Defines whether the action can be selected multiple times.
  final FhirCode? cardinalityBehavior;
  final Element? cardinalityBehaviorElement;

  /// [definitionCanonical] /// A reference to an ActivityDefinition that describes the action to be taken
  /// in detail, or a PlanDefinition that describes a series of actions to be
  /// taken.
  final FhirCanonical? definitionCanonical;
  final Element? definitionCanonicalElement;

  /// [definitionUri] /// A reference to an ActivityDefinition that describes the action to be taken
  /// in detail, or a PlanDefinition that describes a series of actions to be
  /// taken.
  final FhirUri? definitionUri;
  final Element? definitionUriElement;

  /// [transform] /// A reference to a StructureMap resource that defines a transform that can be
  /// executed to produce the intent resource using the ActivityDefinition
  /// instance as the input.
  final FhirCanonical? transform;
  final Element? transformElement;

  /// [dynamicValue] /// Customizations that should be applied to the statically defined resource.
  /// For example, if the dosage of a medication must be computed based on the
  /// patient's weight, a customization would be used to specify an expression
  /// that calculated the weight, and the path on the resource that would contain
  /// the result.
  final List<PlanDefinitionDynamicValue>? dynamicValue;

  /// [action] /// Sub actions that are contained within the action. The behavior of this
  /// action determines the functionality of the sub-actions. For example, a
  /// selection behavior of at-most-one indicates that of the sub-actions, at
  /// most one may be chosen as part of realizing the action definition.
  final List<PlanDefinitionAction>? action;
  @override
  PlanDefinitionAction clone() => throw UnimplementedError();
  PlanDefinitionAction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? prefix,
    Element? prefixElement,
    FhirString? title,
    Element? titleElement,
    FhirString? description,
    Element? descriptionElement,
    FhirString? textEquivalent,
    Element? textEquivalentElement,
    FhirCode? priority,
    Element? priorityElement,
    List<CodeableConcept>? code,
    List<CodeableConcept>? reason,
    List<RelatedArtifact>? documentation,
    List<FhirId>? goalId,
    List<Element>? goalIdElement,
    CodeableConcept? subjectCodeableConcept,
    Reference? subjectReference,
    FhirCanonical? subjectCanonical,
    Element? subjectCanonicalElement,
    List<TriggerDefinition>? trigger,
    List<PlanDefinitionCondition>? condition,
    List<DataRequirement>? input,
    List<DataRequirement>? output,
    List<PlanDefinitionRelatedAction>? relatedAction,
    FhirDateTime? timingDateTime,
    Element? timingDateTimeElement,
    Age? timingAge,
    Period? timingPeriod,
    FhirDuration? timingDuration,
    Range? timingRange,
    Timing? timingTiming,
    List<PlanDefinitionParticipant>? participant,
    CodeableConcept? type,
    FhirCode? groupingBehavior,
    Element? groupingBehaviorElement,
    FhirCode? selectionBehavior,
    Element? selectionBehaviorElement,
    FhirCode? requiredBehavior,
    Element? requiredBehaviorElement,
    FhirCode? precheckBehavior,
    Element? precheckBehaviorElement,
    FhirCode? cardinalityBehavior,
    Element? cardinalityBehaviorElement,
    FhirCanonical? definitionCanonical,
    Element? definitionCanonicalElement,
    FhirUri? definitionUri,
    Element? definitionUriElement,
    FhirCanonical? transform,
    Element? transformElement,
    List<PlanDefinitionDynamicValue>? dynamicValue,
    List<PlanDefinitionAction>? action,
  }) {
    return PlanDefinitionAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      prefix: prefix ?? this.prefix,
      prefixElement: prefixElement ?? this.prefixElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      textEquivalent: textEquivalent ?? this.textEquivalent,
      textEquivalentElement:
          textEquivalentElement ?? this.textEquivalentElement,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      code: code ?? this.code,
      reason: reason ?? this.reason,
      documentation: documentation ?? this.documentation,
      goalId: goalId ?? this.goalId,
      goalIdElement: goalIdElement ?? this.goalIdElement,
      subjectCodeableConcept:
          subjectCodeableConcept ?? this.subjectCodeableConcept,
      subjectReference: subjectReference ?? this.subjectReference,
      subjectCanonical: subjectCanonical ?? this.subjectCanonical,
      subjectCanonicalElement:
          subjectCanonicalElement ?? this.subjectCanonicalElement,
      trigger: trigger ?? this.trigger,
      condition: condition ?? this.condition,
      input: input ?? this.input,
      output: output ?? this.output,
      relatedAction: relatedAction ?? this.relatedAction,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDateTimeElement:
          timingDateTimeElement ?? this.timingDateTimeElement,
      timingAge: timingAge ?? this.timingAge,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingDuration: timingDuration ?? this.timingDuration,
      timingRange: timingRange ?? this.timingRange,
      timingTiming: timingTiming ?? this.timingTiming,
      participant: participant ?? this.participant,
      type: type ?? this.type,
      groupingBehavior: groupingBehavior ?? this.groupingBehavior,
      groupingBehaviorElement:
          groupingBehaviorElement ?? this.groupingBehaviorElement,
      selectionBehavior: selectionBehavior ?? this.selectionBehavior,
      selectionBehaviorElement:
          selectionBehaviorElement ?? this.selectionBehaviorElement,
      requiredBehavior: requiredBehavior ?? this.requiredBehavior,
      requiredBehaviorElement:
          requiredBehaviorElement ?? this.requiredBehaviorElement,
      precheckBehavior: precheckBehavior ?? this.precheckBehavior,
      precheckBehaviorElement:
          precheckBehaviorElement ?? this.precheckBehaviorElement,
      cardinalityBehavior: cardinalityBehavior ?? this.cardinalityBehavior,
      cardinalityBehaviorElement:
          cardinalityBehaviorElement ?? this.cardinalityBehaviorElement,
      definitionCanonical: definitionCanonical ?? this.definitionCanonical,
      definitionCanonicalElement:
          definitionCanonicalElement ?? this.definitionCanonicalElement,
      definitionUri: definitionUri ?? this.definitionUri,
      definitionUriElement: definitionUriElement ?? this.definitionUriElement,
      transform: transform ?? this.transform,
      transformElement: transformElement ?? this.transformElement,
      dynamicValue: dynamicValue ?? this.dynamicValue,
      action: action ?? this.action,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PlanDefinitionCondition] /// An expression that describes applicability criteria or start/stop
/// conditions for the action.
class PlanDefinitionCondition extends BackboneElement {
  PlanDefinitionCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.kind,
    this.kindElement,
    this.expression,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [kind] /// The kind of condition.
  final FhirCode kind;
  final Element? kindElement;

  /// [expression] /// An expression that returns true or false, indicating whether the condition
  /// is satisfied.
  final FhirExpression? expression;
  @override
  PlanDefinitionCondition clone() => throw UnimplementedError();
  PlanDefinitionCondition copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? kind,
    Element? kindElement,
    FhirExpression? expression,
  }) {
    return PlanDefinitionCondition(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      expression: expression ?? this.expression,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PlanDefinitionRelatedAction] /// A relationship to another action such as "before" or "30-60 minutes after
/// start of".
class PlanDefinitionRelatedAction extends BackboneElement {
  PlanDefinitionRelatedAction({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.actionId,
    this.actionIdElement,
    required this.relationship,
    this.relationshipElement,
    this.offsetDuration,
    this.offsetRange,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [actionId] /// The element id of the related action.
  final FhirId actionId;
  final Element? actionIdElement;

  /// [relationship] /// The relationship of this action to the related action.
  final FhirCode relationship;
  final Element? relationshipElement;

  /// [offsetDuration] /// A duration or range of durations to apply to the relationship. For example,
  /// 30-60 minutes before.
  final FhirDuration? offsetDuration;

  /// [offsetRange] /// A duration or range of durations to apply to the relationship. For example,
  /// 30-60 minutes before.
  final Range? offsetRange;
  @override
  PlanDefinitionRelatedAction clone() => throw UnimplementedError();
  PlanDefinitionRelatedAction copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirId? actionId,
    Element? actionIdElement,
    FhirCode? relationship,
    Element? relationshipElement,
    FhirDuration? offsetDuration,
    Range? offsetRange,
  }) {
    return PlanDefinitionRelatedAction(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      actionId: actionId ?? this.actionId,
      actionIdElement: actionIdElement ?? this.actionIdElement,
      relationship: relationship ?? this.relationship,
      relationshipElement: relationshipElement ?? this.relationshipElement,
      offsetDuration: offsetDuration ?? this.offsetDuration,
      offsetRange: offsetRange ?? this.offsetRange,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PlanDefinitionParticipant] /// Indicates who should participate in performing the action described.
class PlanDefinitionParticipant extends BackboneElement {
  PlanDefinitionParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.role,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The type of participant in the action.
  final FhirCode type;
  final Element? typeElement;

  /// [role] /// The role the participant should play in performing the described action.
  final CodeableConcept? role;
  @override
  PlanDefinitionParticipant clone() => throw UnimplementedError();
  PlanDefinitionParticipant copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    CodeableConcept? role,
  }) {
    return PlanDefinitionParticipant(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      role: role ?? this.role,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [PlanDefinitionDynamicValue] /// Customizations that should be applied to the statically defined resource.
/// For example, if the dosage of a medication must be computed based on the
/// patient's weight, a customization would be used to specify an expression
/// that calculated the weight, and the path on the resource that would contain
/// the result.
class PlanDefinitionDynamicValue extends BackboneElement {
  PlanDefinitionDynamicValue({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
    this.pathElement,
    this.expression,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [path] /// The path to the element to be customized. This is the path on the resource
  /// that will hold the result of the calculation defined by the expression. The
  /// specified path SHALL be a FHIRPath resolveable on the specified target type
  /// of the ActivityDefinition, and SHALL consist only of identifiers, constant
  /// indexers, and a restricted subset of functions. The path is allowed to
  /// contain qualifiers (.) to traverse sub-elements, as well as indexers ([x])
  /// to traverse multiple-cardinality sub-elements (see the [Simple FHIRPath
  /// Profile](fhirpath.html#simple) for full details).
  final FhirString? path;
  final Element? pathElement;

  /// [expression] /// An expression specifying the value of the customized element.
  final FhirExpression? expression;
  @override
  PlanDefinitionDynamicValue clone() => throw UnimplementedError();
  PlanDefinitionDynamicValue copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    Element? pathElement,
    FhirExpression? expression,
  }) {
    return PlanDefinitionDynamicValue(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      expression: expression ?? this.expression,
    );
  }
}
