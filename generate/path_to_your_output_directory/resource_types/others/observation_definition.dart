import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ObservationDefinition] Set of definitional characteristics for a kind
/// of observation or measurement produced or consumed by an orderable health
/// care service.

@freezed
class ObservationDefinition with _$ObservationDefinition {
  const ObservationDefinition._();

  const factory ObservationDefinition({
/// [resourceType] This is a ObservationDefinition resource

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
/// [url] An absolute URL that is used to identify this
/// ObservationDefinition when it is referenced in a specification, model,
/// design or an instance. This SHALL be a URL, SHOULD be globally unique, and
/// SHOULD be an address at which this ObservationDefinition is (or will be)
/// published. The URL SHOULD include the major version of the
/// ObservationDefinition. For more information see Technical and Business
/// Versions.

    @JsonKey(name: 'url') FhirUri? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
/// [identifier] Business identifiers assigned to this
/// ObservationDefinition. by the performer and/or other systems. These
/// identifiers remain constant as the resource is updated and propagates from
/// server to server.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// [version] The identifier that is used to identify this version of the
/// ObservationDefinition when it is referenced in a specification, model,
/// design or instance. This is an arbitrary value managed by the
/// ObservationDefinition author and is not expected to be globally unique. For
/// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
/// not available. There is also no expectation that versions are orderable.

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
/// [name] A natural language name identifying the ObservationDefinition.
/// This name should be usable as an identifier for the module by machine
/// processing applications such as code generation.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [title] A short, descriptive, user-friendly title for the
/// ObservationDefinition.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [status] The current state of the ObservationDefinition.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [experimental] A flag to indicate that this ObservationDefinition is
/// authored for testing purposes (or education/evaluation/marketing), and is
/// not intended to be used for genuine usage.

    @JsonKey(name: 'experimental') FhirBoolean? experimental,
/// [_experimental] Extensions for experimental

    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
/// [date] The date (and optionally time) when the ObservationDefinition
/// was last significantly changed. The date must change when the business
/// version changes and it must change if the status code changes. In addition,
/// it should change when the substantive content of the ObservationDefinition
/// changes.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [publisher] Helps establish the "authority/credibility" of the
/// ObservationDefinition. May also allow for contact.

    @JsonKey(name: 'publisher') String? publisher,
/// [_publisher] Extensions for publisher

    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
/// [contact] Contact details to assist a user in finding and communicating
/// with the publisher.

    @JsonKey(name: 'contact') List<List<ContactDetail>>? contact,
/// [description] A free text natural language description of the
/// ObservationDefinition from the consumer's perspective.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [useContext] The content was developed with a focus and intent of
/// supporting the contexts that are listed. These contexts may be general
/// categories (gender, age, ...) or may be references to specific programs
/// (insurance plans, studies, ...) and may be used to assist with indexing and
/// searching for appropriate ObservationDefinition instances.

    @JsonKey(name: 'useContext') List<List<UsageContext>>? useContext,
/// [jurisdiction] A jurisdiction in which the ObservationDefinition is
/// intended to be used.

    @JsonKey(name: 'jurisdiction') List<List<CodeableConcept>>? jurisdiction,
/// [purpose] Explains why this ObservationDefinition is needed and why it
/// has been designed as it has.

    @JsonKey(name: 'purpose') FhirMarkdown? purpose,
/// [_purpose] Extensions for purpose

    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
/// [copyright] Copyright statement relating to the ObservationDefinition
/// and/or its contents. Copyright statements are generally legal restrictions
/// on the use and publishing of the ObservationDefinition.

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
/// [effectivePeriod] The period during which the ObservationDefinition
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
/// FHIR-defined ObservationDefinition that is adhered to in whole or in part
/// by this definition.

    @JsonKey(name: 'derivedFromCanonical') List<List<FhirCanonical>>? derivedFromCanonical,
/// [derivedFromUri] The URL pointing to an externally-defined observation
/// definition, guideline or other definition that is adhered to in whole or in
/// part by this definition.

    @JsonKey(name: 'derivedFromUri') List<List<FhirUri>>? derivedFromUri,
/// [_derivedFromUri] Extensions for derivedFromUri

    @JsonKey(name: '_derivedFromUri') List<PrimitiveElement>? derivedFromUriElement,
/// [subject] A code that describes the intended kind of subject of
/// Observation instances conforming to this ObservationDefinition.

    @JsonKey(name: 'subject') List<List<CodeableConcept>>? subject,
/// [performerType] The type of individual/organization/device that is
/// expected to act upon instances of this definition.

    @JsonKey(name: 'performerType') CodeableConcept? performerType,
/// [category] A code that classifies the general type of observation.

    @JsonKey(name: 'category') List<List<CodeableConcept>>? category,
/// [code] Describes what will be observed. Sometimes this is called the
/// observation "name".

    @JsonKey(name: 'code') CodeableConcept? code,
/// [permittedDataType] The data types allowed for the value element of the
/// instance observations conforming to this ObservationDefinition.

    @JsonKey(name: 'permittedDataType') List<List<FhirCode>>? permittedDataType,
/// [_permittedDataType] Extensions for permittedDataType

    @JsonKey(name: '_permittedDataType') List<PrimitiveElement>? permittedDataTypeElement,
/// [multipleResultsAllowed] Multiple results allowed for observations
/// conforming to this ObservationDefinition.

    @JsonKey(name: 'multipleResultsAllowed') FhirBoolean? multipleResultsAllowed,
/// [_multipleResultsAllowed] Extensions for multipleResultsAllowed

    @JsonKey(name: '_multipleResultsAllowed') PrimitiveElement? multipleResultsAllowedElement,
/// [bodySite] The site on the subject's body where the  observation is to
/// be made.

    @JsonKey(name: 'bodySite') CodeableConcept? bodySite,
/// [method] The method or technique used to perform the observation.

    @JsonKey(name: 'method') CodeableConcept? method,
/// [specimen] The kind of specimen that this type of observation is
/// produced on.

    @JsonKey(name: 'specimen') List<List<Reference>>? specimen,
/// [device] The measurement model of device or actual device used to
/// produce observations of this type.

    @JsonKey(name: 'device') List<List<Reference>>? device,
/// [preferredReportName] The preferred name to be used when reporting the
/// results of observations conforming to this ObservationDefinition.

    @JsonKey(name: 'preferredReportName') String? preferredReportName,
/// [_preferredReportName] Extensions for preferredReportName

    @JsonKey(name: '_preferredReportName') PrimitiveElement? preferredReportNameElement,
/// [permittedUnit] Units allowed for the valueQuantity element in the
/// instance observations conforming to this ObservationDefinition.

    @JsonKey(name: 'permittedUnit') List<List<Coding>>? permittedUnit,
/// [qualifiedValue] A set of qualified values associated with a context
/// and a set of conditions -  provides a range for quantitative and ordinal
/// observations and a collection of value sets for qualitative observations.

    @JsonKey(name: 'qualifiedValue') List<List<ObservationDefinition_QualifiedValue>>? qualifiedValue,
/// [hasMember] This ObservationDefinition defines a group  observation
/// (e.g. a battery, a panel of tests, a set of vital sign measurements) that
/// includes the target as a member of the group.

    @JsonKey(name: 'hasMember') List<List<Reference>>? hasMember,
/// [component] Some observations have multiple component observations,
/// expressed as separate code value pairs.

    @JsonKey(name: 'component') List<List<ObservationDefinition_Component>>? component,
  }) = _$ObservationDefinition;

  @override
  String get fhirType => 'ObservationDefinition';

  factory ObservationDefinition.fromJson(Map<String, dynamic> json) =>
      _$ObservationDefinitionFromJson(json);

  factory ObservationDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ObservationDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ObservationDefinition.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ObservationDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ObservationDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ObservationDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
