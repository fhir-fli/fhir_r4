import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SpecimenDefinition] A kind of specimen with associated set of
/// requirements.

@freezed
class SpecimenDefinition with _$SpecimenDefinition {
  const SpecimenDefinition._();

  const factory SpecimenDefinition({
/// [resourceType] This is a SpecimenDefinition resource

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
/// [url] An absolute URL that is used to identify this SpecimenDefinition
/// when it is referenced in a specification, model, design or an instance.
/// This SHALL be a URL, SHOULD be globally unique, and SHOULD be an address at
/// which this SpecimenDefinition is (or will be) published. The URL SHOULD
/// include the major version of the SpecimenDefinition. For more information
/// see Technical and Business Versions.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] A business identifier assigned to this SpecimenDefinition.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// [version] The identifier that is used to identify this version of the
/// SpecimenDefinition when it is referenced in a specification, model, design
/// or instance. This is an arbitrary value managed by the SpecimenDefinition
/// author and is not expected to be globally unique.

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
/// [name] A natural language name identifying the {{title}}. This name
/// should be usable as an identifier for the module by machine processing
/// applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] A short, descriptive, user-friendly title for the
/// SpecimenDefinition.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [status] The current state of theSpecimenDefinition.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [experimental] A flag to indicate that this SpecimenDefinition is not
/// authored for  genuine usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
/// [date] For draft definitions, indicates the date of initial creation.
/// For active definitions, represents the date of activation. For withdrawn
/// definitions, indicates the date of withdrawal.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [publisher] Helps establish the "authority/credibility" of the
/// SpecimenDefinition. May also allow for contact.

    @JsonKey(name: 'publisher') String? publisher,
/// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
/// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// [description] A free text natural language description of the
/// SpecimenDefinition from the consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These terms may be used to assist
/// with indexing and searching of specimen definitions.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [jurisdiction] A jurisdiction in which the SpecimenDefinition is
/// intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [purpose] Explains why this SpecimeDefinition is needed and why it has
/// been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [copyright] Copyright statement relating to the SpecimenDefinition
/// and/or its contents. Copyright statements are generally legal restrictions
/// on the use and publishing of the SpecimenDefinition.

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
/// [approvalDate] The date on which the asset content was approved by the
/// publisher. Approval happens once when the content is officially approved
/// for usage.

    @JsonKey(name: 'approvalDate') FhirDate? approvalDate,
/// [_approvalDate] Extensions for approvalDate

    @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
/// [lastReviewDate] The date on which the asset content was last reviewed.
/// Review happens periodically after that, but doesn't change the original
/// approval date.

    @JsonKey(name: 'lastReviewDate') FhirDate? lastReviewDate,
/// [_lastReviewDate] Extensions for lastReviewDate

    @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
/// [effectivePeriod] The period during which the SpecimenDefinition
/// content was or is planned to be effective.

    @JsonKey(name: 'effectivePeriod') Period? effectivePeriod,
/// [topic] Descriptive topics related to the content of the {{title}}.
/// Topics provide a high-level categorization as well as keywords for the
/// {{title}} that can be useful for filtering and searching.

    @JsonKey(name: 'topic') List<List<CodeableConcept>>? topic,
/// [author] An individiual or organization primarily involved in the
/// creation and maintenance of the {{title}}.

    @JsonKey(name: 'author') List<List<ContactDetail>>? author,
/// [editor] An individual or organization primarily responsible for
/// internal coherence of the {{title}}.

    @JsonKey(name: 'editor') List<List<ContactDetail>>? editor,
/// [reviewer] An individual or organization asserted by the publisher to
/// be primarily responsible for review of some aspect of the {{title}}.

    @JsonKey(name: 'reviewer') List<List<ContactDetail>>? reviewer,
/// [endorser] An individual or organization asserted by the publisher to
/// be responsible for officially endorsing the {{title}} for use in some
/// setting.

    @JsonKey(name: 'endorser') List<List<ContactDetail>>? endorser,
/// [relatedArtifact] Related artifacts such as additional documentation,
/// justification, dependencies, bibliographic references, and predecessor and
/// successor artifacts.

    @JsonKey(name: 'relatedArtifact') List<List<RelatedArtifact>>? relatedArtifact,
/// [derivedFromCanonical] The canonical URL pointing to another
/// FHIR-defined SpecimenDefinition that is adhered to in whole or in part by
/// this definition.

    @JsonKey(name: 'derivedFromCanonical') List<List<FhirCanonical>>? derivedFromCanonical,
/// [derivedFromUri] The URL pointing to an externally-defined type of
/// specimen, guideline or other definition that is adhered to in whole or in
/// part by this definition.

    @JsonKey(name: 'derivedFromUri') List<List<FhirUri>>? derivedFromUri,
/// [_derivedFromUri] Extensions for derivedFromUri

    @JsonKey(name: '_derivedFromUri') List<PrimitiveElement>? derivedFromUriElement,
/// [subjectCodeableConcept] A code or group definition that describes the
/// intended subject  from which this kind of specimen is to be collected.

    @JsonKey(name: 'subjectCodeableConcept') CodeableConcept? subjectCodeableConcept,
/// [subjectReference] A code or group definition that describes the
/// intended subject  from which this kind of specimen is to be collected.

    @JsonKey(name: 'subjectReference') Reference? subjectReference,
/// [typeCollected] The kind of material to be collected.

    @JsonKey(name: 'typeCollected') CodeableConcept? typeCollected,
/// [patientPreparation] Preparation of the patient for specimen
/// collection.

    @JsonKey(name: 'patientPreparation') List<List<CodeableConcept>>? patientPreparation,
/// [timeAspect] Time aspect of specimen collection (duration or offset).

    @JsonKey(name: 'timeAspect') String? timeAspect,
/// [_timeAspect] Extensions for timeAspect

    @JsonKey(name: '_timeAspect') PrimitiveElement? timeAspectElement,
/// [collection] The action to be performed for collecting the specimen.

    @JsonKey(name: 'collection') List<List<CodeableConcept>>? collection,
/// [typeTested] Specimen conditioned in a container as expected by the
/// testing laboratory.

    @JsonKey(name: 'typeTested') List<List<SpecimenDefinition_TypeTested>>? typeTested,
  }) = _$SpecimenDefinition;

  @override
  String get fhirType => 'SpecimenDefinition';

  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinitionFromJson(json);

  factory SpecimenDefinition.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SpecimenDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SpecimenDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SpecimenDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SpecimenDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
