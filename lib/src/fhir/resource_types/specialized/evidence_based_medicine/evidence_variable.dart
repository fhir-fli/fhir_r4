// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'evidence_variable.freezed.dart';
part 'evidence_variable.g.dart';

/// [EvidenceVariable] The EvidenceVariable resource describes a "PICO"
@freezed
class EvidenceVariable with _$EvidenceVariable implements DomainResource {
  /// [EvidenceVariable] The EvidenceVariable resource describes a "PICO"
  const EvidenceVariable._();

  /// [EvidenceVariable] The EvidenceVariable resource describes a "PICO"
  ///  element that knowledge (evidence, assertion, recommendation) is about.
  ///
  /// [resourceType] This is a EvidenceVariable resource
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
  /// [url] An absolute URI that is used to identify this evidence variable
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this evidence variable is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  evidence variable is stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this evidence
  /// variable when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// evidence variable when it is referenced in a specification, model, design
  /// or instance. This is an arbitrary value managed by the evidence variable
  /// author and is not expected to be globally unique. For example, it might be
  /// a timestamp (e.g. yyyymmdd) if a managed version is not available. There
  /// is also no expectation that versions can be placed in a lexicographical
  /// sequence. To provide a version consistent with the Decision Support
  /// Service specification, use the format Major.Minor.Revision (e.g. 1.0.0).
  /// For more information on versioning knowledge assets, refer to the Decision
  /// Support Service specification. Note that a version is required for
  ///  non-experimental active artifacts.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the evidence variable. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the evidence
  ///  variable.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [shortTitle] The short title provides an alternate title for use in
  /// informal descriptive contexts where the full, formal title is not
  ///  necessary.
  ///
  /// [shortTitleElement] Extensions for shortTitle
  ///
  /// [subtitle] An explanatory or alternate title for the EvidenceVariable
  ///  giving additional information about its content.
  ///
  /// [subtitleElement] Extensions for subtitle
  ///
  /// [status] The status of this evidence variable. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [date] The date  (and optionally time) when the evidence variable was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the evidence variable changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  evidence variable.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the evidence
  ///  variable from a consumer's perspective.
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
  ///  and searching for appropriate evidence variable instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the evidence
  ///  variable is intended to be used.
  ///
  /// [copyright] A copyright statement relating to the evidence variable
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the evidence variable.
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
  /// [effectivePeriod] The period during which the evidence variable content
  ///  was or is planned to be in active use.
  ///
  /// [topic] Descriptive topics related to the content of the
  /// EvidenceVariable. Topics provide a high-level categorization grouping
  /// types of EvidenceVariables that can be useful for filtering and
  ///  searching.
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
  /// [type] The type of evidence element, a population, an exposure, or an
  ///  outcome.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [characteristic] A characteristic that defines the members of the
  /// evidence element. Multiple characteristics are applied with "and"
  ///  semantics.
  const factory EvidenceVariable({
    @Default(R4ResourceType.EvidenceVariable)
    @JsonKey(unknownEnumValue: R4ResourceType.EvidenceVariable)
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
    String? name,
    @JsonKey(name: '_name') PrimitiveElement? nameElement,
    String? title,
    @JsonKey(name: '_title') PrimitiveElement? titleElement,
    String? shortTitle,
    @JsonKey(name: '_shortTitle') PrimitiveElement? shortTitleElement,
    String? subtitle,
    @JsonKey(name: '_subtitle') PrimitiveElement? subtitleElement,
    FhirCode? status,
    @JsonKey(name: '_status') PrimitiveElement? statusElement,
    FhirDateTime? date,
    @JsonKey(name: '_date') PrimitiveElement? dateElement,
    FhirMarkdown? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    List<Annotation>? note,
    List<UsageContext>? useContext,
    String? publisher,
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<RelatedArtifact>? relatedArtifact,
    FhirBoolean? actual,
    @JsonKey(name: '_actual') PrimitiveElement? actualElement,
    FhirCode? characteristicCombination,
    @JsonKey(name: '_characteristicCombination')
    PrimitiveElement? characteristicCombinationElement,
    required List<EvidenceVariableCharacteristic> characteristic,
    FhirCode? handling,
    @JsonKey(name: '_handling') PrimitiveElement? handlingElement,
    List<EvidenceVariableCategory>? category,
  }) = _EvidenceVariable;

