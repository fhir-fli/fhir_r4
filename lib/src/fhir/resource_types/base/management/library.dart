// ignore_for_file: invalid_annotation_target
// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'library.freezed.dart';
part 'library.g.dart';

/// [Library] The Library resource is a general-purpose container for
@freezed
class Library with _$Library implements DomainResource {
  /// [Library] The Library resource is a general-purpose container for
  const Library._();

  /// [Library] The Library resource is a general-purpose container for
  /// knowledge asset definitions. It can be used to describe and expose
  /// existing knowledge assets such as logic libraries and information model
  ///  descriptions, as well as to describe a collection of knowledge assets.
  ///
  /// [resourceType] This is a Library resource
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
  /// [url] An absolute URI that is used to identify this library when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// library is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the library is stored
  ///  on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this library
  /// when it is represented in other formats, or referenced in a specification,
  /// model, design or an instance. e.g. CMS or NQF identifiers for a measure
  /// artifact. Note that at least one identifier is required for
  ///  non-experimental active artifacts.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// library when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the library author and is
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
  /// [name] A natural language name identifying the library. This name should
  /// be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the library.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [subtitle] An explanatory or alternate title for the library giving
  ///  additional information about its content.
  ///
  /// [subtitleElement] Extensions for subtitle
  ///
  /// [status] The status of this library. Enables tracking the life-cycle of
  ///  the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this library is authored
  /// for testing purposes (or education/evaluation/marketing) and is not
  ///  intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [type] Identifies the type of library such as a Logic Library, Model
  ///  Definition, Asset Collection, or Module Definition.
  ///
  /// [subjectCodeableConcept] A code or group definition that describes the
  ///  intended subject of the contents of the library.
  ///
  /// [subjectReference] A code or group definition that describes the intended
  ///  subject of the contents of the library.
  ///
  /// [date] The date  (and optionally time) when the library was published.
  /// The date must change when the business version changes and it must change
  /// if the status code changes. In addition, it should change when the
  ///  substantive content of the library changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  library.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the library
  ///  from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate library instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the library is
  ///  intended to be used.
  ///
  /// [purpose] Explanation of why this library is needed and why it has been
  ///  designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [usage] A detailed description of how the library is used from a clinical
  ///  perspective.
  ///
  /// [usageElement] Extensions for usage
  ///
  /// [copyright] A copyright statement relating to the library and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the library.
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
  /// [effectivePeriod] The period during which the library content was or is
  ///  planned to be in active use.
  ///
  /// [topic] Descriptive topics related to the content of the library. Topics
  /// provide a high-level categorization of the library that can be useful for
  ///  filtering and searching.
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
  /// [parameter] The parameter element defines parameters used by the library.
  ///
  /// [dataRequirement] Describes a set of data that must be provided in order
  /// to be able to successfully perform the computations defined by the
  ///  library.
  ///
  /// [content] The content of the library as an Attachment. The content may be
  /// a reference to a url, or may be directly embedded as a base-64 string.
  /// Either way, the contentType of the attachment determines how to interpret
  ///  the content.
  const factory Library({
    @Default(R4ResourceType.Library)
    @JsonKey(unknownEnumValue: R4ResourceType.Library)

    /// [resourceType] This is a Library resource
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

    /// [url] An absolute URI that is used to identify this library when it is
    /// referenced in a specification, model, design or an instance; also called
    /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
    /// literal address at which at which an authoritative instance of this
    /// library is (or will be) published. This URL can be the target of a
    /// canonical reference. It SHALL remain the same when the library is stored
    ///  on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [identifier] A formal identifier that is used to identify this library
    /// when it is represented in other formats, or referenced in a specification,
    /// model, design or an instance. e.g. CMS or NQF identifiers for a measure
    /// artifact. Note that at least one identifier is required for
    ///  non-experimental active artifacts.
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the
    /// library when it is referenced in a specification, model, design or
    /// instance. This is an arbitrary value managed by the library author and is
    /// not expected to be globally unique. For example, it might be a timestamp
    /// (e.g. yyyymmdd) if a managed version is not available. There is also no
    /// expectation that versions can be placed in a lexicographical sequence. To
    /// provide a version consistent with the Decision Support Service
    /// specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more
    /// information on versioning knowledge assets, refer to the Decision Support
    /// Service specification. Note that a version is required for
    ///  non-experimental active artifacts.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the library. This name should
    /// be usable as an identifier for the module by machine processing
    ///  applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the library.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [subtitle] An explanatory or alternate title for the library giving
    ///  additional information about its content.
    String? subtitle,

    /// [subtitleElement] Extensions for subtitle
    @JsonKey(name: '_subtitle') PrimitiveElement? subtitleElement,

    /// [status] The status of this library. Enables tracking the life-cycle of
    ///  the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this library is authored
    /// for testing purposes (or education/evaluation/marketing) and is not
    ///  intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [type] Identifies the type of library such as a Logic Library, Model
    ///  Definition, Asset Collection, or Module Definition.
    required CodeableConcept type,

    /// [subjectCodeableConcept] A code or group definition that describes the
    ///  intended subject of the contents of the library.
    CodeableConcept? subjectCodeableConcept,

    /// [subjectReference] A code or group definition that describes the intended
    ///  subject of the contents of the library.
    Reference? subjectReference,

    /// [date] The date  (and optionally time) when the library was published.
    /// The date must change when the business version changes and it must change
    /// if the status code changes. In addition, it should change when the
    ///  substantive content of the library changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  library.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the library
    ///  from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate library instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the library is
    ///  intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this library is needed and why it has been
    ///  designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [usage] A detailed description of how the library is used from a clinical
    ///  perspective.
    String? usage,

    /// [usageElement] Extensions for usage
    @JsonKey(name: '_usage') PrimitiveElement? usageElement,

    /// [copyright] A copyright statement relating to the library and/or its
    /// contents. Copyright statements are generally legal restrictions on the use
    ///  and publishing of the library.
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

    /// [effectivePeriod] The period during which the library content was or is
    ///  planned to be in active use.
    Period? effectivePeriod,

    /// [topic] Descriptive topics related to the content of the library. Topics
    /// provide a high-level categorization of the library that can be useful for
    ///  filtering and searching.
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

    /// [parameter] The parameter element defines parameters used by the library.
    List<ParameterDefinition>? parameter,

    /// [dataRequirement] Describes a set of data that must be provided in order
    /// to be able to successfully perform the computations defined by the
    ///  library.
    List<DataRequirement>? dataRequirement,

    /// [content] The content of the library as an Attachment. The content may be
    /// a reference to a url, or may be directly embedded as a base-64 string.
    /// Either way, the contentType of the attachment determines how to interpret
    ///  the content.
    List<Attachment>? content,
  }) = _Library;

  @override
  String get fhirType => 'Library';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Library.fromYaml(dynamic yaml) => yaml is String
      ? Library.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Library.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Library cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Library.fromJson(Map<String, dynamic> json) =>
      _$LibraryFromJson(json);

  /// Acts like a constructor, returns a [Library], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Library.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$LibraryFromJson(json);
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
