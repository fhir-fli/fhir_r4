// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'citation.freezed.dart';
part 'citation.g.dart';

/// [Citation] The Citation Resource enables reference to any knowledge
@freezed
class Citation extends DomainResource with _$Citation {
  /// [Citation] The Citation Resource enables reference to any knowledge
  Citation._();

  /// [Citation] The Citation Resource enables reference to any knowledge
  /// artifact for purposes of identification and attribution. The Citation Resource
  /// supports existing reference structures and developing publication practices
  /// such as versioning, expressing complex contributorship roles, and referencing
  /// computable resources.
  ///
  /// [resourceType] This is a Citation resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  /// Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is maintained
  /// by the infrastructure. Changes to the content might not always be associated
  /// with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that defines the
  /// special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] _(_implicitRules): Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] _(_language): Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to contain
  /// sufficient detail to make it "clinically safe" for a human to just read the
  /// narrative. Resource definitions may define what content should be represented
  /// in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified independently,
  /// and nor can they have their own independent transaction scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of the
  /// containing element's descendants. Usually modifier elements provide negation or
  /// qualification. To make the use of extensions safe and manageable, there is a
  /// strict set of governance applied to the definition and use of extensions.
  /// Though any implementer is allowed to define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [url] An absolute URI that is used to identify this citation when it is
  /// referenced in a specification, model, design or an instance; also called its
  /// canonical identifier. This SHOULD be globally unique and SHOULD be a literal
  /// address at which at which an authoritative instance of this summary is (or will
  /// be) published. This URL can be the target of a canonical reference. It SHALL
  /// remain the same when the summary is stored on different servers.
  ///
  /// [urlElement] _(_url): Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this citation
  /// when it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// citation when it is referenced in a specification, model, design or instance.
  /// This is an arbitrary value managed by the citation author and is not expected
  /// to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if
  /// a managed version is not available. There is also no expectation that versions
  /// can be placed in a lexicographical sequence.
  ///
  /// [versionElement] _(_version): Extensions for version
  ///
  /// [name] A natural language name identifying the citation. This name should
  /// be usable as an identifier for the module by machine processing applications
  /// such as code generation.
  ///
  /// [nameElement] _(_name): Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the citation.
  ///
  /// [titleElement] _(_title): Extensions for title
  ///
  /// [status] The status of this summary. Enables tracking the life-cycle of
  /// the content.
  ///
  /// [statusElement] _(_status): Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this citation is authored
  /// for testing purposes (or education/evaluation/marketing) and is not intended to
  /// be used for genuine usage.
  ///
  /// [experimentalElement] _(_experimental): Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the citation was published.
  /// The date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the citation changes.
  ///
  /// [dateElement] _(_date): Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  /// citation.
  ///
  /// [publisherElement] _(_publisher): Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  /// with the publisher.
  ///
  /// [description] A free text natural language description of the citation
  /// from a consumer's perspective.
  ///
  /// [descriptionElement] _(_description): Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing and
  /// searching for appropriate citation instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the citation is
  /// intended to be used.
  ///
  /// [purpose] Explanation of why this citation is needed and why it has been
  /// designed as it has.
  ///
  /// [purposeElement] _(_purpose): Extensions for purpose
  ///
  /// [copyright] Use and/or publishing restrictions for the Citation, not for
  /// the cited artifact.
  ///
  /// [copyrightElement] _(_copyright): Extensions for copyright
  ///
  /// [approvalDate] The date on which the resource content was approved by the
  /// publisher. Approval happens once when the content is officially approved for
  /// usage.
  ///
  /// [approvalDateElement] _(_approvalDate): Extensions for approvalDate
  ///
  /// [lastReviewDate] The date on which the resource content was last reviewed.
  /// Review happens periodically after approval but does not change the original
  /// approval date.
  ///
  /// [lastReviewDateElement] _(_lastReviewDate): Extensions for lastReviewDate
  ///
  /// [effectivePeriod] The period during which the citation content was or is
  /// planned to be in active use.
  ///
  /// [author] Who authored the Citation.
  ///
  /// [editor] Who edited the Citation.
  ///
  /// [reviewer] Who reviewed the Citation.
  ///
  /// [endorser] Who endorsed the Citation.
  ///
  /// [summary] A human-readable display of the citation.
  ///
  /// [classification] The assignment to an organizing scheme.
  ///
  /// [note] Used for general notes and annotations not coded elsewhere.
  ///
  /// [currentState] The status of the citation.
  ///
  /// [statusDate] An effective date or period for a status of the citation.
  ///
  /// [relatesTo] Artifact related to the Citation Resource.
  ///
  /// [citedArtifact] The article or artifact being described.
  const factory Citation({
    @Default(R4ResourceType.Citation) R4ResourceType resourceType,
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
    String? name,
    @JsonKey(name: '_name') PrimitiveElement? nameElement,
    String? title,
    @JsonKey(name: '_title') PrimitiveElement? titleElement,
    FhirCode? status,
    @JsonKey(name: '_status') PrimitiveElement? statusElement,
    FhirBoolean? experimental,
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
    FhirDateTime? date,
    @JsonKey(name: '_date') PrimitiveElement? dateElement,
    String? publisher,
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
    FhirMarkdown? copyright,
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
    FhirDate? approvalDate,
    @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
    FhirDate? lastReviewDate,
    @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
    Period? effectivePeriod,
    // List<CodeableConcept>? topic,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    // List<RelatedArtifact>? relatedArtifact,
    List<CitationSummary>? summary,
    List<CitationClassification>? classification,
    List<Annotation>? note,
    List<CodeableConcept>? currentState,
    List<CitationStatusDate>? statusDate,
    List<CitationRelatesTo>? relatesTo,
    CitationCitedArtifact? citedArtifact,
  }) = _Citation;

  @override
  String get fhirType => 'Citation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Citation.fromYaml(dynamic yaml) => yaml is String
      ? Citation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Citation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Citation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Citation.fromJson(Map<String, dynamic> json) =>
      _$CitationFromJson(json);