  @override
  String get fhirType => 'EvidenceVariable';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceVariable.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariable.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceVariable.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceVariable cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariable.fromJson(Map<String, dynamic> json) =>
      _$EvidenceVariableFromJson(json);

  /// Acts like a constructor, returns a [EvidenceVariable], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceVariable.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceVariableFromJson(json);
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
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta));
}

/// [EvidenceVariableCharacteristic] The EvidenceVariable resource describes
@freezed

/// [EvidenceVariableCharacteristic] The EvidenceVariable resource describes
@freezed
class EvidenceVariableCharacteristic
    with _$EvidenceVariableCharacteristic
    implements BackboneElement {
  /// [EvidenceVariableCharacteristic] The EvidenceVariable resource describes
  const EvidenceVariableCharacteristic._();

  /// [EvidenceVariableCharacteristic] The EvidenceVariable resource describes
  /// a "PICO" element that knowledge (evidence, assertion, recommendation) is
  ///  about.
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
  /// [description] A short, natural language description of the characteristic
  ///  that could be used to communicate the criteria to an end-user.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [definitionReference] Define members of the evidence element using Codes
  /// (such as condition, medication, or observation), Expressions ( using an
  /// expression language such as FHIRPath or CQL) or DataRequirements (such as
  ///  Diabetes diagnosis onset in the last year).
  ///
  /// [definitionCanonical] Define members of the evidence element using Codes
  /// (such as condition, medication, or observation), Expressions ( using an
  /// expression language such as FHIRPath or CQL) or DataRequirements (such as
  ///  Diabetes diagnosis onset in the last year).
  ///
  /// [definitionCanonicalElement] Extensions for definitionCanonical
  ///
  /// [definitionCodeableConcept] Define members of the evidence element using
  /// Codes (such as condition, medication, or observation), Expressions ( using
  /// an expression language such as FHIRPath or CQL) or DataRequirements (such
  ///  as Diabetes diagnosis onset in the last year).
  ///
  /// [definitionExpression] Define members of the evidence element using Codes
  /// (such as condition, medication, or observation), Expressions ( using an
  /// expression language such as FHIRPath or CQL) or DataRequirements (such as
  ///  Diabetes diagnosis onset in the last year).
  ///
  /// [definitionDataRequirement] Define members of the evidence element using
  /// Codes (such as condition, medication, or observation), Expressions ( using
  /// an expression language such as FHIRPath or CQL) or DataRequirements (such
  ///  as Diabetes diagnosis onset in the last year).
  ///
  /// [definitionTriggerDefinition] Define members of the evidence element
  /// using Codes (such as condition, medication, or observation), Expressions (
  /// using an expression language such as FHIRPath or CQL) or DataRequirements
  ///  (such as Diabetes diagnosis onset in the last year).
  ///
  /// [usageContext] Use UsageContext to define the members of the population,
  ///  such as Age Ranges, Genders, Settings.
  ///
  /// [exclude] When true, members with this characteristic are excluded from
  ///  the element.
  ///
  /// [excludeElement] Extensions for exclude
  ///
  /// [participantEffectiveDateTime] Indicates what effective period the study
  ///  covers.
  ///
  /// [participantEffectiveDateTimeElement] Extensions for
  ///  participantEffectiveDateTime
  ///
  /// [participantEffectivePeriod] Indicates what effective period the study
  ///  covers.
  ///
  /// [participantEffectiveDuration] Indicates what effective period the study
  ///  covers.
  ///
  /// [participantEffectiveTiming] Indicates what effective period the study
  ///  covers.
  ///
  /// [timeFromStart] Indicates duration from the participant's study entry.
  ///
  /// [groupMeasure] Indicates how elements are aggregated within the study
  ///  effective period.
  ///
  /// [groupMeasureElement] Extensions for groupMeasure
  const factory EvidenceVariableCharacteristic({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    Reference? definitionReference,
    FhirCanonical? definitionCanonical,
    @JsonKey(name: '_definitionCanonical')
    PrimitiveElement? definitionCanonicalElement,
    CodeableConcept? definitionCodeableConcept,
    FhirExpression? definitionExpression,
    FhirBoolean? exclude,
    @JsonKey(name: '_exclude') PrimitiveElement? excludeElement,
    EvidenceVariableTimeFromStart? timeFromStart,
    FhirCode? groupMeasure,
    @JsonKey(name: '_groupMeasure') PrimitiveElement? groupMeasureElement,
  }) = _EvidenceVariableCharacteristic;

  @override
  String get fhirType => 'EvidenceVariableCharacteristic';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceVariableCharacteristic.fromYaml(dynamic yaml) => yaml
          is String
      ? EvidenceVariableCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceVariableCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceVariableCharacteristic cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$EvidenceVariableCharacteristicFromJson(json);

  /// Acts like a constructor, returns a [EvidenceVariableCharacteristic], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceVariableCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceVariableCharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [EvidenceVariableTimeFromStart] The EvidenceVariable resource describes
@freezed

/// [EvidenceVariableTimeFromStart] The EvidenceVariable resource describes
@freezed
class EvidenceVariableTimeFromStart
    with _$EvidenceVariableTimeFromStart
    implements BackboneElement {
  /// [EvidenceVariableTimeFromStart] The EvidenceVariable resource describes
  const EvidenceVariableTimeFromStart._();

  /// [EvidenceVariableTimeFromStart] The EvidenceVariable resource describes
  /// an element that knowledge (Evidence) is about.
  ///
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
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
  /// required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  /// modifierExtension itself).
  ///
  /// [description] Human readable description.
  ///
  /// [descriptionElement] (_description): Extensions for description
  ///
  /// [quantity] Used to express the observation at a defined amount of time after the study start.;
  ///
  /// [range] Used to express the observation within a period after the study start.;
  ///
  /// [note] A human-readable string to clarify or explain concepts about the timeFromEvent.;
  ///
  const factory EvidenceVariableTimeFromStart({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    Quantity? quantity,
    Range? range,
    List<Annotation>? note,
  }) = _EvidenceVariableTimeFromStart;

  @override
  String get fhirType => 'EvidenceVariableTimeFromStart';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceVariableTimeFromStart.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariableTimeFromStart.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceVariableTimeFromStart.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceVariableTimeFromStart cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableTimeFromStart.fromJson(Map<String, dynamic> json) =>
      _$EvidenceVariableTimeFromStartFromJson(json);

  /// Acts like a constructor, returns a [EvidenceVariableTimeFromStart], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceVariableTimeFromStart.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceVariableTimeFromStartFromJson(json);
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

/// [EvidenceVariableCategory] The EvidenceVariable resource describes an element that knowledge (Evidence) is about.
@freezed

/// [EvidenceVariableCategory] The EvidenceVariable resource describes an element that knowledge (Evidence) is about.
@freezed
class EvidenceVariableCategory
    with _$EvidenceVariableCategory
    implements BackboneElement {
  /// [EvidenceVariableCategory] The EvidenceVariable resource describes an element that knowledge (Evidence) is about.
  const EvidenceVariableCategory._();

  /// [EvidenceVariableCategory] The EvidenceVariable resource describes an element that knowledge (Evidence) is about.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [name] Description of the grouping.;
  ///
  /// [nameElement] (_name): Extensions for name;
  ///
  /// [valueCodeableConcept] Definition of the grouping.;
  ///
  /// [valueQuantity] Definition of the grouping.;
  ///
  /// [valueRange] Definition of the grouping.;
  const factory EvidenceVariableCategory({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? name,
    @JsonKey(name: '_name') PrimitiveElement? nameElement,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    Range? valueRange,
  }) = _EvidenceVariableCategory;

  @override
  String get fhirType => 'EvidenceVariableCategory';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceVariableCategory.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceVariableCategory.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceVariableCategory.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceVariableCategory cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceVariableCategory.fromJson(Map<String, dynamic> json) =>
      _$EvidenceVariableCategoryFromJson(json);

  /// Acts like a constructor, returns a [EvidenceVariableCategory], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceVariableCategory.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceVariableCategoryFromJson(json);
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
