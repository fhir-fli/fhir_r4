// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'implementation_guide.freezed.dart';
part 'implementation_guide.g.dart';

/// [ImplementationGuide] A set of rules of how a particular interoperability
@freezed
class ImplementationGuide with _$ImplementationGuide implements DomainResource {
  /// [ImplementationGuide] A set of rules of how a particular interoperability
  const ImplementationGuide._();

  /// [ImplementationGuide] A set of rules of how a particular interoperability
  /// or standards problem is solved - typically through the use of FHIR
  /// resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
  ///
  /// [resourceType] This is a ImplementationGuide resource
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
  /// [url] An absolute URI that is used to identify this implementation guide
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this implementation guide is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  implementation guide is stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [version] The identifier that is used to identify this version of the
  /// implementation guide when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the
  /// implementation guide author and is not expected to be globally unique. For
  /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
  /// not available. There is also no expectation that versions can be placed in
  ///  a lexicographical sequence.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the implementation guide. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the implementation
  ///  guide.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [status] The status of this implementation guide. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this implementation guide
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the implementation guide was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the implementation guide changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  implementation guide.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the
  ///  implementation guide from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate implementation guide instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the implementation
  ///  guide is intended to be used.
  ///
  /// [copyright] A copyright statement relating to the implementation guide
  /// and/or its contents. Copyright statements are generally legal restrictions
  ///  on the use and publishing of the implementation guide.
  ///
  /// [copyrightElement] Extensions for copyright
  ///
  /// [packageId] The NPM package name for this Implementation Guide, used in
  /// the NPM package distribution, which is the primary mechanism by which FHIR
  /// based tooling manages IG dependencies. This value must be globally unique,
  ///  and should be assigned with care.
  ///
  /// [packageIdElement] Extensions for packageId
  ///
  /// [license] The license that applies to this Implementation Guide, using an
  ///  SPDX license code, or 'not-open-source'.
  ///
  /// [licenseElement] Extensions for license
  ///
  /// [fhirVersion] The version(s) of the FHIR specification that this
  /// ImplementationGuide targets - e.g. describes how to use. The value of this
  /// element is the formal version of the specification, without the revision
  /// number, e.g. [publication].[major].[minor], which is 4.0.1. for this
  ///  version.
  ///
  /// [fhirVersionElement] Extensions for fhirVersion
  ///
  /// [dependsOn] Another implementation guide that this implementation depends
  /// on. Typically, an implementation guide uses value sets, profiles
  ///  etc.defined in other implementation guides.
  ///
  /// [global] A set of profiles that all resources covered by this
  ///  implementation guide must conform to.
  ///
  /// [definition] The information needed by an IG publisher tool to publish
  ///  the whole implementation guide.
  ///
  /// [manifest] Information about an assembled implementation guide, created
  ///  by the publication tooling.
  const factory ImplementationGuide({
    @Default(R4ResourceType.ImplementationGuide)
    @JsonKey(unknownEnumValue: R4ResourceType.ImplementationGuide)

    /// [resourceType] This is a ImplementationGuide resource
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

    /// [url] An absolute URI that is used to identify this implementation guide
    /// when it is referenced in a specification, model, design or an instance;
    /// also called its canonical identifier. This SHOULD be globally unique and
    /// SHOULD be a literal address at which at which an authoritative instance of
    /// this implementation guide is (or will be) published. This URL can be the
    /// target of a canonical reference. It SHALL remain the same when the
    ///  implementation guide is stored on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [version] The identifier that is used to identify this version of the
    /// implementation guide when it is referenced in a specification, model,
    /// design or instance. This is an arbitrary value managed by the
    /// implementation guide author and is not expected to be globally unique. For
    /// example, it might be a timestamp (e.g. yyyymmdd) if a managed version is
    /// not available. There is also no expectation that versions can be placed in
    ///  a lexicographical sequence.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the implementation guide. This
    /// name should be usable as an identifier for the module by machine
    ///  processing applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the implementation
    ///  guide.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [status] The status of this implementation guide. Enables tracking the
    ///  life-cycle of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this implementation guide
    /// is authored for testing purposes (or education/evaluation/marketing) and
    ///  is not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] The date  (and optionally time) when the implementation guide was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the implementation guide changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  implementation guide.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the
    ///  implementation guide from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate implementation guide instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the implementation
    ///  guide is intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [copyright] A copyright statement relating to the implementation guide
    /// and/or its contents. Copyright statements are generally legal restrictions
    ///  on the use and publishing of the implementation guide.
    FhirMarkdown? copyright,

    /// [copyrightElement] Extensions for copyright
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,

    /// [packageId] The NPM package name for this Implementation Guide, used in
    /// the NPM package distribution, which is the primary mechanism by which FHIR
    /// based tooling manages IG dependencies. This value must be globally unique,
    ///  and should be assigned with care.
    FhirId? packageId,

    /// [packageIdElement] Extensions for packageId
    @JsonKey(name: '_packageId') PrimitiveElement? packageIdElement,

    /// [license] The license that applies to this Implementation Guide, using an
    ///  SPDX license code, or 'not-open-source'.
    FhirCode? license,

    /// [licenseElement] Extensions for license
    @JsonKey(name: '_license') PrimitiveElement? licenseElement,

    /// [fhirVersion] The version(s) of the FHIR specification that this
    /// ImplementationGuide targets - e.g. describes how to use. The value of this
    /// element is the formal version of the specification, without the revision
    /// number, e.g. [publication].[major].[minor], which is 4.0.1. for this
    ///  version.
    List<FhirCode>? fhirVersion,

    /// [fhirVersionElement] Extensions for fhirVersion
    @JsonKey(name: '_fhirVersion') List<PrimitiveElement>? fhirVersionElement,

    /// [dependsOn] Another implementation guide that this implementation depends
    /// on. Typically, an implementation guide uses value sets, profiles
    ///  etc.defined in other implementation guides.
    List<ImplementationGuideDependsOn>? dependsOn,

    /// [global] A set of profiles that all resources covered by this
    ///  implementation guide must conform to.
    List<ImplementationGuideGlobal>? global,

    /// [definition] The information needed by an IG publisher tool to publish
    ///  the whole implementation guide.
    ImplementationGuideDefinition? definition,

    /// [manifest] Information about an assembled implementation guide, created
    ///  by the publication tooling.
    ImplementationGuideManifest? manifest,
  }) = _ImplementationGuide;

