import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ConceptMap] A statement of relationships from one set of concepts to
/// one or more other concepts - either concepts in code systems, or data
/// element/data element concepts, or classes in class models.

@freezed
class ConceptMap with _$ConceptMap {
  const ConceptMap._();

  const factory ConceptMap({
/// [resourceType] This is a ConceptMap resource

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
/// [url] An absolute URI that is used to identify this concept map when it
/// is referenced in a specification, model, design or an instance; also called
/// its canonical identifier. This SHOULD be globally unique and SHOULD be a
/// literal address at which an authoritative instance of this concept map is
/// (or will be) published. This URL can be the target of a canonical
/// reference. It SHALL remain the same when the concept map is stored on
/// different servers.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] A formal identifier that is used to identify this concept
/// map when it is represented in other formats, or referenced in a
/// specification, model, design or an instance.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [version] The identifier that is used to identify this version of the
/// concept map when it is referenced in a specification, model, design or
/// instance. This is an arbitrary value managed by the concept map author and
/// is not expected to be globally unique. For example, it might be a timestamp
/// (e.g. yyyymmdd) if a managed version is not available. There is also no
/// expectation that versions can be placed in a lexicographical sequence.

    @JsonKey(name: 'version') String? version,
/// [_version] Extensions for version

    @JsonKey(name: '_version') PrimitiveElement? versionElement,
/// [versionAlgorithmString] Indicates the mechanism used to compare
/// versions to determine which ConceptMap is more current.

    @JsonKey(name: 'versionAlgorithmString') String? versionAlgorithmString,
/// [_versionAlgorithmString] Extensions for versionAlgorithmString

    @JsonKey(name: '_versionAlgorithmString') PrimitiveElement? versionAlgorithmStringElement,
/// [versionAlgorithmCoding] Indicates the mechanism used to compare
/// versions to determine which ConceptMap is more current.

    @JsonKey(name: 'versionAlgorithmCoding') Coding? versionAlgorithmCoding,
/// [name] A natural language name identifying the concept map. This name
/// should be usable as an identifier for the module by machine processing
/// applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] A short, descriptive, user-friendly title for the concept map.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [status] The status of this concept map. Enables tracking the
/// life-cycle of the content.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [experimental] A Boolean value to indicate that this concept map is
/// authored for testing purposes (or education/evaluation/marketing) and is
/// not intended to be used for genuine usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
/// [date] The date  (and optionally time) when the concept map was last
/// significantly changed. The date must change when the business version
/// changes and it must change if the status code changes. In addition, it
/// should change when the substantive content of the concept map changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [publisher] The name of the organization or individual responsible for
/// the release and ongoing maintenance of the concept map.

    @JsonKey(name: 'publisher') String? publisher,
/// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
/// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// [description] A free text natural language description of the concept
/// map from a consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate concept map instances.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [jurisdiction] A legal or geographic region in which the concept map is
/// intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [purpose] Explanation of why this concept map is needed and why it has
/// been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [copyright] A copyright statement relating to the concept map and/or
/// its contents. Copyright statements are generally legal restrictions on the
/// use and publishing of the concept map.

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
/// [effectivePeriod] The period during which the ConceptMap content was or
/// is planned to be in active use.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// [topic] Descriptions related to the content of the ConceptMap. Topics
/// provide a high-level categorization as well as keywords for the ConceptMap
/// that can be useful for filtering and searching.

    @JsonKey(name: 'topic') List<List<CodeableConcept>>? topic,
/// [author] An individiual or organization primarily involved in the
/// creation and maintenance of the ConceptMap.

    @JsonKey(name: 'author') List<List<ContactDetail>>? author,
/// [editor] An individual or organization primarily responsible for
/// internal coherence of the ConceptMap.

    @JsonKey(name: 'editor') List<List<ContactDetail>>? editor,
/// [reviewer] An individual or organization asserted by the publisher to
/// be primarily responsible for review of some aspect of the ConceptMap.

    @JsonKey(name: 'reviewer') List<List<ContactDetail>>? reviewer,
/// [endorser] An individual or organization asserted by the publisher to
/// be responsible for officially endorsing the ConceptMap for use in some
/// setting.

    @JsonKey(name: 'endorser') List<List<ContactDetail>>? endorser,
/// [relatedArtifact] Related artifacts such as additional documentation,
/// justification, dependencies, bibliographic references, and predecessor and
/// successor artifacts.

    @JsonKey(name: 'relatedArtifact') List<List<RelatedArtifact>>? relatedArtifact,
/// [property] A property defines a slot through which additional
/// information can be provided about a map from source -> target.

    @JsonKey(name: 'property') List<List<ConceptMap_Property>>? property,
/// [additionalAttribute] An additionalAttribute defines an additional data
/// element found in the source or target data model where the data will come
/// from or be mapped to. Some mappings are based on data in addition to the
/// source data element, where codes in multiple fields are combined to a
/// single field (or vice versa).

    @JsonKey(name: 'additionalAttribute') List<List<ConceptMap_AdditionalAttribute>>? additionalAttribute,
/// [sourceScopeUri] Identifier for the source value set that contains the
/// concepts that are being mapped and provides context for the mappings.
/// Limits the scope of the map to source codes (ConceptMap.group.element code
/// or valueSet) that are members of this value set.

    @JsonKey(name: 'sourceScopeUri') FhirUri? sourceScopeUri,
/// [_sourceScopeUri] Extensions for sourceScopeUri

    @JsonKey(name: '_sourceScopeUri') PrimitiveElement? sourceScopeUriElement,
/// [sourceScopeCanonical] Identifier for the source value set that
/// contains the concepts that are being mapped and provides context for the
/// mappings.  Limits the scope of the map to source codes
/// (ConceptMap.group.element code or valueSet) that are members of this value
/// set.

    @JsonKey(name: 'sourceScopeCanonical') FhirCanonical? sourceScopeCanonical,
/// [_sourceScopeCanonical] Extensions for sourceScopeCanonical

    @JsonKey(name: '_sourceScopeCanonical') PrimitiveElement? sourceScopeCanonicalElement,
/// [targetScopeUri] Identifier for the target value set that provides
/// important context about how the mapping choices are made.  Limits the scope
/// of the map to target codes (ConceptMap.group.element.target code or
/// valueSet) that are members of this value set.

    @JsonKey(name: 'targetScopeUri') FhirUri? targetScopeUri,
/// [_targetScopeUri] Extensions for targetScopeUri

    @JsonKey(name: '_targetScopeUri') PrimitiveElement? targetScopeUriElement,
/// [targetScopeCanonical] Identifier for the target value set that
/// provides important context about how the mapping choices are made.  Limits
/// the scope of the map to target codes (ConceptMap.group.element.target code
/// or valueSet) that are members of this value set.

    @JsonKey(name: 'targetScopeCanonical') FhirCanonical? targetScopeCanonical,
/// [_targetScopeCanonical] Extensions for targetScopeCanonical

    @JsonKey(name: '_targetScopeCanonical') PrimitiveElement? targetScopeCanonicalElement,
/// [group] A group of mappings that all have the same source and target
/// system.

    @JsonKey(name: 'group') List<List<ConceptMap_Group>>? group,
  }) = _$ConceptMap;

  @override
  String get fhirType => 'ConceptMap';

  factory ConceptMap.fromJson(Map<String, dynamic> json) =>
      _$ConceptMapFromJson(json);

  factory ConceptMap.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMap.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMap cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ConceptMap.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMapFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