  /// Acts like a constructor, returns a [Citation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Citation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationSummary] The Citation Resource enables reference to any
@freezed

/// [CitationSummary] The Citation Resource enables reference to any
@freezed
class CitationSummary extends BackboneElement with _$CitationSummary {
  /// [CitationSummary] The Citation Resource enables reference to any
  CitationSummary._();

  /// [CitationSummary] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [style] Format for display of the citation.
  ///
  /// [text] The human-readable display of the citation.
  ///
  /// [textElement] _(_text) Extensions for text
  const factory CitationSummary({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? style,
    FhirMarkdown? text,
    @JsonKey(name: '_text') PrimitiveElement? textElement,
  }) = _CitationSummary;

  @override
  String get fhirType => 'CitationSummary';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationSummary.fromYaml(dynamic yaml) => yaml is String
      ? CitationSummary.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationSummary.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationSummary cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationSummary.fromJson(Map<String, dynamic> json) =>
      _$CitationSummaryFromJson(json);

  /// Acts like a constructor, returns a [CitationSummary], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationSummary.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationSummaryFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationClassification] The Citation Resource enables reference to any
@freezed

/// [CitationClassification] The Citation Resource enables reference to any
@freezed
class CitationClassification extends BackboneElement
    with _$CitationClassification {
  /// [CitationClassification] The Citation Resource enables reference to any
  CitationClassification._();

  /// [CitationClassification] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [type] The kind of classifier (e.g. publication type, keyword).
  ///
  /// [classifier] The specific classification value.
  const factory CitationClassification({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
  }) = _CitationClassification;

  @override
  String get fhirType => 'CitationClassification';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationClassification.fromYaml(dynamic yaml) => yaml is String
      ? CitationClassification.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationClassification.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationClassification cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationClassification.fromJson(Map<String, dynamic> json) =>
      _$CitationClassificationFromJson(json);

  /// Acts like a constructor, returns a [CitationClassification], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationClassification.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationClassificationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationStatusDate] The Citation Resource enables reference to any
@freezed

/// [CitationStatusDate] The Citation Resource enables reference to any
@freezed
class CitationStatusDate extends BackboneElement with _$CitationStatusDate {
  /// [CitationStatusDate] The Citation Resource enables reference to any
  CitationStatusDate._();

  /// [CitationStatusDate] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [activity] Classification of the status.
  ///
  /// [actual] Either occurred or expected.
  ///
  /// [actualElement] _(_actual) Extensions for actual
  ///
  /// [period] When the status started and/or ended.
  const factory CitationStatusDate({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required CodeableConcept activity,
    FhirBoolean? actual,
    @JsonKey(name: '_actual') PrimitiveElement? actualElement,
    required Period period,
  }) = _CitationStatusDate;

  @override
  String get fhirType => 'CitationStatusDate';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationStatusDate.fromYaml(dynamic yaml) => yaml is String
      ? CitationStatusDate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationStatusDate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationStatusDate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationStatusDate.fromJson(Map<String, dynamic> json) =>
      _$CitationStatusDateFromJson(json);

  /// Acts like a constructor, returns a [CitationStatusDate], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationStatusDate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationStatusDateFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationRelatesTo] The Citation Resource enables reference to any
@freezed

/// [CitationRelatesTo] The Citation Resource enables reference to any
@freezed
class CitationRelatesTo extends BackboneElement with _$CitationRelatesTo {
  /// [CitationRelatesTo] The Citation Resource enables reference to any
  CitationRelatesTo._();

  /// [CitationRelatesTo] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [relationshipType] How the Citation resource relates to the target artifact.
  ///
  /// [targetClassifier] The clasification of the related artifact.
  ///
  /// [targetUri] The article or artifact that the Citation Resource is related
  /// to.
  ///
  /// [targetUriElement] _(_targetUri) Extensions for targetUri
  ///
  /// [targetIdentifier] The article or artifact that the Citation Resource is
  /// related to.
  ///
  /// [targetReference] The article or artifact that the Citation Resource is
  /// related to.
  ///
  /// [targetAttachment] The article or artifact that the Citation Resource is
  /// related to.
  const factory CitationRelatesTo({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required CodeableConcept relationshipType,
    List<CodeableConcept>? targetClassifier,
    FhirUri? targetUri,
    @JsonKey(name: '_targetUri') PrimitiveElement? targetUriElement,
    Identifier? targetIdentifier,
    Reference? targetReference,
    Attachment? targetAttachment,
  }) = _CitationRelatesTo;

  @override
  String get fhirType => 'CitationRelatesTo';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationRelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? CitationRelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationRelatesTo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationRelatesTo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationRelatesTo.fromJson(Map<String, dynamic> json) =>
      _$CitationRelatesToFromJson(json);

  /// Acts like a constructor, returns a [CitationRelatesTo], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationRelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationRelatesToFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationCitedArtifact] The Citation Resource enables reference to any
@freezed

/// [CitationCitedArtifact] The Citation Resource enables reference to any
@freezed
class CitationCitedArtifact extends BackboneElement
    with _$CitationCitedArtifact {
  /// [CitationCitedArtifact] The Citation Resource enables reference to any
  CitationCitedArtifact._();

  /// [CitationCitedArtifact] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [identifier] A formal identifier that is used to identify this citation
  /// when it is represented in other formats, or referenced in a specification,
  /// model, design or an instance.
  ///
  /// [relatedIdentifier] A formal identifier that is used to identify things
  /// closely related to this citation.
  ///
  /// [dateAccessed] When the cited artifact was accessed.
  ///
  /// [dateAccessedElement] _(_dateAccessed) Extensions for dateAccessed
  ///
  /// [version] The defined version of the cited artifact.
  ///
  /// [currentState] The status of the cited artifact.
  ///
  /// [statusDate] An effective date or period for a status of the cited artifact.
  ///
  /// [title] The title details of the article or artifact.
  ///
  /// [abstract] Summary of the article or artifact.
  ///
  /// [part] The component of the article or artifact.
  ///
  /// [relatesTo] The artifact related to the cited artifact.
  ///
  /// [publicationForm] If multiple, used to represent alternative forms of the
  /// article that are not separate citations.
  ///
  /// [webLocation] Used for any URL for the article or artifact cited.
  ///
  /// [classification] The assignment to an organizing scheme.
  ///
  /// [contributorship] This element is used to list authors and other
  /// contributors, their contact information, specific contributions, and summary
  /// statements.
  ///
  /// [note] Any additional information or content for the article or artifact.
  const factory CitationCitedArtifact({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Identifier>? relatedIdentifier,
    FhirDateTime? dateAccessed,
    @JsonKey(name: '_dateAccessed') PrimitiveElement? dateAccessedElement,
    CitationVersion? version,
    List<CodeableConcept>? currentState,
    List<CitationStatusDate1>? statusDate,
    List<CitationTitle>? title,
    @JsonKey(name: 'abstract') List<CitationAbstract>? abstract_,
    @JsonKey(name: 'part') CitationPart? part_,
    List<CitationRelatesTo1>? relatesTo,
    List<CitationPublicationForm>? publicationForm,
    List<CitationWebLocation>? webLocation,
    List<CitationClassification1>? classification,
    CitationContributorship? contributorship,
    List<Annotation>? note,
  }) = _CitationCitedArtifact;

  @override
  String get fhirType => 'CitationCitedArtifact';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationCitedArtifact.fromYaml(dynamic yaml) => yaml is String
      ? CitationCitedArtifact.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationCitedArtifact.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationCitedArtifact cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationCitedArtifact.fromJson(Map<String, dynamic> json) =>
      _$CitationCitedArtifactFromJson(json);

  /// Acts like a constructor, returns a [CitationCitedArtifact], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationCitedArtifact.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationCitedArtifactFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationVersion] The Citation Resource enables reference to any
@freezed

/// [CitationVersion] The Citation Resource enables reference to any
@freezed
class CitationVersion extends BackboneElement with _$CitationVersion {
  /// [CitationVersion] The Citation Resource enables reference to any
  CitationVersion._();

  /// [CitationVersion] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [value] The version number or other version identifier.
  ///
  /// [valueElement] _(_value) Extensions for value
  ///
  /// [baseCitation] Citation for the main version of the cited artifact.
  const factory CitationVersion({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? value,
    @JsonKey(name: '_value') PrimitiveElement? valueElement,
    Reference? baseCitation,
  }) = _CitationVersion;

  @override
  String get fhirType => 'CitationVersion';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationVersion.fromYaml(dynamic yaml) => yaml is String
      ? CitationVersion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationVersion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationVersion cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationVersion.fromJson(Map<String, dynamic> json) =>
      _$CitationVersionFromJson(json);

  /// Acts like a constructor, returns a [CitationVersion], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationVersion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationVersionFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationStatusDate1] The Citation Resource enables reference to any
@freezed

/// [CitationStatusDate1] The Citation Resource enables reference to any
@freezed
class CitationStatusDate1 extends BackboneElement with _$CitationStatusDate1 {
  /// [CitationStatusDate1] The Citation Resource enables reference to any
  CitationStatusDate1._();

  /// [CitationStatusDate1] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [activity] Classification of the status.
  ///
  /// [actual] Either occurred or expected.
  ///
  /// [actualElement] _(_actual) Extensions for actual
  ///
  /// [period] When the status started and/or ended.
  const factory CitationStatusDate1({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required CodeableConcept activity,
    FhirBoolean? actual,
    @JsonKey(name: '_actual') PrimitiveElement? actualElement,
    required Period period,
  }) = _CitationStatusDate1;

  @override
  String get fhirType => 'CitationStatusDate1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationStatusDate1.fromYaml(dynamic yaml) => yaml is String
      ? CitationStatusDate1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationStatusDate1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationStatusDate1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationStatusDate1.fromJson(Map<String, dynamic> json) =>
      _$CitationStatusDate1FromJson(json);

  /// Acts like a constructor, returns a [CitationStatusDate1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationStatusDate1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationStatusDate1FromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationTitle] The Citation Resource enables reference to any knowledge
@freezed

/// [CitationTitle] The Citation Resource enables reference to any knowledge
@freezed
class CitationTitle extends BackboneElement with _$CitationTitle {
  /// [CitationTitle] The Citation Resource enables reference to any knowledge
  CitationTitle._();

  /// [CitationTitle] The Citation Resource enables reference to any knowledge
  /// artifact for purposes of identification and attribution. The Citation Resource
  /// supports existing reference structures and developing publication practices
  /// such as versioning, expressing complex contributorship roles, and referencing
  /// computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [type] Used to express the reason or specific aspect for the title.
  ///
  /// [language] Used to express the specific language.
  ///
  /// [text] The title of the article or artifact.
  ///
  /// [textElement] _(_text) Extensions for text
  const factory CitationTitle({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? type,
    CodeableConcept? language,
    FhirMarkdown? text,
    @JsonKey(name: '_text') PrimitiveElement? textElement,
  }) = _CitationTitle;

  @override
  String get fhirType => 'CitationTitle';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationTitle.fromYaml(dynamic yaml) => yaml is String
      ? CitationTitle.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationTitle.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationTitle cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationTitle.fromJson(Map<String, dynamic> json) =>
      _$CitationTitleFromJson(json);

  /// Acts like a constructor, returns a [CitationTitle], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationTitle.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationTitleFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationAbstract] The Citation Resource enables reference to any
@freezed

/// [CitationAbstract] The Citation Resource enables reference to any
@freezed
class CitationAbstract extends BackboneElement with _$CitationAbstract {
  /// [CitationAbstract] The Citation Resource enables reference to any
  CitationAbstract._();

  /// [CitationAbstract] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [type] Used to express the reason or specific aspect for the abstract.
  ///
  /// [language] Used to express the specific language.
  ///
  /// [text] Abstract content.
  ///
  /// [textElement] _(_text) Extensions for text
  ///
  /// [copyright] Copyright notice for the abstract.
  ///
  /// [copyrightElement] _(_copyright) Extensions for copyright
  const factory CitationAbstract({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? language,
    FhirMarkdown? text,
    @JsonKey(name: '_text') PrimitiveElement? textElement,
    FhirMarkdown? copyright,
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
  }) = _CitationAbstract;

  @override
  String get fhirType => 'CitationAbstract';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationAbstract.fromYaml(dynamic yaml) => yaml is String
      ? CitationAbstract.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationAbstract.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationAbstract cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationAbstract.fromJson(Map<String, dynamic> json) =>
      _$CitationAbstractFromJson(json);

  /// Acts like a constructor, returns a [CitationAbstract], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationAbstract.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationAbstractFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationPart] The Citation Resource enables reference to any knowledge
@freezed

/// [CitationPart] The Citation Resource enables reference to any knowledge
@freezed
class CitationPart extends BackboneElement with _$CitationPart {
  /// [CitationPart] The Citation Resource enables reference to any knowledge
  CitationPart._();

  /// [CitationPart] The Citation Resource enables reference to any knowledge
  /// artifact for purposes of identification and attribution. The Citation Resource
  /// supports existing reference structures and developing publication practices
  /// such as versioning, expressing complex contributorship roles, and referencing
  /// computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [type] The kind of component.
  ///
  /// [value] The specification of the component.
  ///
  /// [valueElement] _(_value) Extensions for value
  ///
  /// [baseCitation] The citation for the full article or artifact.
  const factory CitationPart({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    String? value,
    @JsonKey(name: '_value') PrimitiveElement? valueElement,
    Reference? baseCitation,
  }) = _CitationPart;

  @override
  String get fhirType => 'CitationPart';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationPart.fromYaml(dynamic yaml) => yaml is String
      ? CitationPart.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationPart.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationPart cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationPart.fromJson(Map<String, dynamic> json) =>
      _$CitationPartFromJson(json);

  /// Acts like a constructor, returns a [CitationPart], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationPart.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationPartFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationRelatesTo1] The Citation Resource enables reference to any
@freezed

/// [CitationRelatesTo1] The Citation Resource enables reference to any
@freezed
class CitationRelatesTo1 extends BackboneElement with _$CitationRelatesTo1 {
  /// [CitationRelatesTo1] The Citation Resource enables reference to any
  CitationRelatesTo1._();

  /// [CitationRelatesTo1] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [relationshipType] How the cited artifact relates to the target artifact.
  ///
  /// [targetClassifier] The clasification of the related artifact.
  ///
  /// [targetUri] The article or artifact that the cited artifact is related to.
  ///
  /// [targetUriElement] _(_targetUri) Extensions for targetUri
  ///
  /// [targetIdentifier] The article or artifact that the cited artifact is
  /// related to.
  ///
  /// [targetReference] The article or artifact that the cited artifact is
  /// related to.
  ///
  /// [targetAttachment] The article or artifact that the cited artifact is
  /// related to.
  const factory CitationRelatesTo1({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required CodeableConcept relationshipType,
    List<CodeableConcept>? targetClassifier,
    FhirUri? targetUri,
    @JsonKey(name: '_targetUri') PrimitiveElement? targetUriElement,
    Identifier? targetIdentifier,
    Reference? targetReference,
    Attachment? targetAttachment,
  }) = _CitationRelatesTo1;

  @override
  String get fhirType => 'CitationRelatesTo1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationRelatesTo1.fromYaml(dynamic yaml) => yaml is String
      ? CitationRelatesTo1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationRelatesTo1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationRelatesTo1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationRelatesTo1.fromJson(Map<String, dynamic> json) =>
      _$CitationRelatesTo1FromJson(json);

  /// Acts like a constructor, returns a [CitationRelatesTo1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationRelatesTo1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationRelatesTo1FromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationPublicationForm] The Citation Resource enables reference to any
@freezed

/// [CitationPublicationForm] The Citation Resource enables reference to any
@freezed
class CitationPublicationForm extends BackboneElement
    with _$CitationPublicationForm {
  /// [CitationPublicationForm] The Citation Resource enables reference to any
  CitationPublicationForm._();

  /// [CitationPublicationForm] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [publishedIn] The collection the cited article or artifact is published in.
  ///
  /// [periodicRelease] The specific issue in which the cited article resides.
  ///
  /// [articleDate] The date the article was added to the database, or the date
  /// the article was released (which may differ from the journal issue publication
  /// date).
  ///
  /// [articleDateElement] _(_articleDate) Extensions for articleDate
  ///
  /// [lastRevisionDate] The date the article was last revised or updated in the
  /// database.
  ///
  /// [lastRevisionDateElement] _(_lastRevisionDate) Extensions for
  /// lastRevisionDate
  ///
  /// [language] Language in which this form of the article is published.
  ///
  /// [accessionNumber] Entry number or identifier for inclusion in a database.
  ///
  /// [accessionNumberElement] _(_accessionNumber) Extensions for accessionNumber
  ///
  /// [pageString] Used for full display of pagination.
  ///
  /// [pageStringElement] _(_pageString) Extensions for pageString
  ///
  /// [firstPage] Used for isolated representation of first page.
  ///
  /// [firstPageElement] _(_firstPage) Extensions for firstPage
  ///
  /// [lastPage] Used for isolated representation of last page.
  ///
  /// [lastPageElement] _(_lastPage) Extensions for lastPage
  ///
  /// [pageCount] Actual or approximate number of pages or screens.
  ///
  /// [pageCountElement] _(_pageCount) Extensions for pageCount
  ///
  /// [copyright] Copyright notice for the full article or artifact.
  ///
  /// [copyrightElement] _(_copyright) Extensions for copyright
  const factory CitationPublicationForm({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CitationPublishedIn? publishedIn,
    CitationPeriodicRelease? periodicRelease,
    FhirDateTime? articleDate,
    @JsonKey(name: '_articleDate') PrimitiveElement? articleDateElement,
    FhirDateTime? lastRevisionDate,
    @JsonKey(name: '_lastRevisionDate')
    PrimitiveElement? lastRevisionDateElement,
    List<CodeableConcept>? language,
    String? accessionNumber,
    @JsonKey(name: '_accessionNumber') PrimitiveElement? accessionNumberElement,
    String? pageString,
    @JsonKey(name: '_pageString') PrimitiveElement? pageStringElement,
    String? firstPage,
    @JsonKey(name: '_firstPage') PrimitiveElement? firstPageElement,
    String? lastPage,
    @JsonKey(name: '_lastPage') PrimitiveElement? lastPageElement,
    String? pageCount,
    @JsonKey(name: '_pageCount') PrimitiveElement? pageCountElement,
    FhirMarkdown? copyright,
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
  }) = _CitationPublicationForm;

  @override
  String get fhirType => 'CitationPublicationForm';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationPublicationForm.fromYaml(dynamic yaml) => yaml is String
      ? CitationPublicationForm.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationPublicationForm.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationPublicationForm cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationPublicationForm.fromJson(Map<String, dynamic> json) =>
      _$CitationPublicationFormFromJson(json);

  /// Acts like a constructor, returns a [CitationPublicationForm], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationPublicationForm.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationPublicationFormFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationPublishedIn] The Citation Resource enables reference to any
@freezed

/// [CitationPublishedIn] The Citation Resource enables reference to any
@freezed
class CitationPublishedIn extends BackboneElement with _$CitationPublishedIn {
  /// [CitationPublishedIn] The Citation Resource enables reference to any
  CitationPublishedIn._();

  /// [CitationPublishedIn] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [type] Kind of container (e.g. Periodical, database, or book).
  ///
  /// [identifier] Journal identifiers include ISSN, ISO Abbreviation and
  /// NLMuniqueID; Book identifiers include ISBN.
  ///
  /// [title] Name of the database or title of the book or journal.
  ///
  /// [titleElement] _(_title) Extensions for title
  ///
  /// [publisher] Name of the publisher.
  ///
  /// [publisherLocation] Geographic location of the publisher.
  ///
  /// [publisherLocationElement] _(_publisherLocation) Extensions for
  /// publisherLocation
  const factory CitationPublishedIn({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<Identifier>? identifier,
    String? title,
    @JsonKey(name: '_title') PrimitiveElement? titleElement,
    Reference? publisher,
    String? publisherLocation,
    @JsonKey(name: '_publisherLocation')
    PrimitiveElement? publisherLocationElement,
  }) = _CitationPublishedIn;

  @override
  String get fhirType => 'CitationPublishedIn';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationPublishedIn.fromYaml(dynamic yaml) => yaml is String
      ? CitationPublishedIn.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationPublishedIn.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationPublishedIn cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationPublishedIn.fromJson(Map<String, dynamic> json) =>
      _$CitationPublishedInFromJson(json);

  /// Acts like a constructor, returns a [CitationPublishedIn], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationPublishedIn.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationPublishedInFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationPeriodicRelease] The Citation Resource enables reference to any
@freezed

/// [CitationPeriodicRelease] The Citation Resource enables reference to any
@freezed
class CitationPeriodicRelease extends BackboneElement
    with _$CitationPeriodicRelease {
  /// [CitationPeriodicRelease] The Citation Resource enables reference to any
  CitationPeriodicRelease._();

  /// [CitationPeriodicRelease] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [citedMedium] Describes the form of the medium cited. Common codes are
  /// "Internet" or "Print".
  ///
  /// [volume] Volume number of journal in which the article is published.
  ///
  /// [volumeElement] _(_volume) Extensions for volume
  ///
  /// [issue] Issue, part or supplement of journal in which the article is
  /// published.
  ///
  /// [issueElement] _(_issue) Extensions for issue
  ///
  /// [dateOfPublication] Defining the date on which the issue of the journal was
  /// published.
  const factory CitationPeriodicRelease({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? citedMedium,
    String? volume,
    @JsonKey(name: '_volume') PrimitiveElement? volumeElement,
    String? issue,
    @JsonKey(name: '_issue') PrimitiveElement? issueElement,
    CitationDateOfPublication? dateOfPublication,
  }) = _CitationPeriodicRelease;

  @override
  String get fhirType => 'CitationPeriodicRelease';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationPeriodicRelease.fromYaml(dynamic yaml) => yaml is String
      ? CitationPeriodicRelease.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationPeriodicRelease.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationPeriodicRelease cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationPeriodicRelease.fromJson(Map<String, dynamic> json) =>
      _$CitationPeriodicReleaseFromJson(json);

  /// Acts like a constructor, returns a [CitationPeriodicRelease], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationPeriodicRelease.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationPeriodicReleaseFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationDateOfPublication] The Citation Resource enables reference to
@freezed

/// [CitationDateOfPublication] The Citation Resource enables reference to
@freezed
class CitationDateOfPublication extends BackboneElement
    with _$CitationDateOfPublication {
  /// [CitationDateOfPublication] The Citation Resource enables reference to
  CitationDateOfPublication._();

  /// [CitationDateOfPublication] The Citation Resource enables reference to
  /// any knowledge artifact for purposes of identification and attribution. The
  /// Citation Resource supports existing reference structures and developing
  /// publication practices such as versioning, expressing complex contributorship
  /// roles, and referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [date] Date on which the issue of the journal was published.
  ///
  /// [dateElement] _(_date) Extensions for date
  ///
  /// [year] Year on which the issue of the journal was published.
  ///
  /// [yearElement] _(_year) Extensions for year
  ///
  /// [month] Month on which the issue of the journal was published.
  ///
  /// [monthElement] _(_month) Extensions for month
  ///
  /// [day] Day on which the issue of the journal was published.
  ///
  /// [dayElement] _(_day) Extensions for day
  ///
  /// [season] Spring, Summer, Fall/Autumn, Winter.
  ///
  /// [seasonElement] _(_season) Extensions for season
  ///
  /// [text] Text representation of the date of which the issue of the journal
  /// was published.
  ///
  /// [textElement] _(_text) Extensions for text
  const factory CitationDateOfPublication({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? date,
    @JsonKey(name: '_date') PrimitiveElement? dateElement,
    String? year,
    @JsonKey(name: '_year') PrimitiveElement? yearElement,
    String? month,
    @JsonKey(name: '_month') PrimitiveElement? monthElement,
    String? day,
    @JsonKey(name: '_day') PrimitiveElement? dayElement,
    String? season,
    @JsonKey(name: '_season') PrimitiveElement? seasonElement,
    String? text,
    @JsonKey(name: '_text') PrimitiveElement? textElement,
  }) = _CitationDateOfPublication;

  @override
  String get fhirType => 'CitationDateOfPublication';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationDateOfPublication.fromYaml(dynamic yaml) => yaml is String
      ? CitationDateOfPublication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationDateOfPublication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationDateOfPublication cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationDateOfPublication.fromJson(Map<String, dynamic> json) =>
      _$CitationDateOfPublicationFromJson(json);

  /// Acts like a constructor, returns a [CitationDateOfPublication], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationDateOfPublication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationDateOfPublicationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationWebLocation] The Citation Resource enables reference to any
@freezed

/// [CitationWebLocation] The Citation Resource enables reference to any
@freezed
class CitationWebLocation extends BackboneElement with _$CitationWebLocation {
  /// [CitationWebLocation] The Citation Resource enables reference to any
  CitationWebLocation._();

  /// [CitationWebLocation] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [type] Code the reason for different URLs, e.g. abstract and full-text.
  ///
  /// [url] The specific URL.
  ///
  /// [urlElement] _(_url) Extensions for url
  const factory CitationWebLocation({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirUri? url,
    @JsonKey(name: '_url') PrimitiveElement? urlElement,
  }) = _CitationWebLocation;

  @override
  String get fhirType => 'CitationWebLocation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationWebLocation.fromYaml(dynamic yaml) => yaml is String
      ? CitationWebLocation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationWebLocation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationWebLocation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationWebLocation.fromJson(Map<String, dynamic> json) =>
      _$CitationWebLocationFromJson(json);

  /// Acts like a constructor, returns a [CitationWebLocation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationWebLocation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationWebLocationFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationClassification1] The Citation Resource enables reference to any
@freezed

/// [CitationClassification1] The Citation Resource enables reference to any
@freezed
class CitationClassification1 extends BackboneElement
    with _$CitationClassification1 {
  /// [CitationClassification1] The Citation Resource enables reference to any
  CitationClassification1._();

  /// [CitationClassification1] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [type] The kind of classifier (e.g. publication type, keyword).
  ///
  /// [classifier] The specific classification value.
  ///
  /// [whoClassified] Provenance and copyright of classification.
  const factory CitationClassification1({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    List<CodeableConcept>? classifier,
    CitationWhoClassified? whoClassified,
    List<Reference>? artifactAssessment,
  }) = _CitationClassification1;

  @override
  String get fhirType => 'CitationClassification1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationClassification1.fromYaml(dynamic yaml) => yaml is String
      ? CitationClassification1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationClassification1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationClassification1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationClassification1.fromJson(Map<String, dynamic> json) =>
      _$CitationClassification1FromJson(json);

  /// Acts like a constructor, returns a [CitationClassification1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationClassification1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationClassification1FromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationWhoClassified] The Citation Resource enables reference to any
@freezed

/// [CitationWhoClassified] The Citation Resource enables reference to any
@freezed
class CitationWhoClassified extends BackboneElement
    with _$CitationWhoClassified {
  /// [CitationWhoClassified] The Citation Resource enables reference to any
  CitationWhoClassified._();

  /// [CitationWhoClassified] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [person] Person who created the classification.
  ///
  /// [organization] Organization who created the classification.
  ///
  /// [publisher] The publisher of the classification, not the publisher of the
  /// article or artifact being cited.
  ///
  /// [classifierCopyright] Rights management statement for the classification.
  ///
  /// [classifierCopyrightElement] _(_classifierCopyright) Extensions for
  /// classifierCopyright
  ///
  /// [freeToShare] Acceptable to re-use the classification.
  ///
  /// [freeToShareElement] _(_freeToShare) Extensions for freeToShare
  const factory CitationWhoClassified({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? person,
    Reference? organization,
    Reference? publisher,
    String? classifierCopyright,
    @JsonKey(name: '_classifierCopyright')
    PrimitiveElement? classifierCopyrightElement,
    FhirBoolean? freeToShare,
    @JsonKey(name: '_freeToShare') PrimitiveElement? freeToShareElement,
  }) = _CitationWhoClassified;

  @override
  String get fhirType => 'CitationWhoClassified';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationWhoClassified.fromYaml(dynamic yaml) => yaml is String
      ? CitationWhoClassified.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationWhoClassified.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationWhoClassified cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationWhoClassified.fromJson(Map<String, dynamic> json) =>
      _$CitationWhoClassifiedFromJson(json);

  /// Acts like a constructor, returns a [CitationWhoClassified], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationWhoClassified.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationWhoClassifiedFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationContributorship] The Citation Resource enables reference to any
@freezed

/// [CitationContributorship] The Citation Resource enables reference to any
@freezed
class CitationContributorship extends BackboneElement
    with _$CitationContributorship {
  /// [CitationContributorship] The Citation Resource enables reference to any
  CitationContributorship._();

  /// [CitationContributorship] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [complete] Indicates if the list includes all authors and/or contributors.
  ///
  /// [completeElement] _(_complete) Extensions for complete
  ///
  /// [entry] An individual entity named in the author list or contributor list.
  ///
  /// [summary] Used to record a display of the author/contributor list without
  /// separate coding for each list member.
  const factory CitationContributorship({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? complete,
    @JsonKey(name: '_complete') PrimitiveElement? completeElement,
    List<CitationEntry>? entry,
    List<CitationSummary1>? summary,
  }) = _CitationContributorship;

  @override
  String get fhirType => 'CitationContributorship';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationContributorship.fromYaml(dynamic yaml) => yaml is String
      ? CitationContributorship.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationContributorship.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationContributorship cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationContributorship.fromJson(Map<String, dynamic> json) =>
      _$CitationContributorshipFromJson(json);

  /// Acts like a constructor, returns a [CitationContributorship], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationContributorship.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationContributorshipFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationEntry] The Citation Resource enables reference to any knowledge
@freezed

/// [CitationEntry] The Citation Resource enables reference to any knowledge
@freezed
class CitationEntry extends BackboneElement with _$CitationEntry {
  /// [CitationEntry] The Citation Resource enables reference to any knowledge
  CitationEntry._();

  /// [CitationEntry] The Citation Resource enables reference to any knowledge
  /// artifact for purposes of identification and attribution. The Citation Resource
  /// supports existing reference structures and developing publication practices
  /// such as versioning, expressing complex contributorship roles, and referencing
  /// computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [name] A name associated with the individual.
  ///
  /// [initials] Initials for forename.
  ///
  /// [initialsElement] _(_initials) Extensions for initials
  ///
  /// [collectiveName] Used for collective or corporate name as an author.
  ///
  /// [collectiveNameElement] _(_collectiveName) Extensions for collectiveName
  ///
  /// [identifier] Unique person identifier.
  ///
  /// [affiliationInfo] Organization affiliated with the entity.
  ///
  /// [address] Physical mailing address for the author or contributor.
  ///
  /// [telecom] Email or telephone contact methods for the author or contributor.
  ///
  /// [contributionType] This element identifies the specific nature of an
  /// individual’s contribution with respect to the cited work.
  ///
  /// [role] The role of the contributor (e.g. author, editor, reviewer).
  ///
  /// [contributionInstance] Contributions with accounting for time or number.
  ///
  /// [correspondingContact] Indication of which contributor is the corresponding
  /// contributor for the role.
  ///
  /// [correspondingContactElement] _(_correspondingContact) Extensions for
  /// correspondingContact
  ///
  /// [listOrder] Used to code order of authors.
  ///
  /// [listOrderElement] _(_listOrder) Extensions for listOrder
  const factory CitationEntry({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    HumanName? name,
    String? initials,
    @JsonKey(name: '_initials') PrimitiveElement? initialsElement,
    String? collectiveName,
    @JsonKey(name: '_collectiveName') PrimitiveElement? collectiveNameElement,
    List<Identifier>? identifier,
    List<CitationAffiliationInfo>? affiliationInfo,
    List<Address>? address,
    List<ContactPoint>? telecom,
    List<CodeableConcept>? contributionType,
    CodeableConcept? role,
    List<CitationContributionInstance>? contributionInstance,
    FhirBoolean? correspondingContact,
    @JsonKey(name: '_correspondingContact')
    PrimitiveElement? correspondingContactElement,
    FhirPositiveInt? listOrder,
    @JsonKey(name: '_listOrder') PrimitiveElement? listOrderElement,
  }) = _CitationEntry;

  @override
  String get fhirType => 'CitationEntry';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationEntry.fromYaml(dynamic yaml) => yaml is String
      ? CitationEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationEntry cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationEntry.fromJson(Map<String, dynamic> json) =>
      _$CitationEntryFromJson(json);

  /// Acts like a constructor, returns a [CitationEntry], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationEntryFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());

  CitationEntry updateHumanNameUse(HumanNameUse use) =>
      copyWith(name: name == null ? HumanName(use: use) : name!.updateUse(use));

  CitationEntry updateHumanNameText(String text) => copyWith(
      name: name == null ? HumanName(text: text) : name!.updateText(text));

  CitationEntry updateHumanNameFamily(String family) => copyWith(
      name: name == null
          ? HumanName(family: family)
          : name!.updateFamily(family));

  CitationEntry updateHumanNameGiven(List<String> given) => copyWith(
      name: name == null ? HumanName(given: given) : name!.updateGiven(given));

  CitationEntry updateHumanNamePrefix(List<String> prefix) => copyWith(
      name: name == null
          ? HumanName(prefix: prefix)
          : name!.updatePrefix(prefix));

  CitationEntry updateHumanNameSuffix(List<String> suffix) => copyWith(
      name: name == null
          ? HumanName(suffix: suffix)
          : name!.updateSuffix(suffix));

  CitationEntry updateHumanNamePeriod(Period period) => copyWith(
      name: name == null
          ? HumanName(period: period)
          : name!.updatePeriod(period));

  CitationEntry updateAddressUse(AddressUse use, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(use: use)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(use: use)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(use: use),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateAddressType(AddressType type, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(type: type)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(type: type)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(type: type),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateAddressText(String text, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(text: text)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(text: text)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(text: text),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateAddressLine(List<String> line, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(line: line)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(line: line)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(line: line),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateAddressCity(String city, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(city: city)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(city: city)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(city: city),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateAddressDistrict(String district, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(district: district)]);
    } else if (index >= address!.length) {
      return copyWith(
          address: <Address>[...address!, Address(district: district)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(district: district),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateAddressState(String state, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(state: state)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(state: state)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(state: state),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateAddressPostalCode(String postalCode, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(postalCode: postalCode)]);
    } else if (index >= address!.length) {
      return copyWith(
          address: <Address>[...address!, Address(postalCode: postalCode)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(postalCode: postalCode),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateAddressCountry(String country, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(country: country)]);
    } else if (index >= address!.length) {
      return copyWith(
          address: <Address>[...address!, Address(country: country)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(country: country),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateAddressPeriod(Period period, [int index = 0]) {
    if (address == null || address!.isEmpty) {
      return copyWith(address: <Address>[Address(period: period)]);
    } else if (index >= address!.length) {
      return copyWith(address: <Address>[...address!, Address(period: period)]);
    } else {
      return copyWith(address: <Address>[
        ...address!.sublist(0, index),
        address![index].copyWith(period: period),
        ...address!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateContactPointSystem(ContactPointSystem system,
      [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(system: system)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(system: system)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(system: system),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateContactPointValue(String value, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(value: value)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(value: value)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(value: value),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateContactPointUse(ContactPointUse use, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(use: use)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(use: use)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(use: use),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateContactPointRank(FhirPositiveInt rank, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(rank: rank)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(rank: rank)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(rank: rank),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }

  CitationEntry updateContactPointPeriod(Period period, [int index = 0]) {
    if (telecom == null || telecom!.isEmpty) {
      return copyWith(telecom: <ContactPoint>[ContactPoint(period: period)]);
    } else if (index >= telecom!.length) {
      return copyWith(
          telecom: <ContactPoint>[...telecom!, ContactPoint(period: period)]);
    } else {
      return copyWith(telecom: <ContactPoint>[
        ...telecom!.sublist(0, index),
        telecom![index].copyWith(period: period),
        ...telecom!.sublist(index + 1)
      ]);
    }
  }
}

/// [CitationAffiliationInfo] The Citation Resource enables reference to any
@freezed

/// [CitationAffiliationInfo] The Citation Resource enables reference to any
@freezed
class CitationAffiliationInfo extends BackboneElement
    with _$CitationAffiliationInfo {
  /// [CitationAffiliationInfo] The Citation Resource enables reference to any
  CitationAffiliationInfo._();

  /// [CitationAffiliationInfo] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [affiliation] Display for the organization.
  ///
  /// [affiliationElement] _(_affiliation) Extensions for affiliation
  ///
  /// [role] Role within the organization, such as professional title.
  ///
  /// [roleElement] _(_role) Extensions for role
  ///
  /// [identifier] Identifier for the organization.
  const factory CitationAffiliationInfo({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? affiliation,
    @JsonKey(name: '_affiliation') PrimitiveElement? affiliationElement,
    String? role,
    @JsonKey(name: '_role') PrimitiveElement? roleElement,
    List<Identifier>? identifier,
  }) = _CitationAffiliationInfo;

  @override
  String get fhirType => 'CitationAffiliationInfo';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationAffiliationInfo.fromYaml(dynamic yaml) => yaml is String
      ? CitationAffiliationInfo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationAffiliationInfo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationAffiliationInfo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationAffiliationInfo.fromJson(Map<String, dynamic> json) =>
      _$CitationAffiliationInfoFromJson(json);

  /// Acts like a constructor, returns a [CitationAffiliationInfo], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationAffiliationInfo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationAffiliationInfoFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationContributionInstance] The Citation Resource enables reference to
@freezed

/// [CitationContributionInstance] The Citation Resource enables reference to
@freezed
class CitationContributionInstance extends BackboneElement
    with _$CitationContributionInstance {
  /// [CitationContributionInstance] The Citation Resource enables reference to
  CitationContributionInstance._();

  /// [CitationContributionInstance] The Citation Resource enables reference to
  /// any knowledge artifact for purposes of identification and attribution. The
  /// Citation Resource supports existing reference structures and developing
  /// publication practices such as versioning, expressing complex contributorship
  /// roles, and referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [type] The specific contribution.
  ///
  /// [time] The time that the contribution was made.
  ///
  /// [timeElement] _(_time) Extensions for time
  const factory CitationContributionInstance({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required CodeableConcept type,
    FhirDateTime? time,
    @JsonKey(name: '_time') PrimitiveElement? timeElement,
  }) = _CitationContributionInstance;

  @override
  String get fhirType => 'CitationContributionInstance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationContributionInstance.fromYaml(dynamic yaml) => yaml is String
      ? CitationContributionInstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationContributionInstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationContributionInstance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationContributionInstance.fromJson(Map<String, dynamic> json) =>
      _$CitationContributionInstanceFromJson(json);

  /// Acts like a constructor, returns a [CitationContributionInstance], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationContributionInstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationContributionInstanceFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [CitationSummary1] The Citation Resource enables reference to any
@freezed

/// [CitationSummary1] The Citation Resource enables reference to any
@freezed
class CitationSummary1 extends BackboneElement with _$CitationSummary1 {
  /// [CitationSummary1] The Citation Resource enables reference to any
  CitationSummary1._();

  /// [CitationSummary1] The Citation Resource enables reference to any
  /// knowledge artifact for purposes of identification and attribution. The Citation
  /// Resource supports existing reference structures and developing publication
  /// practices such as versioning, expressing complex contributorship roles, and
  /// referencing computable resources.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions safe
  /// and manageable, there is a strict set of governance  applied to the definition
  /// and use of extensions. Though any implementer can define an extension, there is
  /// a set of requirements that SHALL be met as part of the definition of the
  /// extension.
  ///
  /// [modifierExtension] May be used to represent additional information that is
  /// not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the understanding
  /// of the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and manageable,
  /// there is a strict set of governance applied to the definition and use of
  /// extensions. Though any implementer can define an extension, there is a set of
  /// requirements that SHALL be met as part of the definition of the extension.
  /// Applications processing a resource are required to check for modifier
  /// extensions.Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [type] Used most commonly to express an author list or a contributorship
  /// statement.
  ///
  /// [style] The format for the display string.
  ///
  /// [source] Used to code the producer or rule for creating the display string.
  ///
  /// [value] The display string for the author list, contributor list, or
  /// contributorship statement.
  ///
  /// [valueElement] _(_value) Extensions for value
  const factory CitationSummary1({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? style,
    CodeableConcept? source,
    FhirMarkdown? value,
    @JsonKey(name: '_value') PrimitiveElement? valueElement,
  }) = _CitationSummary1;

  @override
  String get fhirType => 'CitationSummary1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CitationSummary1.fromYaml(dynamic yaml) => yaml is String
      ? CitationSummary1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CitationSummary1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CitationSummary1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CitationSummary1.fromJson(Map<String, dynamic> json) =>
      _$CitationSummary1FromJson(json);

  /// Acts like a constructor, returns a [CitationSummary1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CitationSummary1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CitationSummary1FromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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