  @override
  String get fhirType => 'ImplementationGuide';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuide.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuide.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuide.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuide cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuide.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideFromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuide], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuide.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuideFromJson(json);
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
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [ImplementationGuideDependsOn] A set of rules of how a particular
@freezed

/// [ImplementationGuideDependsOn] A set of rules of how a particular
@freezed
class ImplementationGuideDependsOn
    with _$ImplementationGuideDependsOn
    implements BackboneElement {
  /// [ImplementationGuideDependsOn] A set of rules of how a particular
  const ImplementationGuideDependsOn._();

  /// [ImplementationGuideDependsOn] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [uri] A canonical reference to the Implementation guide for the
  ///  dependency.
  ///
  /// [packageId] The NPM package name for the Implementation Guide that this
  ///  IG depends on.
  ///
  /// [packageIdElement] Extensions for packageId
  ///
  /// [version] The version of the IG that is depended on, when the correct
  ///  version is required to understand the IG correctly.
  ///
  /// [versionElement] Extensions for version
  const factory ImplementationGuideDependsOn({
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

    /// [uri] A canonical reference to the Implementation guide for the
    ///  dependency.
    required FhirCanonical uri,

    /// [packageId] The NPM package name for the Implementation Guide that this
    ///  IG depends on.
    FhirId? packageId,

    /// [packageIdElement] Extensions for packageId
    @JsonKey(name: '_packageId') PrimitiveElement? packageIdElement,

    /// [version] The version of the IG that is depended on, when the correct
    ///  version is required to understand the IG correctly.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,
  }) = _ImplementationGuideDependsOn;

  @override
  String get fhirType => 'ImplementationGuideDependsOn';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuideDependsOn.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideDependsOn.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuideDependsOn.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuideDependsOn cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideDependsOn.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideDependsOnFromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuideDependsOn], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuideDependsOn.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuideDependsOnFromJson(json);
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

