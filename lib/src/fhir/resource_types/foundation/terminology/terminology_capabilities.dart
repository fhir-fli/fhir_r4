// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'terminology_capabilities.freezed.dart';
part 'terminology_capabilities.g.dart';

/// [TerminologyCapabilities] A TerminologyCapabilities resource documents a
@freezed
class TerminologyCapabilities extends DomainResource
    with _$TerminologyCapabilities {
  /// [TerminologyCapabilities] A TerminologyCapabilities resource documents a
  TerminologyCapabilities._();

  /// [TerminologyCapabilities] A TerminologyCapabilities resource documents a
  /// set of capabilities (behaviors) of a FHIR Terminology Server that may be
  /// used as a statement of actual server functionality or a statement of
  ///  required or desired server implementation.
  ///
  /// [resourceType] This is a TerminologyCapabilities resource
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
  /// [url] An absolute URI that is used to identify this terminology
  /// capabilities when it is referenced in a specification, model, design or an
  /// instance; also called its canonical identifier. This SHOULD be globally
  /// unique and SHOULD be a literal address at which at which an authoritative
  /// instance of this terminology capabilities is (or will be) published. This
  /// URL can be the target of a canonical reference. It SHALL remain the same
  ///  when the terminology capabilities is stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [version] The identifier that is used to identify this version of the
  /// terminology capabilities when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the terminology
  /// capabilities author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
  /// not available. There is also no expectation that versions can be placed in
  ///  a lexicographical sequence.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the terminology capabilities.
  /// This name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the terminology
  ///  capabilities.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [status] The status of this terminology capabilities. Enables tracking
  ///  the life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this terminology
  /// capabilities is authored for testing purposes (or
  /// education/evaluation/marketing) and is not intended to be used for genuine
  ///  usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the terminology capabilities
  /// was published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should change
  ///  when the substantive content of the terminology capabilities changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  terminology capabilities.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the terminology
  /// capabilities from a consumer's perspective. Typically, this is used when
  /// the capability statement describes a desired rather than an actual
  /// solution, for example as a formal expression of requirements as part of an
  ///  RFP.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate terminology capabilities instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the terminology
  ///  capabilities is intended to be used.
  ///
  /// [purpose] Explanation of why this terminology capabilities is needed and
  ///  why it has been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the terminology
  /// capabilities and/or its contents. Copyright statements are generally legal
  ///  restrictions on the use and publishing of the terminology capabilities.
  ///
  /// [copyrightElement] Extensions for copyright
  ///
  /// [kind] The way that this statement is intended to be used, to describe an
  /// actual running instance of software, a particular product (kind, not
  /// instance of software) or a class of implementation (e.g. a desired
  ///  purchase).
  ///
  /// [kindElement] Extensions for kind
  ///
  /// [software] Software that is covered by this terminology capability
  /// statement.  It is used when the statement describes the capabilities of a
  ///  particular software version, independent of an installation.
  ///
  /// [implementation] Identifies a specific implementation instance that is
  /// described by the terminology capability statement - i.e. a particular
  ///  installation, rather than the capabilities of a software program.
  ///
  /// [lockedDate] Whether the server supports lockedDate.
  ///
  /// [lockedDateElement] Extensions for lockedDate
  ///
  /// [codeSystem] Identifies a code system that is supported by the server. If
  /// there is a no code system URL, then this declares the general assumptions
  ///  a client can make about support for any CodeSystem resource.
  ///
  /// [expansion] Information about the
  ///  [ValueSet/$expand](valueset-operation-expand.html) operation.
  ///
  /// [codeSearch] The degree to which the server supports the code search
  ///  parameter on ValueSet, if it is supported.
  ///
  /// [codeSearchElement] Extensions for codeSearch
  ///
  /// [validateCode] Information about the
  factory TerminologyCapabilities({
    @Default(R4ResourceType.TerminologyCapabilities)
    @JsonKey(unknownEnumValue: R4ResourceType.TerminologyCapabilities)

    /// [resourceType] This is a TerminologyCapabilities resource
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

    /// [url] An absolute URI that is used to identify this terminology
    /// capabilities when it is referenced in a specification, model, design or an
    /// instance; also called its canonical identifier. This SHOULD be globally
    /// unique and SHOULD be a literal address at which at which an authoritative
    /// instance of this terminology capabilities is (or will be) published. This
    /// URL can be the target of a canonical reference. It SHALL remain the same
    ///  when the terminology capabilities is stored on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [version] The identifier that is used to identify this version of the
    /// terminology capabilities when it is referenced in a specification, model,
    /// design or instance. This is an arbitrary value managed by the terminology
    /// capabilities author and is not expected to be globally unique. For
    /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
    /// not available. There is also no expectation that versions can be placed in
    ///  a lexicographical sequence.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the terminology capabilities.
    /// This name should be usable as an identifier for the module by machine
    ///  processing applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the terminology
    ///  capabilities.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [status] The status of this terminology capabilities. Enables tracking
    ///  the life-cycle of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this terminology
    /// capabilities is authored for testing purposes (or
    /// education/evaluation/marketing) and is not intended to be used for genuine
    ///  usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] The date  (and optionally time) when the terminology capabilities
    /// was published. The date must change when the business version changes and
    /// it must change if the status code changes. In addition, it should change
    ///  when the substantive content of the terminology capabilities changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  terminology capabilities.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the terminology
    /// capabilities from a consumer's perspective. Typically, this is used when
    /// the capability statement describes a desired rather than an actual
    /// solution, for example as a formal expression of requirements as part of an
    ///  RFP.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate terminology capabilities instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the terminology
    ///  capabilities is intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this terminology capabilities is needed and
    ///  why it has been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [copyright] A copyright statement relating to the terminology
    /// capabilities and/or its contents. Copyright statements are generally legal
    ///  restrictions on the use and publishing of the terminology capabilities.
    FhirMarkdown? copyright,

    /// [copyrightElement] Extensions for copyright
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,

    /// [kind] The way that this statement is intended to be used, to describe an
    /// actual running instance of software, a particular product (kind, not
    /// instance of software) or a class of implementation (e.g. a desired
    ///  purchase).
    FhirCode? kind,

    /// [kindElement] Extensions for kind
    @JsonKey(name: '_kind') PrimitiveElement? kindElement,

    /// [software] Software that is covered by this terminology capability
    /// statement.  It is used when the statement describes the capabilities of a
    ///  particular software version, independent of an installation.
    TerminologyCapabilitiesSoftware? software,

    /// [implementation] Identifies a specific implementation instance that is
    /// described by the terminology capability statement - i.e. a particular
    ///  installation, rather than the capabilities of a software program.
    TerminologyCapabilitiesImplementation? implementation,

    /// [lockedDate] Whether the server supports lockedDate.
    FhirBoolean? lockedDate,

    /// [lockedDateElement] Extensions for lockedDate
    @JsonKey(name: '_lockedDate') PrimitiveElement? lockedDateElement,

    /// [codeSystem] Identifies a code system that is supported by the server. If
    /// there is a no code system URL, then this declares the general assumptions
    ///  a client can make about support for any CodeSystem resource.
    List<TerminologyCapabilitiesCodeSystem>? codeSystem,

    /// [expansion] Information about the
    ///  [ValueSet/$expand](valueset-operation-expand.html) operation.
    TerminologyCapabilitiesExpansion? expansion,

    /// [codeSearch] The degree to which the server supports the code search
    ///  parameter on ValueSet, if it is supported.
    FhirCode? codeSearch,

    /// [codeSearchElement] Extensions for codeSearch
    @JsonKey(name: '_codeSearch') PrimitiveElement? codeSearchElement,

    /// [validateCode] Information about the
    TerminologyCapabilitiesValidateCode? validateCode,
    TerminologyCapabilitiesTranslation? translation,
    TerminologyCapabilitiesClosure? closure,
  }) = _TerminologyCapabilities;

  @override
  String get fhirType => 'TerminologyCapabilities';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilities.fromYaml(dynamic yaml) => yaml is String
      ? TerminologyCapabilities.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilities.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilities cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilities.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesFromJson(json);

  /// Acts like a constructor, returns a [TerminologyCapabilities], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TerminologyCapabilities.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TerminologyCapabilitiesFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
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

/// [TerminologyCapabilitiesSoftware] A TerminologyCapabilities resource
@freezed

/// [TerminologyCapabilitiesSoftware] A TerminologyCapabilities resource
@freezed
class TerminologyCapabilitiesSoftware extends BackboneElement
    with _$TerminologyCapabilitiesSoftware {
  /// [TerminologyCapabilitiesSoftware] A TerminologyCapabilities resource
  TerminologyCapabilitiesSoftware._();

  /// [TerminologyCapabilitiesSoftware] A TerminologyCapabilities resource
  /// documents a set of capabilities (behaviors) of a FHIR Terminology Server
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
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
  /// [name] Name the software is known by.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [version] The version identifier for the software covered by this
  ///  statement.
  ///
  /// [versionElement] Extensions for version
  ///
  factory TerminologyCapabilitiesSoftware({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [name] Name the software is known by.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [version] The version identifier for the software covered by this
    ///  statement.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,
  }) = _TerminologyCapabilitiesSoftware;

  @override
  String get fhirType => 'TerminologyCapabilitiesSoftware';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilitiesSoftware.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesSoftware.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilitiesSoftware.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilitiesSoftware cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesSoftware.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesSoftwareFromJson(json);

  /// Acts like a constructor, returns a [TerminologyCapabilitiesSoftware], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TerminologyCapabilitiesSoftware.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TerminologyCapabilitiesSoftwareFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
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

@freezed
@freezed
class TerminologyCapabilitiesImplementation extends BackboneElement
    with _$TerminologyCapabilitiesImplementation {
  TerminologyCapabilitiesImplementation._();

  /// [TerminologyCapabilitiesImplementation] A TerminologyCapabilities
  /// resource documents a set of capabilities (behaviors) of a FHIR Terminology
  /// Server that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
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
  /// [description] Information about the specific installation that this
  ///  terminology capability statement relates to.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [url] An absolute base URL for the implementation.
  ///
  /// [urlElement] Extensions for url
  factory TerminologyCapabilitiesImplementation({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [description] Information about the specific installation that this
    ///  terminology capability statement relates to.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [url] An absolute base URL for the implementation.
    FhirUrl? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,
  }) = _TerminologyCapabilitiesImplementation;

  @override
  String get fhirType => 'TerminologyCapabilitiesImplementation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilitiesImplementation.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesImplementation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilitiesImplementation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilitiesImplementation cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory TerminologyCapabilitiesImplementation.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesImplementationFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class TerminologyCapabilitiesCodeSystem extends BackboneElement
    with _$TerminologyCapabilitiesCodeSystem {
  TerminologyCapabilitiesCodeSystem._();

  /// [TerminologyCapabilitiesCodeSystem] A TerminologyCapabilities resource
  /// documents a set of capabilities (behaviors) of a FHIR Terminology Server
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
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
  /// [uri] URI for the Code System.
  ///
  /// [version] For the code system, a list of versions that are supported by
  ///  the server.
  ///
  /// [subsumption] True if subsumption is supported for this version of the
  ///  code system.
  ///
  /// [subsumptionElement] Extensions for subsumption
  factory TerminologyCapabilitiesCodeSystem({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [uri] URI for the Code System.
    FhirCanonical? uri,

    /// [version] For the code system, a list of versions that are supported by
    ///  the server.
    List<TerminologyCapabilitiesVersion>? version,

    /// [subsumption] True if subsumption is supported for this version of the
    ///  code system.
    FhirBoolean? subsumption,

    /// [subsumptionElement] Extensions for subsumption
    @JsonKey(name: '_subsumption') PrimitiveElement? subsumptionElement,
  }) = _TerminologyCapabilitiesCodeSystem;

  @override
  String get fhirType => 'TerminologyCapabilitiesCodeSystem';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilitiesCodeSystem.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesCodeSystem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilitiesCodeSystem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilitiesCodeSystem cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory TerminologyCapabilitiesCodeSystem.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesCodeSystemFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [TerminologyCapabilitiesVersion] A TerminologyCapabilities resource
@freezed

/// [TerminologyCapabilitiesVersion] A TerminologyCapabilities resource
@freezed
class TerminologyCapabilitiesVersion extends BackboneElement
    with _$TerminologyCapabilitiesVersion {
  /// [TerminologyCapabilitiesVersion] A TerminologyCapabilities resource
  TerminologyCapabilitiesVersion._();

  /// [TerminologyCapabilitiesVersion] A TerminologyCapabilities resource
  /// documents a set of capabilities (behaviors) of a FHIR Terminology Server
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
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
  /// [code] For version-less code systems, there should be a single version
  ///  with no identifier.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [isDefault] If this is the default version for this code system.
  ///
  /// [isDefaultElement] Extensions for isDefault
  ///
  /// [compositional] If the compositional grammar defined by the code system
  ///  is supported.
  ///
  /// [compositionalElement] Extensions for compositional
  ///
  /// [language] Language Displays supported.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [filter] Filter Properties supported.
  ///
  /// [property] Properties supported for $lookup.
  ///
  /// [propertyElement] Extensions for property
  factory TerminologyCapabilitiesVersion({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [code] For version-less code systems, there should be a single version
    ///  with no identifier.
    String? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [isDefault] If this is the default version for this code system.
    FhirBoolean? isDefault,

    /// [isDefaultElement] Extensions for isDefault
    @JsonKey(name: '_isDefault') PrimitiveElement? isDefaultElement,

    /// [compositional] If the compositional grammar defined by the code system
    ///  is supported.
    FhirBoolean? compositional,

    /// [compositionalElement] Extensions for compositional
    @JsonKey(name: '_compositional') PrimitiveElement? compositionalElement,

    /// [language] Language Displays supported.
    List<FhirCode>? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') List<PrimitiveElement>? languageElement,

    /// [filter] Filter Properties supported.
    List<TerminologyCapabilitiesFilter>? filter,

    /// [property] Properties supported for $lookup.
    List<FhirCode>? property,

    /// [propertyElement] Extensions for property
    @JsonKey(name: '_property') List<PrimitiveElement>? propertyElement,
  }) = _TerminologyCapabilitiesVersion;

  @override
  String get fhirType => 'TerminologyCapabilitiesVersion';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilitiesVersion.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesVersion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilitiesVersion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilitiesVersion cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesVersion.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesVersionFromJson(json);

  /// Acts like a constructor, returns a [TerminologyCapabilitiesVersion], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TerminologyCapabilitiesVersion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TerminologyCapabilitiesVersionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
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

/// [TerminologyCapabilitiesFilter] A TerminologyCapabilities resource
@freezed

/// [TerminologyCapabilitiesFilter] A TerminologyCapabilities resource
@freezed
class TerminologyCapabilitiesFilter extends BackboneElement
    with _$TerminologyCapabilitiesFilter {
  /// [TerminologyCapabilitiesFilter] A TerminologyCapabilities resource
  TerminologyCapabilitiesFilter._();

  /// [TerminologyCapabilitiesFilter] A TerminologyCapabilities resource
  /// documents a set of capabilities (behaviors) of a FHIR Terminology Server
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
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
  /// [code] Code of the property supported.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [op] Operations supported for the property.
  ///
  /// [opElement] Extensions for op
  factory TerminologyCapabilitiesFilter({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [code] Code of the property supported.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [op] Operations supported for the property.
    List<FhirCode>? op,

    /// [opElement] Extensions for op
    @JsonKey(name: '_op') List<PrimitiveElement>? opElement,
  }) = _TerminologyCapabilitiesFilter;

  @override
  String get fhirType => 'TerminologyCapabilitiesFilter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilitiesFilter.fromYaml(dynamic yaml) => yaml is String
      ? TerminologyCapabilitiesFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilitiesFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilitiesFilter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesFilter.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesFilterFromJson(json);

  /// Acts like a constructor, returns a [TerminologyCapabilitiesFilter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TerminologyCapabilitiesFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TerminologyCapabilitiesFilterFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
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

/// [TerminologyCapabilitiesExpansion] A TerminologyCapabilities resource
@freezed

/// [TerminologyCapabilitiesExpansion] A TerminologyCapabilities resource
@freezed
class TerminologyCapabilitiesExpansion extends BackboneElement
    with _$TerminologyCapabilitiesExpansion {
  /// [TerminologyCapabilitiesExpansion] A TerminologyCapabilities resource
  TerminologyCapabilitiesExpansion._();

  /// [TerminologyCapabilitiesExpansion] A TerminologyCapabilities resource
  /// documents a set of capabilities (behaviors) of a FHIR Terminology Server
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
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
  /// [hierarchical] Whether the server can return nested value sets.
  ///
  /// [hierarchicalElement] Extensions for hierarchical
  ///
  /// [paging] Whether the server supports paging on expansion.
  ///
  /// [pagingElement] Extensions for paging
  ///
  /// [incomplete] Allow request for incomplete expansions?
  ///
  /// [incompleteElement] Extensions for incomplete
  ///
  /// [parameter] Supported expansion parameter.
  ///
  /// [textFilter] Documentation about text searching works.
  ///
  /// [textFilterElement] Extensions for textFilter
  factory TerminologyCapabilitiesExpansion({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [hierarchical] Whether the server can return nested value sets.
    FhirBoolean? hierarchical,

    /// [hierarchicalElement] Extensions for hierarchical
    @JsonKey(name: '_hierarchical') PrimitiveElement? hierarchicalElement,

    /// [paging] Whether the server supports paging on expansion.
    FhirBoolean? paging,

    /// [pagingElement] Extensions for paging
    @JsonKey(name: '_paging') PrimitiveElement? pagingElement,

    /// [incomplete] Allow request for incomplete expansions?
    FhirBoolean? incomplete,

    /// [incompleteElement] Extensions for incomplete
    @JsonKey(name: '_incomplete') PrimitiveElement? incompleteElement,

    /// [parameter] Supported expansion parameter.
    List<TerminologyCapabilitiesParameter>? parameter,

    /// [textFilter] Documentation about text searching works.
    FhirMarkdown? textFilter,

    /// [textFilterElement] Extensions for textFilter
    @JsonKey(name: '_textFilter') PrimitiveElement? textFilterElement,
  }) = _TerminologyCapabilitiesExpansion;

  @override
  String get fhirType => 'TerminologyCapabilitiesExpansion';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilitiesExpansion.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesExpansion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilitiesExpansion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilitiesExpansion cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory TerminologyCapabilitiesExpansion.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesExpansionFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [TerminologyCapabilitiesParameter] A TerminologyCapabilities resource
@freezed

/// [TerminologyCapabilitiesParameter] A TerminologyCapabilities resource
@freezed
class TerminologyCapabilitiesParameter extends BackboneElement
    with _$TerminologyCapabilitiesParameter {
  /// [TerminologyCapabilitiesParameter] A TerminologyCapabilities resource
  TerminologyCapabilitiesParameter._();

  /// [TerminologyCapabilitiesParameter] A TerminologyCapabilities resource
  /// documents a set of capabilities (behaviors) of a FHIR Terminology Server
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
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
  /// [name] Expansion Parameter name.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [documentation] Description of support for parameter.
  ///
  /// [documentationElement] Extensions for documentation
  factory TerminologyCapabilitiesParameter({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [name] Expansion Parameter name.
    FhirCode? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [documentation] Description of support for parameter.
    String? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _TerminologyCapabilitiesParameter;

  @override
  String get fhirType => 'TerminologyCapabilitiesParameter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilitiesParameter.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilitiesParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilitiesParameter cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory TerminologyCapabilitiesParameter.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesParameterFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class TerminologyCapabilitiesValidateCode extends BackboneElement
    with _$TerminologyCapabilitiesValidateCode {
  TerminologyCapabilitiesValidateCode._();

  /// [TerminologyCapabilitiesValidateCode] A TerminologyCapabilities resource
  /// documents a set of capabilities (behaviors) of a FHIR Terminology Server
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
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
  /// [translations] Whether translations are validated.
  ///
  /// [translationsElement] Extensions for translations
  factory TerminologyCapabilitiesValidateCode({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [translations] Whether translations are validated.
    FhirBoolean? translations,

    /// [translationsElement] Extensions for translations
    @JsonKey(name: '_translations') PrimitiveElement? translationsElement,
  }) = _TerminologyCapabilitiesValidateCode;

  @override
  String get fhirType => 'TerminologyCapabilitiesValidateCode';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilitiesValidateCode.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesValidateCode.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilitiesValidateCode.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilitiesValidateCode cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory TerminologyCapabilitiesValidateCode.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesValidateCodeFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class TerminologyCapabilitiesTranslation extends BackboneElement
    with _$TerminologyCapabilitiesTranslation {
  TerminologyCapabilitiesTranslation._();

  /// [TerminologyCapabilitiesTranslation] A TerminologyCapabilities resource
  /// documents a set of capabilities (behaviors) of a FHIR Terminology Server
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
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
  /// [needsMap] Whether the client must identify the map.
  ///
  /// [needsMapElement] Extensions for needsMap
  factory TerminologyCapabilitiesTranslation({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [needsMap] Whether the client must identify the map.
    FhirBoolean? needsMap,

    /// [needsMapElement] Extensions for needsMap
    @JsonKey(name: '_needsMap') PrimitiveElement? needsMapElement,
  }) = _TerminologyCapabilitiesTranslation;

  @override
  String get fhirType => 'TerminologyCapabilitiesTranslation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilitiesTranslation.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesTranslation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilitiesTranslation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilitiesTranslation cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory TerminologyCapabilitiesTranslation.fromJson(
          Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesTranslationFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [TerminologyCapabilitiesClosure] A TerminologyCapabilities resource
@freezed

/// [TerminologyCapabilitiesClosure] A TerminologyCapabilities resource
@freezed
class TerminologyCapabilitiesClosure extends BackboneElement
    with _$TerminologyCapabilitiesClosure {
  /// [TerminologyCapabilitiesClosure] A TerminologyCapabilities resource
  TerminologyCapabilitiesClosure._();

  /// [TerminologyCapabilitiesClosure] A TerminologyCapabilities resource
  /// documents a set of capabilities (behaviors) of a FHIR Terminology Server
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
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
  /// [translation] If cross-system closure is supported.
  ///
  /// [translationElement] Extensions for translation
  factory TerminologyCapabilitiesClosure({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [translation] If cross-system closure is supported.
    FhirBoolean? translation,

    /// [translationElement] Extensions for translation
    @JsonKey(name: '_translation') PrimitiveElement? translationElement,
  }) = _TerminologyCapabilitiesClosure;

  @override
  String get fhirType => 'TerminologyCapabilitiesClosure';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TerminologyCapabilitiesClosure.fromYaml(dynamic yaml) => yaml
          is String
      ? TerminologyCapabilitiesClosure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilitiesClosure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilitiesClosure cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TerminologyCapabilitiesClosure.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilitiesClosureFromJson(json);

  /// Acts like a constructor, returns a [TerminologyCapabilitiesClosure], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TerminologyCapabilitiesClosure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TerminologyCapabilitiesClosureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
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
