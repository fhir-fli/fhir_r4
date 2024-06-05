// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'evidence_report.freezed.dart';
part 'evidence_report.g.dart';

/// [EvidenceReport] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
@freezed
class EvidenceReport with _$EvidenceReport implements DomainResource {
  /// [EvidenceReport] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
  const EvidenceReport._();

  /// [EvidenceReport] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.

  ///
  /// [resourceType] This is a EvidenceReport resource;
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  ///
  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  ///
  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  ///
  /// [language] The base language in which the resource is written.;
  ///
  /// [languageElement] (_language): Extensions for language;
  ///
  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  ///
  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [url] An absolute URI that is used to identify this EvidenceReport when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which at which an authoritative instance of this summary is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the summary is stored on different servers.;
  ///
  /// [urlElement] (_url): Extensions for url;
  ///
  /// [identifier] A formal identifier that is used to identify this EvidenceReport when it is represented in other formats, or referenced in a specification, model, design or an instance.;
  ///
  /// [version] The identifier that is used to identify this version of the {{title}} when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the {{title}} author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence.;
  ///
  /// [versionElement] (_version): Extensions for version;
  ///
  /// [name] A natural language name identifying the {{title}}. This name should be usable as an identifier for the module by machine processing applications such as code generation.;
  ///
  /// [nameElement] (_name): Extensions for name;
  ///
  /// [title] A short, descriptive, user-friendly title for the {{title}}.;
  ///
  /// [titleElement] (_title): Extensions for title;
  ///
  /// [status] The status of this summary. Enables tracking the life-cycle of the content.;
  ///
  /// [statusElement] (_status): Extensions for status;
  ///
  /// [experimental] A Boolean value to indicate that this {{title}} is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage.;
  ///
  /// [experimentalElement] (_experimental): Extensions for experimental;
  ///
  /// [date] The date  (and optionally time) when the {{title}} was published. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the {{title}} changes.;
  ///
  /// [dateElement] (_date): Extensions for date;
  ///
  /// [publisher] The name of the organization or individual that published the evidence report.;
  ///
  /// [publisherElement] (_publisher): Extensions for publisher;
  ///
  /// [contact] Contact details to assist a user in finding and communicating with the publisher.;
  ///
  /// [description] A free text natural language description of the {{title}} from a consumer's perspective.;
  ///
  /// [descriptionElement] (_description): Extensions for description;
  ///
  /// [useContext] The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate evidence report instances.;
  ///
  /// [jurisdiction] A legal or geographic region in which the {{title}} is intended to be used.;
  ///
  /// [purpose] Explanation of why this {{title}} is needed and why it has been designed as it has.;
  ///
  /// [purposeElement] (_purpose): Extensions for purpose;
  ///
  /// [copyright] A copyright statement relating to the {{title}} and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the {{title}}.;
  ///
  /// [copyrightElement] (_copyright): Extensions for copyright;
  ///
  /// [approvalDate] The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage.;
  ///
  /// [approvalDateElement] (_approvalDate): Extensions for approvalDate;
  ///
  /// [lastReviewDate] The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date.;
  ///
  /// [lastReviewDateElement] (_lastReviewDate): Extensions for lastReviewDate;
  ///
  /// [effectivePeriod] The period during which the {{title}} content was or is planned to be in active use.;
  ///
  /// [topic] Descriptive topics related to the content of the {{title}}. Topics provide a high-level categorization of the {{title}} that can be useful for filtering and searching.;
  ///
  /// [author] An individiual, organization, or device primarily involved in the creation and maintenance of the content.;
  ///
  /// [editor] An individiual, organization, or device primarily responsible for internal coherence of the content.;
  ///
  /// [reviewer] An individiual, organization, or device primarily responsible for review of some aspect of the content.;
  ///
  /// [endorser] An individiual, organization, or device responsible for officially endorsing the content for use in some setting.;
  ///
  /// [relatedArtifact] Link, description or reference to artifact associated with the report.;
  ///
  /// [relatedIdentifier] A formal identifier that is used to identify things closely related to this EvidenceReport.;
  ///
  /// [citeAsReference] Citation Resource or display of suggested citation for this report.;
  ///
  /// [citeAsMarkdown] Citation Resource or display of suggested citation for this report.;
  ///
  /// [citeAsMarkdownElement] (_citeAsMarkdown): Extensions for citeAsMarkdown;
  ///
  /// [type] Specifies the kind of report, such as grouping of classifiers, search results, or human-compiled expression.;
  ///
  /// [note] Used for footnotes and annotations.;
  ///
  /// [subject] Specifies the subject or focus of the report. Answers "What is this report about?".;
  ///
  /// [relatesTo] Relationships that this composition has with other compositions or documents that already exist.;
  ///
  /// [section] The root of the sections that make up the composition.;
  const factory EvidenceReport({
    @Default(R4ResourceType.EvidenceReport) R4ResourceType resourceType,
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
    FhirCode? status,
    @JsonKey(name: '_status') PrimitiveElement? statusElement,
    List<UsageContext>? useContext,
    List<Identifier>? identifier,
    List<Identifier>? relatedIdentifier,
    Reference? citeAsReference,
    FhirMarkdown? citeAsMarkdown,
    @JsonKey(name: '_citeAsMarkdown') PrimitiveElement? citeAsMarkdownElement,
    CodeableConcept? type,
    List<Annotation>? note,
    List<RelatedArtifact>? relatedArtifact,
    required EvidenceReportSubject subject,
    String? publisher,
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
    List<ContactDetail>? contact,
    List<ContactDetail>? author,
    List<ContactDetail>? editor,
    List<ContactDetail>? reviewer,
    List<ContactDetail>? endorser,
    List<EvidenceReportRelatesTo>? relatesTo,
    List<EvidenceReportSection>? section,
  }) = _EvidenceReport;

