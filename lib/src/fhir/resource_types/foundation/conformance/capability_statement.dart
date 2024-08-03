// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'capability_statement.freezed.dart';
part 'capability_statement.g.dart';

/// [CapabilityStatement] A Capability Statement documents a set of
@freezed
class CapabilityStatement extends DomainResource with _$CapabilityStatement {
  /// [CapabilityStatement] A Capability Statement documents a set of
  CapabilityStatement._();

  /// [CapabilityStatement] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  ///
  /// [resourceType] This is a CapabilityStatement resource
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
  /// [url] An absolute URI that is used to identify this capability statement
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this capability statement is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  capability statement is stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [version] The identifier that is used to identify this version of the
  /// capability statement when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the capability
  /// statement author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  ///  lexicographical sequence.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the capability statement. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the capability
  ///  statement.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [status] The status of this capability statement. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this capability statement
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the capability statement was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the capability statement changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  capability statement.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the capability
  /// statement from a consumer's perspective. Typically, this is used when the
  /// capability statement describes a desired rather than an actual solution,
  ///  for example as a formal expression of requirements as part of an RFP.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate capability statement instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the capability
  ///  statement is intended to be used.
  ///
  /// [purpose] Explanation of why this capability statement is needed and why
  ///  it has been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the capability statement
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the capability statement.
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
  /// [instantiates] Reference to a canonical URL of another
  /// CapabilityStatement that this software implements. This capability
  /// statement is a published API description that corresponds to a business
  /// service. The server may actually implement a subset of the capability
  /// statement it claims to implement, so the capability statement must specify
  ///  the full capability details.
  ///
  /// [imports] Reference to a canonical URL of another CapabilityStatement
  /// that this software adds to. The capability statement automatically
  /// includes everything in the other statement, and it is not duplicated,
  /// though the server may repeat the same resources, interactions and
  ///  operations to add additional details to them.
  ///
  /// [software] Software that is covered by this capability statement.  It is
  /// used when the capability statement describes the capabilities of a
  ///  particular software version, independent of an installation.
  ///
  /// [implementation] Identifies a specific implementation instance that is
  /// described by the capability statement - i.e. a particular installation,
  ///  rather than the capabilities of a software program.
  ///
  /// [fhirVersion] The version of the FHIR specification that this
  /// CapabilityStatement describes (which SHALL be the same as the FHIR version
  ///  of the CapabilityStatement itself). There is no default value.
  ///
  /// [fhirVersionElement] Extensions for fhirVersion
  ///
  /// [format] A list of the formats supported by this implementation using
  ///  their content types.
  ///
  /// [formatElement] Extensions for format
  ///
  /// [patchFormat] A list of the patch formats supported by this
  ///  implementation using their content types.
  ///
  /// [patchFormatElement] Extensions for patchFormat
  ///
  /// [implementationGuide] A list of implementation guides that the server
  ///  does (or should) support in their entirety.
  ///
  /// [rest] A definition of the restful capabilities of the solution, if any.
  ///
  /// [messaging] A description of the messaging capabilities of the solution.
  ///
  /// [document] A document definition.
  const factory CapabilityStatement({
    @Default(R4ResourceType.CapabilityStatement)
    @JsonKey(unknownEnumValue: R4ResourceType.CapabilityStatement)

    /// [resourceType] This is a CapabilityStatement resource
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

    /// [url] An absolute URI that is used to identify this capability statement
    /// when it is referenced in a specification, model, design or an instance;
    /// also called its canonical identifier. This SHOULD be globally unique and
    /// SHOULD be a literal address at which at which an authoritative instance of
    /// this capability statement is (or will be) published. This URL can be the
    /// target of a canonical reference. It SHALL remain the same when the
    ///  capability statement is stored on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [version] The identifier that is used to identify this version of the
    /// capability statement when it is referenced in a specification, model,
    /// design or instance. This is an arbitrary value managed by the capability
    /// statement author and is not expected to be globally unique. For example,
    /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
    /// available. There is also no expectation that versions can be placed in a
    ///  lexicographical sequence.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the capability statement. This
    /// name should be usable as an identifier for the module by machine
    ///  processing applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the capability
    ///  statement.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [status] The status of this capability statement. Enables tracking the
    ///  life-cycle of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this capability statement
    /// is authored for testing purposes (or education/evaluation/marketing) and
    ///  is not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] The date  (and optionally time) when the capability statement was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the capability statement changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  capability statement.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the capability
    /// statement from a consumer's perspective. Typically, this is used when the
    /// capability statement describes a desired rather than an actual solution,
    ///  for example as a formal expression of requirements as part of an RFP.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate capability statement instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the capability
    ///  statement is intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this capability statement is needed and why
    ///  it has been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [copyright] A copyright statement relating to the capability statement
    /// and/or its contents. Copyright statements are generally legal restrictions
    ///  on the use and publishing of the capability statement.
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

    /// [instantiates] Reference to a canonical URL of another
    /// CapabilityStatement that this software implements. This capability
    /// statement is a published API description that corresponds to a business
    /// service. The server may actually implement a subset of the capability
    /// statement it claims to implement, so the capability statement must specify
    ///  the full capability details.
    List<FhirCanonical>? instantiates,

    /// [imports] Reference to a canonical URL of another CapabilityStatement
    /// that this software adds to. The capability statement automatically
    /// includes everything in the other statement, and it is not duplicated,
    /// though the server may repeat the same resources, interactions and
    ///  operations to add additional details to them.
    List<FhirCanonical>? imports,

    /// [software] Software that is covered by this capability statement.  It is
    /// used when the capability statement describes the capabilities of a
    ///  particular software version, independent of an installation.
    CapabilityStatementSoftware? software,

    /// [implementation] Identifies a specific implementation instance that is
    /// described by the capability statement - i.e. a particular installation,
    ///  rather than the capabilities of a software program.
    CapabilityStatementImplementation? implementation,

    /// [fhirVersion] The version of the FHIR specification that this
    /// CapabilityStatement describes (which SHALL be the same as the FHIR version
    ///  of the CapabilityStatement itself). There is no default value.
    FhirCode? fhirVersion,

    /// [fhirVersionElement] Extensions for fhirVersion
    @JsonKey(name: '_fhirVersion') PrimitiveElement? fhirVersionElement,

    /// [format] A list of the formats supported by this implementation using
    ///  their content types.
    List<FhirCode>? format,

    /// [formatElement] Extensions for format
    @JsonKey(name: '_format') List<PrimitiveElement>? formatElement,

    /// [patchFormat] A list of the patch formats supported by this
    ///  implementation using their content types.
    List<FhirCode>? patchFormat,

    /// [patchFormatElement] Extensions for patchFormat
    @JsonKey(name: '_patchFormat') List<PrimitiveElement>? patchFormatElement,

    /// [implementationGuide] A list of implementation guides that the server
    ///  does (or should) support in their entirety.
    List<FhirCanonical>? implementationGuide,

    /// [rest] A definition of the restful capabilities of the solution, if any.
    List<CapabilityStatementRest>? rest,

    /// [messaging] A description of the messaging capabilities of the solution.
    List<CapabilityStatementMessaging>? messaging,

    /// [document] A document definition.
    List<CapabilityStatementDocument>? document,
  }) = _CapabilityStatement;

