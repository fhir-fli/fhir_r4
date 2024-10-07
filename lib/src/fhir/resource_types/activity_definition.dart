import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ActivityDefinition] /// This resource allows for the definition of some activity to be performed,
/// independent of a particular patient, practitioner, or other performance
/// context.
class ActivityDefinition extends DomainResource {
  ActivityDefinition({
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
    this.kind,
    this.kindElement,
    this.profile,
    this.profileElement,
    this.code,
    this.intent,
    this.intentElement,
    this.priority,
    this.priorityElement,
    this.doNotPerform,
    this.doNotPerformElement,
    this.timingTiming,
    this.timingDateTime,
    this.timingDateTimeElement,
    this.timingAge,
    this.timingPeriod,
    this.timingRange,
    this.timingDuration,
    this.location,
    this.participant,
    this.productReference,
    this.productCodeableConcept,
    this.quantity,
    this.dosage,
    this.bodySite,
    this.specimenRequirement,
    this.observationRequirement,
    this.observationResultRequirement,
    this.transform,
    this.transformElement,
    this.dynamicValue,
  }) : super(resourceType: R4ResourceType.ActivityDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this activity definition when it
  /// is referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// activity definition is (or will be) published. This URL can be the target
  /// of a canonical reference. It SHALL remain the same when the activity
  /// definition is stored on different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this activity definition when
  /// it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the activity
  /// definition when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the activity definition
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  /// sequence. To provide a version consistent with the Decision Support Service
  /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
  /// information on versioning knowledge assets, refer to the Decision Support
  /// Service specification. Note that a version is required for non-experimental
  /// active assets.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the activity definition. This name
  /// should be usable as an identifier for the module by machine processing
  /// applications such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the activity definition.
  final FhirString? title;
  final Element? titleElement;

  /// [subtitle] /// An explanatory or alternate title for the activity definition giving
  /// additional information about its content.
  final FhirString? subtitle;
  final Element? subtitleElement;

  /// [status] /// The status of this activity definition. Enables tracking the life-cycle of
  /// the content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this activity definition is authored for
  /// testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [subjectCodeableConcept] /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the activity being defined. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final CodeableConcept? subjectCodeableConcept;

  /// [subjectReference] /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the activity being defined. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final Reference? subjectReference;

  /// [subjectCanonical] /// A code, group definition, or canonical reference that describes or
  /// identifies the intended subject of the activity being defined. Canonical
  /// references are allowed to support the definition of protocols for drug and
  /// substance quality specifications, and is allowed to reference a
  /// MedicinalProductDefinition, SubstanceDefinition,
  /// AdministrableProductDefinition, ManufacturedItemDefinition, or
  /// PackagedProductDefinition resource.
  final FhirCanonical? subjectCanonical;
  final Element? subjectCanonicalElement;

  /// [date] /// The date (and optionally time) when the activity definition was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  /// substantive content of the activity definition changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the activity
  /// definition.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the activity definition from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate activity definition instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the activity definition is intended
  /// to be used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this activity definition is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [usage] /// A detailed description of how the activity definition is used from a
  /// clinical perspective.
  final FhirString? usage;
  final Element? usageElement;

  /// [copyright] /// A copyright statement relating to the activity definition and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  /// and publishing of the activity definition.
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

  /// [effectivePeriod] /// The period during which the activity definition content was or is planned
  /// to be in active use.
  final Period? effectivePeriod;

  /// [topic] /// Descriptive topics related to the content of the activity. Topics provide a
  /// high-level categorization of the activity that can be useful for filtering
  /// and searching.
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
  /// activity definition.
  final List<FhirCanonical>? library_;
  final List<Element>? libraryElement;

  /// [kind] /// A description of the kind of resource the activity definition is
  /// representing. For example, a MedicationRequest, a ServiceRequest, or a
  /// CommunicationRequest. Typically, but not always, this is a Request
  /// resource.
  final FhirCode? kind;
  final Element? kindElement;

  /// [profile] /// A profile to which the target of the activity definition is expected to
  /// conform.
  final FhirCanonical? profile;
  final Element? profileElement;

  /// [code] /// Detailed description of the type of activity; e.g. What lab test, what
  /// procedure, what kind of encounter.
  final CodeableConcept? code;

  /// [intent] /// Indicates the level of authority/intentionality associated with the
  /// activity and where the request should fit into the workflow chain.
  final FhirCode? intent;
  final Element? intentElement;

  /// [priority] /// Indicates how quickly the activity should be addressed with respect to
  /// other requests.
  final FhirCode? priority;
  final Element? priorityElement;

  /// [doNotPerform] /// Set this to true if the definition is to indicate that a particular
  /// activity should NOT be performed. If true, this element should be
  /// interpreted to reinforce a negative coding. For example NPO as a code with
  /// a doNotPerform of true would still indicate to NOT perform the action.
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;

  /// [timingTiming] /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Timing? timingTiming;

  /// [timingDateTime] /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;

  /// [timingAge] /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Age? timingAge;

  /// [timingPeriod] /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Period? timingPeriod;

  /// [timingRange] /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final Range? timingRange;

  /// [timingDuration] /// The period, timing or frequency upon which the described activity is to
  /// occur.
  final FhirDuration? timingDuration;

  /// [location] /// Identifies the facility where the activity will occur; e.g. home, hospital,
  /// specific clinic, etc.
  final Reference? location;

  /// [participant] /// Indicates who should participate in performing the action described.
  final List<ActivityDefinitionParticipant>? participant;

  /// [productReference] /// Identifies the food, drug or other product being consumed or supplied in
  /// the activity.
  final Reference? productReference;

  /// [productCodeableConcept] /// Identifies the food, drug or other product being consumed or supplied in
  /// the activity.
  final CodeableConcept? productCodeableConcept;

  /// [quantity] /// Identifies the quantity expected to be consumed at once (per dose, per
  /// meal, etc.).
  final Quantity? quantity;

  /// [dosage] /// Provides detailed dosage instructions in the same way that they are
  /// described for MedicationRequest resources.
  final List<Dosage>? dosage;

  /// [bodySite] /// Indicates the sites on the subject's body where the procedure should be
  /// performed (I.e. the target sites).
  final List<CodeableConcept>? bodySite;

  /// [specimenRequirement] /// Defines specimen requirements for the action to be performed, such as
  /// required specimens for a lab test.
  final List<Reference>? specimenRequirement;

  /// [observationRequirement] /// Defines observation requirements for the action to be performed, such as
  /// body weight or surface area.
  final List<Reference>? observationRequirement;

  /// [observationResultRequirement] /// Defines the observations that are expected to be produced by the action.
  final List<Reference>? observationResultRequirement;

  /// [transform] /// A reference to a StructureMap resource that defines a transform that can be
  /// executed to produce the intent resource using the ActivityDefinition
  /// instance as the input.
  final FhirCanonical? transform;
  final Element? transformElement;

  /// [dynamicValue] /// Dynamic values that will be evaluated to produce values for elements of the
  /// resulting resource. For example, if the dosage of a medication must be
  /// computed based on the patient's weight, a dynamic value would be used to
  /// specify an expression that calculated the weight, and the path on the
  /// request resource that would contain the result.
  final List<ActivityDefinitionDynamicValue>? dynamicValue;
  @override
  ActivityDefinition clone() => throw UnimplementedError();
  ActivityDefinition copy({
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
    FhirCode? kind,
    Element? kindElement,
    FhirCanonical? profile,
    Element? profileElement,
    CodeableConcept? code,
    FhirCode? intent,
    Element? intentElement,
    FhirCode? priority,
    Element? priorityElement,
    FhirBoolean? doNotPerform,
    Element? doNotPerformElement,
    Timing? timingTiming,
    FhirDateTime? timingDateTime,
    Element? timingDateTimeElement,
    Age? timingAge,
    Period? timingPeriod,
    Range? timingRange,
    FhirDuration? timingDuration,
    Reference? location,
    List<ActivityDefinitionParticipant>? participant,
    Reference? productReference,
    CodeableConcept? productCodeableConcept,
    Quantity? quantity,
    List<Dosage>? dosage,
    List<CodeableConcept>? bodySite,
    List<Reference>? specimenRequirement,
    List<Reference>? observationRequirement,
    List<Reference>? observationResultRequirement,
    FhirCanonical? transform,
    Element? transformElement,
    List<ActivityDefinitionDynamicValue>? dynamicValue,
  }) {
    return ActivityDefinition(
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
      kind: kind ?? this.kind,
      kindElement: kindElement ?? this.kindElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      code: code ?? this.code,
      intent: intent ?? this.intent,
      intentElement: intentElement ?? this.intentElement,
      priority: priority ?? this.priority,
      priorityElement: priorityElement ?? this.priorityElement,
      doNotPerform: doNotPerform ?? this.doNotPerform,
      doNotPerformElement: doNotPerformElement ?? this.doNotPerformElement,
      timingTiming: timingTiming ?? this.timingTiming,
      timingDateTime: timingDateTime ?? this.timingDateTime,
      timingDateTimeElement:
          timingDateTimeElement ?? this.timingDateTimeElement,
      timingAge: timingAge ?? this.timingAge,
      timingPeriod: timingPeriod ?? this.timingPeriod,
      timingRange: timingRange ?? this.timingRange,
      timingDuration: timingDuration ?? this.timingDuration,
      location: location ?? this.location,
      participant: participant ?? this.participant,
      productReference: productReference ?? this.productReference,
      productCodeableConcept:
          productCodeableConcept ?? this.productCodeableConcept,
      quantity: quantity ?? this.quantity,
      dosage: dosage ?? this.dosage,
      bodySite: bodySite ?? this.bodySite,
      specimenRequirement: specimenRequirement ?? this.specimenRequirement,
      observationRequirement:
          observationRequirement ?? this.observationRequirement,
      observationResultRequirement:
          observationResultRequirement ?? this.observationResultRequirement,
      transform: transform ?? this.transform,
      transformElement: transformElement ?? this.transformElement,
      dynamicValue: dynamicValue ?? this.dynamicValue,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ActivityDefinitionParticipant] /// Indicates who should participate in performing the action described.
class ActivityDefinitionParticipant extends BackboneElement {
  ActivityDefinitionParticipant({
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
  ActivityDefinitionParticipant clone() => throw UnimplementedError();
  ActivityDefinitionParticipant copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? type,
    Element? typeElement,
    CodeableConcept? role,
  }) {
    return ActivityDefinitionParticipant(
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

/// [ActivityDefinitionDynamicValue] /// Dynamic values that will be evaluated to produce values for elements of the
/// resulting resource. For example, if the dosage of a medication must be
/// computed based on the patient's weight, a dynamic value would be used to
/// specify an expression that calculated the weight, and the path on the
/// request resource that would contain the result.
class ActivityDefinitionDynamicValue extends BackboneElement {
  ActivityDefinitionDynamicValue({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.path,
    this.pathElement,
    required this.expression,
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
  final FhirString path;
  final Element? pathElement;

  /// [expression] /// An expression specifying the value of the customized element.
  final FhirExpression expression;
  @override
  ActivityDefinitionDynamicValue clone() => throw UnimplementedError();
  ActivityDefinitionDynamicValue copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? path,
    Element? pathElement,
    FhirExpression? expression,
  }) {
    return ActivityDefinitionDynamicValue(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      path: path ?? this.path,
      pathElement: pathElement ?? this.pathElement,
      expression: expression ?? this.expression,
    );
  }
}