/// [ImplementationGuideGlobal] A set of rules of how a particular
@freezed

/// [ImplementationGuideGlobal] A set of rules of how a particular
@freezed
class ImplementationGuideGlobal
    with _$ImplementationGuideGlobal
    implements BackboneElement {
  /// [ImplementationGuideGlobal] A set of rules of how a particular
  const ImplementationGuideGlobal._();

  /// [ImplementationGuideGlobal] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [type] The type of resource that all instances must conform to.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [profile] A reference to the profile that all instances must conform to.
  const factory ImplementationGuideGlobal({
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

    /// [type] The type of resource that all instances must conform to.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [profile] A reference to the profile that all instances must conform to.
    required FhirCanonical profile,
  }) = _ImplementationGuideGlobal;

  @override
  String get fhirType => 'ImplementationGuideGlobal';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuideGlobal.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideGlobal.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuideGlobal.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuideGlobal cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideGlobal.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideGlobalFromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuideGlobal], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuideGlobal.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuideGlobalFromJson(json);
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

/// [ImplementationGuideDefinition] A set of rules of how a particular
@freezed

/// [ImplementationGuideDefinition] A set of rules of how a particular
@freezed
class ImplementationGuideDefinition
    with _$ImplementationGuideDefinition
    implements BackboneElement {
  /// [ImplementationGuideDefinition] A set of rules of how a particular
  const ImplementationGuideDefinition._();

  /// [ImplementationGuideDefinition] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [grouping] A logical group of resources. Logical groups can be used when
  ///  building pages.
  ///
  /// [resource] A resource that is part of the implementation guide.
  /// Conformance resources (value set, structure definition, capability
  /// statements etc.) are obvious candidates for inclusion, but any kind of
  ///  resource can be included as an example resource.
  ///
  /// [page] A page / section in the implementation guide. The root page is the
  ///  implementation guide home page.
  ///
  /// [parameter] Defines how IG is built by tools.
  ///
  /// [template] A template for building resources.
  const factory ImplementationGuideDefinition({
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

    /// [grouping] A logical group of resources. Logical groups can be used when
    ///  building pages.
    List<ImplementationGuideGrouping>? grouping,

    /// [resource] A resource that is part of the implementation guide.
    /// Conformance resources (value set, structure definition, capability
    /// statements etc.) are obvious candidates for inclusion, but any kind of
    ///  resource can be included as an example resource.
    required List<ImplementationGuideResource> resource,

    /// [page] A page / section in the implementation guide. The root page is the
    ///  implementation guide home page.
    ImplementationGuidePage? page,

    /// [parameter] Defines how IG is built by tools.
    List<ImplementationGuideParameter>? parameter,

    /// [template] A template for building resources.
    List<ImplementationGuideTemplate>? template,
  }) = _ImplementationGuideDefinition;

  @override
  String get fhirType => 'ImplementationGuideDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuideDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuideDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuideDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideDefinition.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideDefinitionFromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuideDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuideDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuideDefinitionFromJson(json);
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

/// [ImplementationGuideGrouping] A set of rules of how a particular
@freezed

/// [ImplementationGuideGrouping] A set of rules of how a particular
@freezed
class ImplementationGuideGrouping
    with _$ImplementationGuideGrouping
    implements BackboneElement {
  /// [ImplementationGuideGrouping] A set of rules of how a particular
  const ImplementationGuideGrouping._();

  /// [ImplementationGuideGrouping] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [name] The human-readable title to display for the package of resources
  ///  when rendering the implementation guide.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [description] Human readable text describing the package.
  ///
  /// [descriptionElement] Extensions for description
  const factory ImplementationGuideGrouping({
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

    /// [name] The human-readable title to display for the package of resources
    ///  when rendering the implementation guide.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [description] Human readable text describing the package.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
  }) = _ImplementationGuideGrouping;

  @override
  String get fhirType => 'ImplementationGuideGrouping';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuideGrouping.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideGrouping.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuideGrouping.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuideGrouping cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideGrouping.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideGroupingFromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuideGrouping], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuideGrouping.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuideGroupingFromJson(json);
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

/// [ImplementationGuideResource] A set of rules of how a particular
@freezed

/// [ImplementationGuideResource] A set of rules of how a particular
@freezed
class ImplementationGuideResource
    with _$ImplementationGuideResource
    implements BackboneElement {
  /// [ImplementationGuideResource] A set of rules of how a particular
  const ImplementationGuideResource._();

  /// [ImplementationGuideResource] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [reference] Where this resource is found.
  ///
  /// [fhirVersion] Indicates the FHIR Version(s) this artifact is intended to
  /// apply to. If no versions are specified, the resource is assumed to apply
  ///  to all the versions stated in ImplementationGuide.fhirVersion.
  ///
  /// [fhirVersionElement] Extensions for fhirVersion
  ///
  /// [name] A human assigned name for the resource. All resources SHOULD have
  /// a name, but the name may be extracted from the resource (e.g.
  ///  ValueSet.name).
  ///
  /// [nameElement] Extensions for name
  ///
  /// [description] A description of the reason that a resource has been
  ///  included in the implementation guide.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [exampleBoolean] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  ///
  /// [exampleBooleanElement] Extensions for exampleBoolean
  ///
  /// [exampleCanonical] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  ///
  /// [exampleCanonicalElement] Extensions for exampleCanonical
  ///
  /// [groupingId] Reference to the id of the grouping this resource appears
  ///  in.
  ///
  /// [groupingIdElement] Extensions for groupingId
  const factory ImplementationGuideResource({
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

    /// [reference] Where this resource is found.
    required Reference reference,

    /// [fhirVersion] Indicates the FHIR Version(s) this artifact is intended to
    /// apply to. If no versions are specified, the resource is assumed to apply
    ///  to all the versions stated in ImplementationGuide.fhirVersion.
    List<FhirCode>? fhirVersion,

    /// [fhirVersionElement] Extensions for fhirVersion
    @JsonKey(name: '_fhirVersion') List<PrimitiveElement>? fhirVersionElement,

    /// [name] A human assigned name for the resource. All resources SHOULD have
    /// a name, but the name may be extracted from the resource (e.g.
    ///  ValueSet.name).
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [description] A description of the reason that a resource has been
    ///  included in the implementation guide.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [exampleBoolean] If true or a reference, indicates the resource is an
    /// example instance.  If a reference is present, indicates that the example
    ///  is an example of the specified profile.
    FhirBoolean? exampleBoolean,

    /// [exampleBooleanElement] Extensions for exampleBoolean
    @JsonKey(name: '_exampleBoolean') PrimitiveElement? exampleBooleanElement,

    /// [exampleCanonical] If true or a reference, indicates the resource is an
    /// example instance.  If a reference is present, indicates that the example
    ///  is an example of the specified profile.
    FhirCanonical? exampleCanonical,

    /// [exampleCanonicalElement] Extensions for exampleCanonical
    @JsonKey(name: '_exampleCanonical')
    PrimitiveElement? exampleCanonicalElement,

    /// [groupingId] Reference to the id of the grouping this resource appears
    ///  in.
    FhirId? groupingId,

    /// [groupingIdElement] Extensions for groupingId
    @JsonKey(name: '_groupingId') PrimitiveElement? groupingIdElement,
  }) = _ImplementationGuideResource;

  @override
  String get fhirType => 'ImplementationGuideResource';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuideResource.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideResource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuideResource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuideResource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideResource.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideResourceFromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuideResource], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuideResource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuideResourceFromJson(json);
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

/// [ImplementationGuidePage] A set of rules of how a particular
@freezed

/// [ImplementationGuidePage] A set of rules of how a particular
@freezed
class ImplementationGuidePage
    with _$ImplementationGuidePage
    implements BackboneElement {
  /// [ImplementationGuidePage] A set of rules of how a particular
  const ImplementationGuidePage._();

  /// [ImplementationGuidePage] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [nameUrl] The source address for the page.
  ///
  /// [nameUrlElement] Extensions for nameUrl
  ///
  /// [nameReference] The source address for the page.
  ///
  /// [title] A short title used to represent this page in navigational
  ///  structures such as table of contents, bread crumbs, etc.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [generation] A code that indicates how the page is generated.
  ///
  /// [generationElement] Extensions for generation
  ///
  /// [page] Nested Pages/Sections under this page.
  const factory ImplementationGuidePage({
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

    /// [nameUrl] The source address for the page.
    FhirUrl? nameUrl,

    /// [nameUrlElement] Extensions for nameUrl
    @JsonKey(name: '_nameUrl') PrimitiveElement? nameUrlElement,

    /// [nameReference] The source address for the page.
    Reference? nameReference,

    /// [title] A short title used to represent this page in navigational
    ///  structures such as table of contents, bread crumbs, etc.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [generation] A code that indicates how the page is generated.
    FhirCode? generation,

    /// [generationElement] Extensions for generation
    @JsonKey(name: '_generation') PrimitiveElement? generationElement,

    /// [page] Nested Pages/Sections under this page.
    List<ImplementationGuidePage>? page,
  }) = _ImplementationGuidePage;

  @override
  String get fhirType => 'ImplementationGuidePage';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuidePage.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuidePage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuidePage.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuidePage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuidePage.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuidePageFromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuidePage], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuidePage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuidePageFromJson(json);
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

/// [ImplementationGuideParameter] A set of rules of how a particular
@freezed

/// [ImplementationGuideParameter] A set of rules of how a particular
@freezed
class ImplementationGuideParameter
    with _$ImplementationGuideParameter
    implements BackboneElement {
  /// [ImplementationGuideParameter] A set of rules of how a particular
  const ImplementationGuideParameter._();

  /// [ImplementationGuideParameter] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [code] apply | path-resource | path-pages | path-tx-cache |
  /// expansion-parameter | rule-broken-links | generate-xml | generate-json |
  ///  generate-turtle | html-template.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [value] Value for named type.
  ///
  /// [valueElement] Extensions for value
  const factory ImplementationGuideParameter({
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

    /// [code] apply | path-resource | path-pages | path-tx-cache |
    /// expansion-parameter | rule-broken-links | generate-xml | generate-json |
    ///  generate-turtle | html-template.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [value] Value for named type.
    String? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') PrimitiveElement? valueElement,
  }) = _ImplementationGuideParameter;

  @override
  String get fhirType => 'ImplementationGuideParameter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuideParameter.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuideParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuideParameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideParameter.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideParameterFromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuideParameter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuideParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuideParameterFromJson(json);
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

/// [ImplementationGuideTemplate] A set of rules of how a particular
@freezed

/// [ImplementationGuideTemplate] A set of rules of how a particular
@freezed
class ImplementationGuideTemplate
    with _$ImplementationGuideTemplate
    implements BackboneElement {
  /// [ImplementationGuideTemplate] A set of rules of how a particular
  const ImplementationGuideTemplate._();

  /// [ImplementationGuideTemplate] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [code] Type of template specified.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [source] The source location for the template.
  ///
  /// [sourceElement] Extensions for source
  ///
  /// [scope] The scope in which the template applies.
  ///
  /// [scopeElement] Extensions for scope
  const factory ImplementationGuideTemplate({
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

    /// [code] Type of template specified.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [source] The source location for the template.
    String? source,

    /// [sourceElement] Extensions for source
    @JsonKey(name: '_source') PrimitiveElement? sourceElement,

    /// [scope] The scope in which the template applies.
    String? scope,

    /// [scopeElement] Extensions for scope
    @JsonKey(name: '_scope') PrimitiveElement? scopeElement,
  }) = _ImplementationGuideTemplate;

  @override
  String get fhirType => 'ImplementationGuideTemplate';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuideTemplate.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideTemplate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuideTemplate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuideTemplate cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideTemplate.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideTemplateFromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuideTemplate], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuideTemplate.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuideTemplateFromJson(json);
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

/// [ImplementationGuideManifest] A set of rules of how a particular
@freezed

/// [ImplementationGuideManifest] A set of rules of how a particular
@freezed
class ImplementationGuideManifest
    with _$ImplementationGuideManifest
    implements BackboneElement {
  /// [ImplementationGuideManifest] A set of rules of how a particular
  const ImplementationGuideManifest._();

  /// [ImplementationGuideManifest] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [rendering] A pointer to official web page, PDF or other rendering of the
  ///  implementation guide.
  ///
  /// [renderingElement] Extensions for rendering
  ///
  /// [resource] A resource that is part of the implementation guide.
  /// Conformance resources (value set, structure definition, capability
  /// statements etc.) are obvious candidates for inclusion, but any kind of
  ///  resource can be included as an example resource.
  ///
  /// [page] Information about a page within the IG.
  ///
  /// [image] Indicates a relative path to an image that exists within the IG.
  ///
  /// [imageElement] Extensions for image
  ///
  /// [other] Indicates the relative path of an additional non-page, non-image
  /// file that is part of the IG - e.g. zip, jar and similar files that could
  ///  be the target of a hyperlink in a derived IG.
  ///
  /// [otherElement] Extensions for other
  const factory ImplementationGuideManifest({
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

    /// [rendering] A pointer to official web page, PDF or other rendering of the
    ///  implementation guide.
    FhirUrl? rendering,

    /// [renderingElement] Extensions for rendering
    @JsonKey(name: '_rendering') PrimitiveElement? renderingElement,

    /// [resource] A resource that is part of the implementation guide.
    /// Conformance resources (value set, structure definition, capability
    /// statements etc.) are obvious candidates for inclusion, but any kind of
    ///  resource can be included as an example resource.
    required List<ImplementationGuideResource1> resource,

    /// [page] Information about a page within the IG.
    List<ImplementationGuidePage1>? page,

    /// [image] Indicates a relative path to an image that exists within the IG.
    List<String>? image,

    /// [imageElement] Extensions for image
    @JsonKey(name: '_image') List<PrimitiveElement>? imageElement,

    /// [other] Indicates the relative path of an additional non-page, non-image
    /// file that is part of the IG - e.g. zip, jar and similar files that could
    ///  be the target of a hyperlink in a derived IG.
    List<String>? other,

    /// [otherElement] Extensions for other
    @JsonKey(name: '_other') List<PrimitiveElement>? otherElement,
  }) = _ImplementationGuideManifest;

  @override
  String get fhirType => 'ImplementationGuideManifest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuideManifest.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideManifest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuideManifest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuideManifest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideManifest.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideManifestFromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuideManifest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuideManifest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuideManifestFromJson(json);
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

/// [ImplementationGuideResource1] A set of rules of how a particular
@freezed

/// [ImplementationGuideResource1] A set of rules of how a particular
@freezed
class ImplementationGuideResource1
    with _$ImplementationGuideResource1
    implements BackboneElement {
  /// [ImplementationGuideResource1] A set of rules of how a particular
  const ImplementationGuideResource1._();

  /// [ImplementationGuideResource1] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [reference] Where this resource is found.
  ///
  /// [exampleBoolean] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  ///
  /// [exampleBooleanElement] Extensions for exampleBoolean
  ///
  /// [exampleCanonical] If true or a reference, indicates the resource is an
  /// example instance.  If a reference is present, indicates that the example
  ///  is an example of the specified profile.
  ///
  /// [exampleCanonicalElement] Extensions for exampleCanonical
  ///
  /// [relativePath] The relative path for primary page for this resource
  ///  within the IG.
  ///
  /// [relativePathElement] Extensions for relativePath
  const factory ImplementationGuideResource1({
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

    /// [reference] Where this resource is found.
    required Reference reference,

    /// [exampleBoolean] If true or a reference, indicates the resource is an
    /// example instance.  If a reference is present, indicates that the example
    ///  is an example of the specified profile.
    FhirBoolean? exampleBoolean,

    /// [exampleBooleanElement] Extensions for exampleBoolean
    @JsonKey(name: '_exampleBoolean') PrimitiveElement? exampleBooleanElement,

    /// [exampleCanonical] If true or a reference, indicates the resource is an
    /// example instance.  If a reference is present, indicates that the example
    ///  is an example of the specified profile.
    FhirCanonical? exampleCanonical,

    /// [exampleCanonicalElement] Extensions for exampleCanonical
    @JsonKey(name: '_exampleCanonical')
    PrimitiveElement? exampleCanonicalElement,

    /// [relativePath] The relative path for primary page for this resource
    ///  within the IG.
    FhirUrl? relativePath,

    /// [relativePathElement] Extensions for relativePath
    @JsonKey(name: '_relativePath') PrimitiveElement? relativePathElement,
  }) = _ImplementationGuideResource1;

  @override
  String get fhirType => 'ImplementationGuideResource1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuideResource1.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuideResource1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuideResource1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuideResource1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuideResource1.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuideResource1FromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuideResource1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuideResource1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuideResource1FromJson(json);
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

/// [ImplementationGuidePage1] A set of rules of how a particular
@freezed

/// [ImplementationGuidePage1] A set of rules of how a particular
@freezed
class ImplementationGuidePage1
    with _$ImplementationGuidePage1
    implements BackboneElement {
  /// [ImplementationGuidePage1] A set of rules of how a particular
  const ImplementationGuidePage1._();

  /// [ImplementationGuidePage1] A set of rules of how a particular
  /// interoperability or standards problem is solved - typically through the
  /// use of FHIR resources. This resource is used to gather all the parts of an
  /// implementation guide into a logical whole and to publish a computable
  ///  definition of all the parts.
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
  /// [name] Relative path to the page.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] Label for the page intended for human display.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [anchor] The name of an anchor available on the page.
  ///
  /// [anchorElement] Extensions for anchor
  const factory ImplementationGuidePage1({
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

    /// [name] Relative path to the page.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] Label for the page intended for human display.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [anchor] The name of an anchor available on the page.
    List<String>? anchor,

    /// [anchorElement] Extensions for anchor
    @JsonKey(name: '_anchor') List<PrimitiveElement>? anchorElement,
  }) = _ImplementationGuidePage1;

  @override
  String get fhirType => 'ImplementationGuidePage1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ImplementationGuidePage1.fromYaml(dynamic yaml) => yaml is String
      ? ImplementationGuidePage1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ImplementationGuidePage1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ImplementationGuidePage1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ImplementationGuidePage1.fromJson(Map<String, dynamic> json) =>
      _$ImplementationGuidePage1FromJson(json);

  /// Acts like a constructor, returns a [ImplementationGuidePage1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ImplementationGuidePage1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ImplementationGuidePage1FromJson(json);
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