  @override
  String get fhirType => 'CapabilityStatement';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatement.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatement.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatement], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementFromJson(json);
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

/// [CapabilityStatementSoftware] A Capability Statement documents a set of
@freezed

/// [CapabilityStatementSoftware] A Capability Statement documents a set of
@freezed
class CapabilityStatementSoftware extends BackboneElement
    with _$CapabilityStatementSoftware {
  /// [CapabilityStatementSoftware] A Capability Statement documents a set of
  CapabilityStatementSoftware._();

  /// [CapabilityStatementSoftware] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
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
  /// [releaseDate] Date this version of the software was released.
  ///
  /// [releaseDateElement] Extensions for releaseDate
  const factory CapabilityStatementSoftware({
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

    /// [releaseDate] Date this version of the software was released.
    FhirDateTime? releaseDate,

    /// [releaseDateElement] Extensions for releaseDate
    @JsonKey(name: '_releaseDate') PrimitiveElement? releaseDateElement,
  }) = _CapabilityStatementSoftware;

  @override
  String get fhirType => 'CapabilityStatementSoftware';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementSoftware.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementSoftware.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementSoftware.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementSoftware cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSoftware.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementSoftwareFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementSoftware], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementSoftware.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementSoftwareFromJson(json);
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
class CapabilityStatementImplementation extends BackboneElement
    with _$CapabilityStatementImplementation {
  CapabilityStatementImplementation._();

  /// [CapabilityStatementImplementation] A Capability Statement documents a
  /// set of capabilities (behaviors) of a FHIR Server for a particular version
  /// of FHIR that may be used as a statement of actual server functionality or
  ///  a statement of required or desired server implementation.
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
  ///  capability statement relates to.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [url] An absolute base URL for the implementation.  This forms the base
  ///  for REST interfaces as well as the mailbox and document interfaces.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [custodian] The organization responsible for the management of the
  ///  instance and oversight of the data on the server at the specified URL.
  const factory CapabilityStatementImplementation({
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
    ///  capability statement relates to.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [url] An absolute base URL for the implementation.  This forms the base
    ///  for REST interfaces as well as the mailbox and document interfaces.
    FhirUrl? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [custodian] The organization responsible for the management of the
    ///  instance and oversight of the data on the server at the specified URL.
    Reference? custodian,
  }) = _CapabilityStatementImplementation;

  @override
  String get fhirType => 'CapabilityStatementImplementation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementImplementation.fromYaml(dynamic yaml) => yaml
          is String
      ? CapabilityStatementImplementation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementImplementation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementImplementation cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory CapabilityStatementImplementation.fromJson(
          Map<String, dynamic> json) =>
      _$CapabilityStatementImplementationFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [CapabilityStatementRest] A Capability Statement documents a set of
/// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
/// that may be used as a statement of actual server functionality or a
///  statement of required or desired server implementation.
@freezed

///  statement of required or desired server implementation.
@freezed
class CapabilityStatementRest extends BackboneElement
    with _$CapabilityStatementRest {
  /// [CapabilityStatementRest] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  CapabilityStatementRest._();

  /// [CapabilityStatementRest] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
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
  /// [mode] Identifies whether this portion of the statement is describing the
  ///  ability to initiate or receive restful operations.
  ///
  /// [modeElement] Extensions for mode
  ///
  /// [documentation] Information about the system's restful capabilities that
  ///  apply across all applications, such as security.
  ///
  /// [documentationElement] Extensions for documentation
  ///
  /// [security] Information about security implementation from an interface
  ///  perspective - what a client needs to know.
  ///
  /// [resource] A specification of the restful capabilities of the solution
  ///  for a specific resource type.
  ///
  /// [interaction] A specification of restful operations supported by the
  ///  system.
  ///
  /// [searchParam] Search parameters that are supported for searching all
  /// resources for implementations to support and/or make use of - either
  /// references to ones defined in the specification, or additional ones
  ///  defined for/by the implementation.
  ///
  /// [operation] Definition of an operation or a named query together with its
  ///  parameters and their meaning and type.
  ///
  /// [compartment] An absolute URI which is a reference to the definition of a
  /// compartment that the system supports. The reference is to a
  ///  CompartmentDefinition resource by its canonical URL .
  const factory CapabilityStatementRest({
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

    /// [mode] Identifies whether this portion of the statement is describing the
    ///  ability to initiate or receive restful operations.
    FhirCode? mode,

    /// [modeElement] Extensions for mode
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,

    /// [documentation] Information about the system's restful capabilities that
    ///  apply across all applications, such as security.
    FhirMarkdown? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,

    /// [security] Information about security implementation from an interface
    ///  perspective - what a client needs to know.
    CapabilityStatementSecurity? security,

    /// [resource] A specification of the restful capabilities of the solution
    ///  for a specific resource type.
    List<CapabilityStatementResource>? resource,

    /// [interaction] A specification of restful operations supported by the
    ///  system.
    List<CapabilityStatementInteraction1>? interaction,

    /// [searchParam] Search parameters that are supported for searching all
    /// resources for implementations to support and/or make use of - either
    /// references to ones defined in the specification, or additional ones
    ///  defined for/by the implementation.
    List<CapabilityStatementSearchParam>? searchParam,

    /// [operation] Definition of an operation or a named query together with its
    ///  parameters and their meaning and type.
    List<CapabilityStatementOperation>? operation,

    /// [compartment] An absolute URI which is a reference to the definition of a
    /// compartment that the system supports. The reference is to a
    ///  CompartmentDefinition resource by its canonical URL .
    List<FhirCanonical>? compartment,
  }) = _CapabilityStatementRest;

  @override
  String get fhirType => 'CapabilityStatementRest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementRest.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementRest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementRest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementRest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementRest.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementRestFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementRest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementRest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementRestFromJson(json);
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

/// [CapabilityStatementSecurity] A Capability Statement documents a set of
/// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
/// that may be used as a statement of actual server functionality or a
///  statement of required or desired server implementation.
@freezed

///  statement of required or desired server implementation.
@freezed
class CapabilityStatementSecurity extends BackboneElement
    with _$CapabilityStatementSecurity {
  /// [CapabilityStatementSecurity] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  CapabilityStatementSecurity._();

  /// [CapabilityStatementSecurity] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
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
  /// [cors] Server adds CORS headers when responding to requests - this
  ///  enables Javascript applications to use the server.
  ///
  /// [corsElement] Extensions for cors
  ///
  /// [service] Types of security services that are supported/required by the
  ///  system.
  ///
  /// [description] General description of how security works.
  ///
  /// [descriptionElement] Extensions for description
  const factory CapabilityStatementSecurity({
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

    /// [cors] Server adds CORS headers when responding to requests - this
    ///  enables Javascript applications to use the server.
    FhirBoolean? cors,

    /// [corsElement] Extensions for cors
    @JsonKey(name: '_cors') PrimitiveElement? corsElement,

    /// [service] Types of security services that are supported/required by the
    ///  system.
    List<CodeableConcept>? service,

    /// [description] General description of how security works.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
  }) = _CapabilityStatementSecurity;

  @override
  String get fhirType => 'CapabilityStatementSecurity';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementSecurity.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementSecurity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementSecurity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementSecurity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSecurity.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementSecurityFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementSecurity], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementSecurity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementSecurityFromJson(json);
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

/// [CapabilityStatementResource] A Capability Statement documents a set of
/// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
/// that may be used as a statement of actual server functionality or a
///  statement of required or desired server implementation.
@freezed

///  statement of required or desired server implementation.
@freezed
class CapabilityStatementResource extends BackboneElement
    with _$CapabilityStatementResource {
  /// [CapabilityStatementResource] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  CapabilityStatementResource._();

  /// [CapabilityStatementResource] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
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
  /// [type] A type of resource exposed via the restful interface.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [profile] A specification of the profile that describes the solution's
  /// overall support for the resource, including any constraints on
  /// cardinality, bindings, lengths or other limitations. See further
  ///  discussion in [Using Profiles](profiling.html#profile-uses).
  ///
  /// [supportedProfile] A list of profiles that represent different use cases
  /// supported by the system. For a server, "supported by the system" means the
  /// system hosts/produces a set of resources that are conformant to a
  /// particular profile, and allows clients that use its services to search
  /// using this profile and to find appropriate data. For a client, it means
  /// the system will search by this profile and process data according to the
  /// guidance implicit in the profile. See further discussion in [Using
  ///  Profiles](profiling.html#profile-uses).
  ///
  /// [documentation] Additional information about the resource type used by
  ///  the system.
  ///
  /// [documentationElement] Extensions for documentation
  ///
  /// [interaction] Identifies a restful operation supported by the solution.
  ///
  /// [versioning] This field is set to no-version to specify that the system
  /// does not support (server) or use (client) versioning for this resource
  /// type. If this has some other value, the server must at least correctly
  /// track and populate the versionId meta-property on resources. If the value
  /// is 'versioned-update', then the server supports all the versioning
  ///  features, including using e-tags for version integrity in the API.
  ///
  /// [versioningElement] Extensions for versioning
  ///
  /// [readHistory] A flag for whether the server is able to return past
  ///  versions as part of the vRead operation.
  ///
  /// [readHistoryElement] Extensions for readHistory
  ///
  /// [updateCreate] A flag to indicate that the server allows or needs to
  /// allow the client to create new identities on the server (that is, the
  /// client PUTs to a location where there is no existing resource). Allowing
  /// this operation means that the server allows the client to create new
  ///  identities on the server.
  ///
  /// [updateCreateElement] Extensions for updateCreate
  ///
  /// [conditionalCreate] A flag that indicates that the server supports
  ///  conditional create.
  ///
  /// [conditionalCreateElement] Extensions for conditionalCreate
  ///
  /// [conditionalRead] A code that indicates how the server supports
  ///  conditional read.
  ///
  /// [conditionalReadElement] Extensions for conditionalRead
  ///
  /// [conditionalUpdate] A flag that indicates that the server supports
  ///  conditional update.
  ///
  /// [conditionalUpdateElement] Extensions for conditionalUpdate
  ///
  /// [conditionalDelete] A code that indicates how the server supports
  ///  conditional delete.
  ///
  /// [conditionalDeleteElement] Extensions for conditionalDelete
  ///
  /// [referencePolicy] A set of flags that defines how references are
  ///  supported.
  ///
  /// [referencePolicyElement] Extensions for referencePolicy
  ///
  /// [searchInclude] A list of _include values supported by the server.
  ///
  /// [searchIncludeElement] Extensions for searchInclude
  ///
  /// [searchRevInclude] A list of _revinclude (reverse include) values
  ///  supported by the server.
  ///
  /// [searchRevIncludeElement] Extensions for searchRevInclude
  ///
  /// [searchParam] Search parameters for implementations to support and/or
  /// make use of - either references to ones defined in the specification, or
  ///  additional ones defined for/by the implementation.
  ///
  /// [operation] Definition of an operation or a named query together with its
  /// parameters and their meaning and type. Consult the definition of the
  /// operation for details about how to invoke the operation, and the
  ///  parameters.
  const factory CapabilityStatementResource({
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

    /// [type] A type of resource exposed via the restful interface.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [profile] A specification of the profile that describes the solution's
    /// overall support for the resource, including any constraints on
    /// cardinality, bindings, lengths or other limitations. See further
    ///  discussion in [Using Profiles](profiling.html#profile-uses).
    FhirCanonical? profile,

    /// [supportedProfile] A list of profiles that represent different use cases
    /// supported by the system. For a server, "supported by the system" means the
    /// system hosts/produces a set of resources that are conformant to a
    /// particular profile, and allows clients that use its services to search
    /// using this profile and to find appropriate data. For a client, it means
    /// the system will search by this profile and process data according to the
    /// guidance implicit in the profile. See further discussion in [Using
    ///  Profiles](profiling.html#profile-uses).
    List<FhirCanonical>? supportedProfile,

    /// [documentation] Additional information about the resource type used by
    ///  the system.
    FhirMarkdown? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,

    /// [interaction] Identifies a restful operation supported by the solution.
    List<CapabilityStatementInteraction>? interaction,

    /// [versioning] This field is set to no-version to specify that the system
    /// does not support (server) or use (client) versioning for this resource
    /// type. If this has some other value, the server must at least correctly
    /// track and populate the versionId meta-property on resources. If the value
    /// is 'versioned-update', then the server supports all the versioning
    ///  features, including using e-tags for version integrity in the API.
    FhirCode? versioning,

    /// [versioningElement] Extensions for versioning
    @JsonKey(name: '_versioning') PrimitiveElement? versioningElement,

    /// [readHistory] A flag for whether the server is able to return past
    ///  versions as part of the vRead operation.
    FhirBoolean? readHistory,

    /// [readHistoryElement] Extensions for readHistory
    @JsonKey(name: '_readHistory') PrimitiveElement? readHistoryElement,

    /// [updateCreate] A flag to indicate that the server allows or needs to
    /// allow the client to create new identities on the server (that is, the
    /// client PUTs to a location where there is no existing resource). Allowing
    /// this operation means that the server allows the client to create new
    ///  identities on the server.
    FhirBoolean? updateCreate,

    /// [updateCreateElement] Extensions for updateCreate
    @JsonKey(name: '_updateCreate') PrimitiveElement? updateCreateElement,

    /// [conditionalCreate] A flag that indicates that the server supports
    ///  conditional create.
    FhirBoolean? conditionalCreate,

    /// [conditionalCreateElement] Extensions for conditionalCreate
    @JsonKey(name: '_conditionalCreate')
    PrimitiveElement? conditionalCreateElement,

    /// [conditionalRead] A code that indicates how the server supports
    ///  conditional read.
    FhirCode? conditionalRead,

    /// [conditionalReadElement] Extensions for conditionalRead
    @JsonKey(name: '_conditionalRead') PrimitiveElement? conditionalReadElement,

    /// [conditionalUpdate] A flag that indicates that the server supports
    ///  conditional update.
    FhirBoolean? conditionalUpdate,

    /// [conditionalUpdateElement] Extensions for conditionalUpdate
    @JsonKey(name: '_conditionalUpdate')
    PrimitiveElement? conditionalUpdateElement,

    /// [conditionalDelete] A code that indicates how the server supports
    ///  conditional delete.
    FhirCode? conditionalDelete,

    /// [conditionalDeleteElement] Extensions for conditionalDelete
    @JsonKey(name: '_conditionalDelete')
    PrimitiveElement? conditionalDeleteElement,

    /// [referencePolicy] A set of flags that defines how references are
    ///  supported.
    List<FhirCode>? referencePolicy,

    /// [referencePolicyElement] Extensions for referencePolicy
    @JsonKey(name: '_referencePolicy')
    List<PrimitiveElement>? referencePolicyElement,

    /// [searchInclude] A list of _include values supported by the server.
    List<String>? searchInclude,

    /// [searchIncludeElement] Extensions for searchInclude
    @JsonKey(name: '_searchInclude')
    List<PrimitiveElement>? searchIncludeElement,

    /// [searchRevInclude] A list of _revinclude (reverse include) values
    ///  supported by the server.
    List<String>? searchRevInclude,

    /// [searchRevIncludeElement] Extensions for searchRevInclude
    @JsonKey(name: '_searchRevInclude')
    List<PrimitiveElement>? searchRevIncludeElement,

    /// [searchParam] Search parameters for implementations to support and/or
    /// make use of - either references to ones defined in the specification, or
    ///  additional ones defined for/by the implementation.
    List<CapabilityStatementSearchParam>? searchParam,

    /// [operation] Definition of an operation or a named query together with its
    /// parameters and their meaning and type. Consult the definition of the
    /// operation for details about how to invoke the operation, and the
    ///  parameters.
    List<CapabilityStatementOperation>? operation,
  }) = _CapabilityStatementResource;

  @override
  String get fhirType => 'CapabilityStatementResource';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementResource.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementResource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementResource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementResource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementResource.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementResourceFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementResource], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementResource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementResourceFromJson(json);
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

/// [CapabilityStatementInteraction] A Capability Statement documents a set
/// of capabilities (behaviors) of a FHIR Server for a particular version of
/// FHIR that may be used as a statement of actual server functionality or a
///  statement of required or desired server implementation.
@freezed

///  statement of required or desired server implementation.
@freezed
class CapabilityStatementInteraction extends BackboneElement
    with _$CapabilityStatementInteraction {
  /// [CapabilityStatementInteraction] A Capability Statement documents a set
  /// of capabilities (behaviors) of a FHIR Server for a particular version of
  /// FHIR that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  CapabilityStatementInteraction._();

  /// [CapabilityStatementInteraction] A Capability Statement documents a set
  /// of capabilities (behaviors) of a FHIR Server for a particular version of
  /// FHIR that may be used as a statement of actual server functionality or a
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
  /// [code] Coded identifier of the operation, supported by the system
  ///  resource.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [documentation] Guidance specific to the implementation of this
  /// operation, such as 'delete is a logical delete' or 'updates are only
  /// allowed with version id' or 'creates permitted from pre-authorized
  ///  certificates only'.
  ///
  /// [documentationElement] Extensions for documentation
  const factory CapabilityStatementInteraction({
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

    /// [code] Coded identifier of the operation, supported by the system
    ///  resource.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [documentation] Guidance specific to the implementation of this
    /// operation, such as 'delete is a logical delete' or 'updates are only
    /// allowed with version id' or 'creates permitted from pre-authorized
    ///  certificates only'.
    FhirMarkdown? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _CapabilityStatementInteraction;

  @override
  String get fhirType => 'CapabilityStatementInteraction';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementInteraction.fromYaml(dynamic yaml) => yaml
          is String
      ? CapabilityStatementInteraction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementInteraction.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementInteraction cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementInteraction.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementInteractionFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementInteraction], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementInteraction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementInteractionFromJson(json);
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

/// [CapabilityStatementSearchParam] A Capability Statement documents a set
/// of capabilities (behaviors) of a FHIR Server for a particular version of
/// FHIR that may be used as a statement of actual server functionality or a
///  statement of required or desired server implementation.
@freezed

///  statement of required or desired server implementation.
@freezed
class CapabilityStatementSearchParam extends BackboneElement
    with _$CapabilityStatementSearchParam {
  /// [CapabilityStatementSearchParam] A Capability Statement documents a set
  /// of capabilities (behaviors) of a FHIR Server for a particular version of
  /// FHIR that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  CapabilityStatementSearchParam._();

  /// [CapabilityStatementSearchParam] A Capability Statement documents a set
  /// of capabilities (behaviors) of a FHIR Server for a particular version of
  /// FHIR that may be used as a statement of actual server functionality or a
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
  /// [name] The name of the search parameter used in the interface.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [definition] An absolute URI that is a formal reference to where this
  /// parameter was first defined, so that a client can be confident of the
  /// meaning of the search parameter (a reference to
  ///
  /// [[[SearchParameter.url]]]). This element SHALL be populated if the search
  /// parameter refers to a SearchParameter defined by the FHIR core
  ///  specification or externally defined IGs.
  ///
  /// [type] The type of value a search parameter refers to, and how the
  ///  content is interpreted.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [documentation] This allows documentation of any distinct behaviors about
  ///  how the search parameter is used.  For example, text matching algorithms.
  ///
  /// [documentationElement] Extensions for documentation
  const factory CapabilityStatementSearchParam({
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

    /// [name] The name of the search parameter used in the interface.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [definition] An absolute URI that is a formal reference to where this
    /// parameter was first defined, so that a client can be confident of the
    /// meaning of the search parameter (a reference to
    FhirCanonical? definition,

    /// [type] The type of value a search parameter refers to, and how the
    ///  content is interpreted.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [documentation] This allows documentation of any distinct behaviors about
    ///  how the search parameter is used.  For example, text matching algorithms.
    FhirMarkdown? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _CapabilityStatementSearchParam;

  @override
  String get fhirType => 'CapabilityStatementSearchParam';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementSearchParam.fromYaml(dynamic yaml) => yaml
          is String
      ? CapabilityStatementSearchParam.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementSearchParam.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementSearchParam cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementSearchParam.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementSearchParamFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementSearchParam], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementSearchParam.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementSearchParamFromJson(json);
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

/// [CapabilityStatementOperation] A Capability Statement documents a set of
/// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
/// that may be used as a statement of actual server functionality or a
///  statement of required or desired server implementation.
@freezed

///  statement of required or desired server implementation.
@freezed
class CapabilityStatementOperation extends BackboneElement
    with _$CapabilityStatementOperation {
  /// [CapabilityStatementOperation] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  CapabilityStatementOperation._();

  /// [CapabilityStatementOperation] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
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
  /// [name] The name of the operation or query. For an operation, this is the
  /// name  prefixed with $ and used in the URL. For a query, this is the name
  ///  used in the _query parameter when the query is called.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [definition] Where the formal definition can be found. If a server
  /// references the base definition of an Operation (i.e. from the
  /// specification itself such as
  /// ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```), that means
  /// it supports the full capabilities of the operation - e.g. both GET and
  /// POST invocation.  If it only supports a subset, it must define its own
  /// custom [[[OperationDefinition]]] with a 'base' of the original
  /// OperationDefinition.  The custom definition would describe the specific
  ///  subset of functionality supported.
  ///
  /// [documentation] Documentation that describes anything special about the
  /// operation behavior, possibly detailing different behavior for system, type
  ///  and instance-level invocation of the operation.
  ///
  /// [documentationElement] Extensions for documentation
  const factory CapabilityStatementOperation({
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

    /// [name] The name of the operation or query. For an operation, this is the
    /// name  prefixed with $ and used in the URL. For a query, this is the name
    ///  used in the _query parameter when the query is called.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [definition] Where the formal definition can be found. If a server
    /// references the base definition of an Operation (i.e. from the
    /// specification itself such as
    /// ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```), that means
    /// it supports the full capabilities of the operation - e.g. both GET and
    /// POST invocation.  If it only supports a subset, it must define its own
    /// custom [[[OperationDefinition]]] with a 'base' of the original
    /// OperationDefinition.  The custom definition would describe the specific
    ///  subset of functionality supported.
    required FhirCanonical definition,

    /// [documentation] Documentation that describes anything special about the
    /// operation behavior, possibly detailing different behavior for system, type
    ///  and instance-level invocation of the operation.
    FhirMarkdown? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _CapabilityStatementOperation;

  @override
  String get fhirType => 'CapabilityStatementOperation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementOperation.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementOperation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementOperation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementOperation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementOperation.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementOperationFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementOperation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementOperation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementOperationFromJson(json);
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

/// [CapabilityStatementInteraction1] A Capability Statement documents a set
/// of capabilities (behaviors) of a FHIR Server for a particular version of
/// FHIR that may be used as a statement of actual server functionality or a
///  statement of required or desired server implementation.
@freezed

///  statement of required or desired server implementation.
@freezed
class CapabilityStatementInteraction1 extends BackboneElement
    with _$CapabilityStatementInteraction1 {
  /// [CapabilityStatementInteraction1] A Capability Statement documents a set
  /// of capabilities (behaviors) of a FHIR Server for a particular version of
  /// FHIR that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  CapabilityStatementInteraction1._();

  /// [CapabilityStatementInteraction1] A Capability Statement documents a set
  /// of capabilities (behaviors) of a FHIR Server for a particular version of
  /// FHIR that may be used as a statement of actual server functionality or a
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
  /// [code] A coded identifier of the operation, supported by the system.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [documentation] Guidance specific to the implementation of this
  /// operation, such as limitations on the kind of transactions allowed, or
  ///  information about system wide search is implemented.
  ///
  /// [documentationElement] Extensions for documentation
  const factory CapabilityStatementInteraction1({
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

    /// [code] A coded identifier of the operation, supported by the system.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [documentation] Guidance specific to the implementation of this
    /// operation, such as limitations on the kind of transactions allowed, or
    ///  information about system wide search is implemented.
    FhirMarkdown? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _CapabilityStatementInteraction1;

  @override
  String get fhirType => 'CapabilityStatementInteraction1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementInteraction1.fromYaml(dynamic yaml) => yaml
          is String
      ? CapabilityStatementInteraction1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementInteraction1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementInteraction1 cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementInteraction1.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementInteraction1FromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementInteraction1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementInteraction1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementInteraction1FromJson(json);
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

/// [CapabilityStatementMessaging] A Capability Statement documents a set of
/// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
/// that may be used as a statement of actual server functionality or a
///  statement of required or desired server implementation.
@freezed

///  statement of required or desired server implementation.
@freezed
class CapabilityStatementMessaging extends BackboneElement
    with _$CapabilityStatementMessaging {
  /// [CapabilityStatementMessaging] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  CapabilityStatementMessaging._();

  /// [CapabilityStatementMessaging] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
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
  /// [endpoint] An endpoint (network accessible address) to which messages
  ///  and/or replies are to be sent.
  ///
  /// [reliableCache] Length if the receiver's reliable messaging cache in
  /// minutes (if a receiver) or how long the cache length on the receiver
  ///  should be (if a sender).
  ///
  /// [reliableCacheElement] Extensions for reliableCache
  ///
  /// [documentation] Documentation about the system's messaging capabilities
  /// for this endpoint not otherwise documented by the capability statement.
  /// For example, the process for becoming an authorized messaging exchange
  ///  partner.
  ///
  /// [documentationElement] Extensions for documentation
  ///
  /// [supportedMessage] References to message definitions for messages this
  ///  system can send or receive.
  const factory CapabilityStatementMessaging({
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

    /// [endpoint] An endpoint (network accessible address) to which messages
    ///  and/or replies are to be sent.
    List<CapabilityStatementEndpoint>? endpoint,

    /// [reliableCache] Length if the receiver's reliable messaging cache in
    /// minutes (if a receiver) or how long the cache length on the receiver
    ///  should be (if a sender).
    FhirUnsignedInt? reliableCache,

    /// [reliableCacheElement] Extensions for reliableCache
    @JsonKey(name: '_reliableCache') PrimitiveElement? reliableCacheElement,

    /// [documentation] Documentation about the system's messaging capabilities
    /// for this endpoint not otherwise documented by the capability statement.
    /// For example, the process for becoming an authorized messaging exchange
    ///  partner.
    FhirMarkdown? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,

    /// [supportedMessage] References to message definitions for messages this
    ///  system can send or receive.
    List<CapabilityStatementSupportedMessage>? supportedMessage,
  }) = _CapabilityStatementMessaging;

  @override
  String get fhirType => 'CapabilityStatementMessaging';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementMessaging.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementMessaging.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementMessaging.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementMessaging cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementMessaging.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementMessagingFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementMessaging], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementMessaging.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementMessagingFromJson(json);
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

/// [CapabilityStatementEndpoint] A Capability Statement documents a set of
/// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
/// that may be used as a statement of actual server functionality or a
///  statement of required or desired server implementation.
@freezed

///  statement of required or desired server implementation.
@freezed
class CapabilityStatementEndpoint extends BackboneElement
    with _$CapabilityStatementEndpoint {
  /// [CapabilityStatementEndpoint] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  CapabilityStatementEndpoint._();

  /// [CapabilityStatementEndpoint] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
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
  /// [protocol] A list of the messaging transport protocol(s) identifiers,
  ///  supported by this endpoint.
  ///
  /// [address] The network address of the endpoint. For solutions that do not
  ///  use network addresses for routing, it can be just an identifier.
  ///
  /// [addressElement] Extensions for address
  const factory CapabilityStatementEndpoint({
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

    /// [protocol] A list of the messaging transport protocol(s) identifiers,
    ///  supported by this endpoint.
    required Coding protocol,

    /// [address] The network address of the endpoint. For solutions that do not
    ///  use network addresses for routing, it can be just an identifier.
    FhirUrl? address,

    /// [addressElement] Extensions for address
    @JsonKey(name: '_address') PrimitiveElement? addressElement,
  }) = _CapabilityStatementEndpoint;

  @override
  String get fhirType => 'CapabilityStatementEndpoint';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementEndpoint.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementEndpoint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementEndpoint.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementEndpoint cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementEndpoint.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementEndpointFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementEndpoint], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementEndpoint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementEndpointFromJson(json);
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

/// [CapabilityStatementSupportedMessage] A Capability Statement documents a
/// set of capabilities (behaviors) of a FHIR Server for a particular version
/// of FHIR that may be used as a statement of actual server functionality or
///  a statement of required or desired server implementation.
@freezed

///  a statement of required or desired server implementation.
@freezed
class CapabilityStatementSupportedMessage extends BackboneElement
    with _$CapabilityStatementSupportedMessage {
  /// [CapabilityStatementSupportedMessage] A Capability Statement documents a
  /// set of capabilities (behaviors) of a FHIR Server for a particular version
  /// of FHIR that may be used as a statement of actual server functionality or
  ///  a statement of required or desired server implementation.
  CapabilityStatementSupportedMessage._();

  /// [CapabilityStatementSupportedMessage] A Capability Statement documents a
  /// set of capabilities (behaviors) of a FHIR Server for a particular version
  /// of FHIR that may be used as a statement of actual server functionality or
  ///  a statement of required or desired server implementation.
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
  /// [mode] The mode of this event declaration - whether application is sender
  ///  or receiver.
  ///
  /// [modeElement] Extensions for mode
  ///
  /// [definition] Points to a message definition that identifies the messaging
  ///  event, message structure, allowed responses, etc.
  const factory CapabilityStatementSupportedMessage({
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

    /// [mode] The mode of this event declaration - whether application is sender
    ///  or receiver.
    FhirCode? mode,

    /// [modeElement] Extensions for mode
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,

    /// [definition] Points to a message definition that identifies the messaging
    ///  event, message structure, allowed responses, etc.
    required FhirCanonical definition,
  }) = _CapabilityStatementSupportedMessage;

  @override
  String get fhirType => 'CapabilityStatementSupportedMessage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementSupportedMessage.fromYaml(dynamic yaml) => yaml
          is String
      ? CapabilityStatementSupportedMessage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementSupportedMessage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementSupportedMessage cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory CapabilityStatementSupportedMessage.fromJson(
          Map<String, dynamic> json) =>
      _$CapabilityStatementSupportedMessageFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [CapabilityStatementDocument] A Capability Statement documents a set of
/// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
/// that may be used as a statement of actual server functionality or a
///  statement of required or desired server implementation.
@freezed

///  statement of required or desired server implementation.
@freezed
class CapabilityStatementDocument extends BackboneElement
    with _$CapabilityStatementDocument {
  /// [CapabilityStatementDocument] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
  /// that may be used as a statement of actual server functionality or a
  ///  statement of required or desired server implementation.
  CapabilityStatementDocument._();

  /// [CapabilityStatementDocument] A Capability Statement documents a set of
  /// capabilities (behaviors) of a FHIR Server for a particular version of FHIR
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
  /// [mode] Mode of this document declaration - whether an application is a
  ///  producer or consumer.
  ///
  /// [modeElement] Extensions for mode
  ///
  /// [documentation] A description of how the application supports or uses the
  /// specified document profile.  For example, when documents are created, what
  ///  action is taken with consumed documents, etc.
  ///
  /// [documentationElement] Extensions for documentation
  ///
  /// [profile] A profile on the document Bundle that constrains which
  ///  resources are present, and their contents.
  const factory CapabilityStatementDocument({
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

    /// [mode] Mode of this document declaration - whether an application is a
    ///  producer or consumer.
    FhirCode? mode,

    /// [modeElement] Extensions for mode
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,

    /// [documentation] A description of how the application supports or uses the
    /// specified document profile.  For example, when documents are created, what
    ///  action is taken with consumed documents, etc.
    FhirMarkdown? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,

    /// [profile] A profile on the document Bundle that constrains which
    ///  resources are present, and their contents.
    required FhirCanonical profile,
  }) = _CapabilityStatementDocument;

  @override
  String get fhirType => 'CapabilityStatementDocument';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CapabilityStatementDocument.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatementDocument.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatementDocument.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatementDocument cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CapabilityStatementDocument.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatementDocumentFromJson(json);

  /// Acts like a constructor, returns a [CapabilityStatementDocument], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CapabilityStatementDocument.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatementDocumentFromJson(json);
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