  @override
  String get fhirType => 'EvidenceReport';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceReport.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReport.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceReport.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceReport cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceReport.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReportFromJson(json);

  /// Acts like a constructor, returns a [EvidenceReport], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceReport.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceReportFromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json'
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

/// [EvidenceReportSubject] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
@freezed

/// [EvidenceReportSubject] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
@freezed
class EvidenceReportSubject
    with _$EvidenceReportSubject
    implements BackboneElement {
  /// [EvidenceReportSubject] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
  const EvidenceReportSubject._();

  /// [EvidenceReportSubject] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [characteristic] Characteristic.;
  ///
  /// [note] Used for general notes and annotations not coded elsewhere.;
  const factory EvidenceReportSubject({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<EvidenceReportCharacteristic>? characteristic,
    List<Annotation>? note,
  }) = _EvidenceReportSubject;

  @override
  String get fhirType => 'EvidenceReportSubject';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceReportSubject.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportSubject.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceReportSubject.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceReportSubject cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportSubject.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReportSubjectFromJson(json);

  /// Acts like a constructor, returns a [EvidenceReportSubject], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceReportSubject.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceReportSubjectFromJson(json);
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

/// [EvidenceReportCharacteristic] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
@freezed

/// [EvidenceReportCharacteristic] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
@freezed
class EvidenceReportCharacteristic
    with _$EvidenceReportCharacteristic
    implements BackboneElement {
  /// [EvidenceReportCharacteristic] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
  const EvidenceReportCharacteristic._();

  /// [EvidenceReportCharacteristic] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] Characteristic code.;
  ///
  /// [valueReference] Characteristic value.;
  ///
  /// [valueCodeableConcept] Characteristic value.;
  ///
  /// [valueBoolean] Characteristic value.;
  ///
  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  ///
  /// [valueQuantity] Characteristic value.;
  ///
  /// [valueRange] Characteristic value.;
  ///
  /// [exclude] Is used to express not the characteristic.;
  ///
  /// [excludeElement] (_exclude): Extensions for exclude;
  ///
  /// [period] Timeframe for the characteristic.;
  const factory EvidenceReportCharacteristic({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    required CodeableConcept code,
    Reference? valueReference,
    CodeableConcept? valueCodeableConcept,
    FhirBoolean? valueBoolean,
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
    Quantity? valueQuantity,
    Range? valueRange,
    FhirBoolean? exclude,
    @JsonKey(name: '_exclude') PrimitiveElement? excludeElement,
    Period? period,
  }) = _EvidenceReportCharacteristic;

  @override
  String get fhirType => 'EvidenceReportCharacteristic';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceReportCharacteristic.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportCharacteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceReportCharacteristic.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceReportCharacteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportCharacteristic.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReportCharacteristicFromJson(json);

  /// Acts like a constructor, returns a [EvidenceReportCharacteristic], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceReportCharacteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceReportCharacteristicFromJson(json);
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

/// [EvidenceReportRelatesTo] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
@freezed

/// [EvidenceReportRelatesTo] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
@freezed
class EvidenceReportRelatesTo
    with _$EvidenceReportRelatesTo
    implements BackboneElement {
  /// [EvidenceReportRelatesTo] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
  const EvidenceReportRelatesTo._();

  /// [EvidenceReportRelatesTo] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [code] The type of relationship that this composition has with anther composition or document.;
  ///
  /// [codeElement] (_code): Extensions for code;
  ///
  /// [target] The target composition/document of this relationship.;
  const factory EvidenceReportRelatesTo({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    @JsonKey(name: '_code') PrimitiveElement? codeElement,
    Identifier? targetIdentifier,
    Reference? targetReference,
  }) = _EvidenceReportRelatesTo;

  @override
  String get fhirType => 'EvidenceReportRelatesTo';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceReportRelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportRelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceReportRelatesTo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceReportRelatesTo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportRelatesTo.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReportRelatesToFromJson(json);

  /// Acts like a constructor, returns a [EvidenceReportRelatesTo], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceReportRelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceReportRelatesToFromJson(json);
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

/// [EvidenceReportSection] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
@freezed

/// [EvidenceReportSection] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
@freezed
class EvidenceReportSection
    with _$EvidenceReportSection
    implements BackboneElement {
  /// [EvidenceReportSection] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.
  const EvidenceReportSection._();

  /// [EvidenceReportSection] The EvidenceReport Resource is a specialized container for a collection of resources and codeable concepts, adapted to support compositions of Evidence, EvidenceVariable, and Citation resources and related concepts.

  ///
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  ///
  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  ///
  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.

  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  ///
  /// [title] The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents.;
  ///
  /// [titleElement] (_title): Extensions for title;
  ///
  /// [focus] A code identifying the kind of content contained within the section. This should be consistent with the section title.;
  ///
  /// [focusReference] A definitional Resource identifying the kind of content contained within the section. This should be consistent with the section title.;
  ///
  /// [author] Identifies who is responsible for the information in this section, not necessarily who typed it in.;
  ///
  /// [text] A human-readable narrative that contains the attested content of the section, used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is peferred to contain sufficient detail to make it acceptable for a human to just read the narrative.;
  ///
  /// [mode] How the entry list was prepared - whether it is a working list that is suitable for being maintained on an ongoing basis, or if it represents a snapshot of a list of items from another source, or whether it is a prepared list where items may be marked as added, modified or deleted.;
  ///
  /// [modeElement] (_mode): Extensions for mode;
  ///
  /// [orderedBy] Specifies the order applied to the items in the section entries.;
  ///
  /// [entryClassifier] Specifies any type of classification of the evidence report.;
  ///
  /// [entryReference] A reference to the actual resource from which the narrative in the section is derived.;
  ///
  /// [entryQuantity] Quantity as content.;
  ///
  /// [emptyReason] If the section is empty, why the list is empty. An empty section typically has some text explaining the empty reason.;
  ///
  /// [section] A nested sub-section within this section.;
  const factory EvidenceReportSection({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    String? title,
    @JsonKey(name: '_title') PrimitiveElement? titleElement,
    CodeableConcept? focus,
    Reference? focusReference,
    List<Reference>? author,
    Narrative? text,
    FhirCode? mode,
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,
    CodeableConcept? orderedBy,
    List<CodeableConcept>? entryClassifier,
    List<Reference>? entryReference,
    List<Quantity>? entryQuantity,
    CodeableConcept? emptyReason,
    List<EvidenceReportSection>? section,
  }) = _EvidenceReportSection;

  @override
  String get fhirType => 'EvidenceReportSection';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory EvidenceReportSection.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReportSection.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceReportSection.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceReportSection cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory EvidenceReportSection.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReportSectionFromJson(json);

  /// Acts like a constructor, returns a [EvidenceReportSection], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory EvidenceReportSection.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceReportSectionFromJson(json);
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
