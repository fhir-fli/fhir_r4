import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ActivityDefinition] This resource allows for the definition of some
/// activity to be performed, independent of a particular patient,
/// practitioner, or other performance context.

@freezed
class ActivityDefinition with _$ActivityDefinition {
  const ActivityDefinition._();

  const factory ActivityDefinition({
/// [resourceType] This is a ActivityDefinition resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [url] An absolute URI that is used to identify this activity definition
/// when it is referenced in a specification, model, design or an instance;
/// also called its canonical identifier. This SHOULD be globally unique and
/// SHOULD be a literal address at which an authoritative instance of this
/// activity definition is (or will be) published. This URL can be the target
/// of a canonical reference. It SHALL remain the same when the activity
/// definition is stored on different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] A formal identifier that is used to identify this activity
/// definition when it is represented in other formats, or referenced in a
/// specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [version] The identifier that is used to identify this version of the
/// activity definition when it is referenced in a specification, model, design
/// or instance. This is an arbitrary value managed by the activity definition
/// author and is not expected to be globally unique. For example, it might be
/// a timestamp (e.g. yyyymmdd) if a managed version is not available. There is
/// also no expectation that versions can be placed in a lexicographical
/// sequence. To provide a version consistent with the Decision Support Service
/// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
/// information on versioning knowledge assets, refer to the Decision Support
/// Service specification. Note that a version is required for non-experimental
/// active assets.

    @JsonKey(name: 'version') String? version,
/// [_version] Extensions for version

    @JsonKey(name: '_version') PrimitiveElement? versionElement,
/// [versionAlgorithmString] Indicates the mechanism used to compare
/// versions to determine which is more current.

    @JsonKey(name: 'versionAlgorithmString') String? versionAlgorithmString,
/// [_versionAlgorithmString] Extensions for versionAlgorithmString

    @JsonKey(name: '_versionAlgorithmString') PrimitiveElement? versionAlgorithmStringElement,
/// [versionAlgorithmCoding] Indicates the mechanism used to compare
/// versions to determine which is more current.

    @JsonKey(name: 'versionAlgorithmCoding') Coding? versionAlgorithmCoding,
/// [name] A natural language name identifying the activity definition.
/// This name should be usable as an identifier for the module by machine
/// processing applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] A short, descriptive, user-friendly title for the activity
/// definition.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [status] The status of this activity definition. Enables tracking the
/// life-cycle of the content.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [experimental] A Boolean value to indicate that this activity
/// definition is authored for testing purposes (or
/// education/evaluation/marketing) and is not intended to be used for genuine
/// usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
/// [date] The date  (and optionally time) when the activity definition was
/// last significantly changed. The date must change when the business version
/// changes and it must change if the status code changes. In addition, it
/// should change when the substantive content of the activity definition
/// changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [publisher] The name of the organization or individual responsible for
/// the release and ongoing maintenance of the activity definition.

    @JsonKey(name: 'publisher') String? publisher,
/// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
/// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// [description] A free text natural language description of the activity
/// definition from a consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate activity definition instances.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [jurisdiction] A legal or geographic region in which the activity
/// definition is intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [purpose] Explanation of why this activity definition is needed and why
/// it has been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [copyright] A copyright statement relating to the activity definition
/// and/or its contents. Copyright statements are generally legal restrictions
/// on the use and publishing of the activity definition.

    @JsonKey(name: 'copyright') FhirMarkdown? copyright,
/// [_copyright] Extensions for copyright

    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
/// [copyrightLabel] A short string (<50 characters), suitable for
/// inclusion in a page footer that identifies the copyright holder, effective
/// period, and optionally whether rights are resctricted. (e.g. 'All rights
/// reserved', 'Some rights reserved').

    @JsonKey(name: 'copyrightLabel') String? copyrightLabel,
/// [_copyrightLabel] Extensions for copyrightLabel

    @JsonKey(name: '_copyrightLabel') PrimitiveElement? copyrightLabelElement,
/// [approvalDate] The date on which the resource content was approved by
/// the publisher. Approval happens once when the content is officially
/// approved for usage.

    @JsonKey(name: 'approvalDate') FhirDate? approvalDate,
/// [_approvalDate] Extensions for approvalDate

    @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
/// [lastReviewDate] The date on which the resource content was last
/// reviewed. Review happens periodically after approval but does not change
/// the original approval date.

    @JsonKey(name: 'lastReviewDate') FhirDate? lastReviewDate,
/// [_lastReviewDate] Extensions for lastReviewDate

    @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
/// [effectivePeriod] The period during which the activity definition
/// content was or is planned to be in active use.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// [topic] Descriptive topics related to the content of the activity.
/// Topics provide a high-level categorization of the activity that can be
/// useful for filtering and searching.

    @JsonKey(name: 'topic') List<List<CodeableConcept>>? topic,
/// [author] An individiual or organization primarily involved in the
/// creation and maintenance of the content.

    @JsonKey(name: 'author') List<List<ContactDetail>>? author,
/// [editor] An individual or organization primarily responsible for
/// internal coherence of the content.

    @JsonKey(name: 'editor') List<List<ContactDetail>>? editor,
/// [reviewer] An individual or organization asserted by the publisher to
/// be primarily responsible for review of some aspect of the content.

    @JsonKey(name: 'reviewer') List<List<ContactDetail>>? reviewer,
/// [endorser] An individual or organization asserted by the publisher to
/// be responsible for officially endorsing the content for use in some
/// setting.

    @JsonKey(name: 'endorser') List<List<ContactDetail>>? endorser,
/// [relatedArtifact] Related artifacts such as additional documentation,
/// justification, or bibliographic references.

    @JsonKey(name: 'relatedArtifact') List<List<RelatedArtifact>>? relatedArtifact,
/// [subtitle] An explanatory or alternate title for the activity
/// definition giving additional information about its content.

    @JsonKey(name: 'subtitle') String? subtitle,
/// [_subtitle] Extensions for subtitle

    @JsonKey(name: '_subtitle') PrimitiveElement? subtitleElement,
/// [subjectCodeableConcept] A code, group definition, or canonical
/// reference that describes  or identifies the intended subject of the
/// activity being defined.  Canonical references are allowed to support the
/// definition of protocols for drug and substance quality specifications, and
/// is allowed to reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.

    @JsonKey(name: 'subjectCodeableConcept') CodeableConcept? subjectCodeableConcept,
/// [subjectReference] A code, group definition, or canonical reference
/// that describes  or identifies the intended subject of the activity being
/// defined.  Canonical references are allowed to support the definition of
/// protocols for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.

    @JsonKey(name: 'subjectReference') Reference? subjectReference,
/// [subjectCanonical] A code, group definition, or canonical reference
/// that describes  or identifies the intended subject of the activity being
/// defined.  Canonical references are allowed to support the definition of
/// protocols for drug and substance quality specifications, and is allowed to
/// reference a MedicinalProductDefinition, SubstanceDefinition,
/// AdministrableProductDefinition, ManufacturedItemDefinition, or
/// PackagedProductDefinition resource.

    @JsonKey(name: 'subjectCanonical') FhirCanonical? subjectCanonical,
/// [_subjectCanonical] Extensions for subjectCanonical

    @JsonKey(name: '_subjectCanonical') PrimitiveElement? subjectCanonicalElement,
/// [usage] A detailed description of how the activity definition is used
/// from a clinical perspective.

    @JsonKey(name: 'usage') FhirMarkdown? usage,
/// [_usage] Extensions for usage

    @JsonKey(name: '_usage') PrimitiveElement? usageElement,
/// [library] A reference to a Library resource containing any formal logic
/// used by the activity definition.

    @JsonKey(name: 'library') List<List<FhirCanonical>>? library,
/// [kind] A description of the kind of resource the activity definition is
/// representing. For example, a MedicationRequest, a ServiceRequest, or a
/// CommunicationRequest.

    @JsonKey(name: 'kind') FhirCode? kind,
/// [_kind] Extensions for kind

    @JsonKey(name: '_kind') PrimitiveElement? kindElement,
/// [profile] A profile to which the target of the activity definition is
/// expected to conform.

    @JsonKey(name: 'profile') FhirCanonical? profile,
/// [code] Detailed description of the type of activity; e.g. What lab
/// test, what procedure, what kind of encounter.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [intent] Indicates the level of authority/intentionality associated
/// with the activity and where the request should fit into the workflow chain.

    @JsonKey(name: 'intent') FhirCode? intent,
/// [_intent] Extensions for intent

    @JsonKey(name: '_intent') PrimitiveElement? intentElement,
/// [priority] Indicates how quickly the activity  should be addressed with
/// respect to other requests.

    @JsonKey(name: 'priority') FhirCode? priority,
/// [_priority] Extensions for priority

    @JsonKey(name: '_priority') PrimitiveElement? priorityElement,
/// [doNotPerform] Set this to true if the definition is to indicate that a
/// particular activity should NOT be performed. If true, this element should
/// be interpreted to reinforce a negative coding. For example NPO as a code
/// with a doNotPerform of true would still indicate to NOT perform the action.

    @JsonKey(name: 'doNotPerform') FhirBoolean? doNotPerform,
/// [_doNotPerform] Extensions for doNotPerform

    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
/// [timingTiming] The timing or frequency upon which the described
/// activity is to occur.

    @JsonKey(name: 'timingTiming') Timing? timingTiming,
/// [timingAge] The timing or frequency upon which the described activity
/// is to occur.

    @JsonKey(name: 'timingAge') Age? timingAge,
/// [timingRange] The timing or frequency upon which the described activity
/// is to occur.

    @JsonKey(name: 'timingRange') Range? timingRange,
/// [timingDuration] The timing or frequency upon which the described
/// activity is to occur.

    @JsonKey(name: 'timingDuration') FhirDuration? timingDuration,
/// [asNeededBoolean] If a CodeableConcept is present, it indicates the
/// pre-condition for performing the service.  For example "pain", "on
/// flare-up", etc.

    @JsonKey(name: 'asNeededBoolean') FhirBoolean? asNeededBoolean,
/// [_asNeededBoolean] Extensions for asNeededBoolean

    @JsonKey(name: '_asNeededBoolean') PrimitiveElement? asNeededBooleanElement,
/// [asNeededCodeableConcept] If a CodeableConcept is present, it indicates
/// the pre-condition for performing the service.  For example "pain", "on
/// flare-up", etc.

    @JsonKey(name: 'asNeededCodeableConcept') CodeableConcept? asNeededCodeableConcept,
/// [location] Identifies the facility where the activity will occur; e.g.
/// home, hospital, specific clinic, etc.

    @JsonKey(name: 'location') CodeableReference? location,
/// [participant] Indicates who should participate in performing the action
/// described.

    @JsonKey(name: 'participant') List<List<ActivityDefinition_Participant>>? participant,
/// [productReference] Identifies the food, drug or other product being
/// consumed or supplied in the activity.

    @JsonKey(name: 'productReference') Reference? productReference,
/// [productCodeableConcept] Identifies the food, drug or other product
/// being consumed or supplied in the activity.

    @JsonKey(name: 'productCodeableConcept') CodeableConcept? productCodeableConcept,
/// [quantity] Identifies the quantity expected to be consumed at once (per
/// dose, per meal, etc.).

    @JsonKey(name: 'quantity') Quantity? quantity,
/// [dosage] Provides detailed dosage instructions in the same way that
/// they are described for MedicationRequest resources.

    @JsonKey(name: 'dosage') List<List<Dosage>>? dosage,
/// [bodySite] Indicates the sites on the subject's body where the
/// procedure should be performed (I.e. the target sites).

    @JsonKey(name: 'bodySite') List<List<CodeableConcept>>? bodySite,
/// [specimenRequirement] Defines specimen requirements for the action to
/// be performed, such as required specimens for a lab test.

    @JsonKey(name: 'specimenRequirement') List<List<FhirCanonical>>? specimenRequirement,
/// [observationRequirement] Defines observation requirements for the
/// action to be performed, such as body weight or surface area.

    @JsonKey(name: 'observationRequirement') List<List<FhirCanonical>>? observationRequirement,
/// [observationResultRequirement] Defines the observations that are
/// expected to be produced by the action.

    @JsonKey(name: 'observationResultRequirement') List<List<FhirCanonical>>? observationResultRequirement,
/// [transform] A reference to a StructureMap resource that defines a
/// transform that can be executed to produce the intent resource using the
/// ActivityDefinition instance as the input.

    @JsonKey(name: 'transform') FhirCanonical? transform,
/// [dynamicValue] Dynamic values that will be evaluated to produce values
/// for elements of the resulting resource. For example, if the dosage of a
/// medication must be computed based on the patient's weight, a dynamic value
/// would be used to specify an expression that calculated the weight, and the
/// path on the request resource that would contain the result.

    @JsonKey(name: 'dynamicValue') List<List<ActivityDefinition_DynamicValue>>? dynamicValue,
  }) = _$ActivityDefinition;

  @override
  String get fhirType => 'ActivityDefinition';

  factory ActivityDefinition.fromJson(Map<String, dynamic> json) =>
      _$ActivityDefinitionFromJson(json);

  factory ActivityDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ActivityDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ActivityDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ActivityDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ActivityDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ActivityDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
