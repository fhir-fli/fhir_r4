// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'document_manifest.freezed.dart';
part 'document_manifest.g.dart';

/// [DocumentManifest] A collection of documents compiled for a purpose
@freezed
class DocumentManifest extends DomainResource with _$DocumentManifest {
  /// [DocumentManifest] A collection of documents compiled for a purpose
  DocumentManifest._();

  /// [DocumentManifest] A collection of documents compiled for a purpose
  ///  together with metadata that applies to the collection.
  ///
  /// [resourceType] This is a DocumentManifest resource
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
  /// [masterIdentifier] A single identifier that uniquely identifies this
  ///  manifest. Principally used to refer to the manifest in non-FHIR contexts.
  ///
  /// [identifier] Other identifiers associated with the document manifest,
  ///  including version independent  identifiers.
  ///
  /// [status] The status of this document manifest.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [type] The code specifying the type of clinical activity that resulted in
  ///  placing the associated content into the DocumentManifest.
  ///
  /// [subject] Who or what the set of documents is about. The documents can be
  /// about a person, (patient or healthcare practitioner), a device (i.e.
  /// machine) or even a group of subjects (such as a document about a herd of
  /// farm animals, or a set of patients that share a common exposure). If the
  /// documents cross more than one subject, then more than one subject is
  ///  allowed here (unusual use case).
  ///
  /// [created] When the document manifest was created for submission to the
  /// server (not necessarily the same thing as the actual resource last
  ///  modified time, since it may be modified, replicated, etc.).
  ///
  /// [createdElement] Extensions for created
  ///
  /// [author] Identifies who is the author of the manifest. Manifest author is
  ///  not necessarly the author of the references included.
  ///
  /// [recipient] A patient, practitioner, or organization for which this set
  ///  of documents is intended.
  ///
  /// [source] Identifies the source system, application, or software that
  ///  produced the document manifest.
  ///
  /// [sourceElement] Extensions for source
  ///
  /// [description] Human-readable description of the source document. This is
  ///  sometimes known as the "title".
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [content] The list of Resources that consist of the parts of this
  ///  manifest.
  ///
  /// [related] Related identifiers or resources associated with the
  ///  DocumentManifest.
  factory DocumentManifest({
    @Default(R4ResourceType.DocumentManifest)
    @JsonKey(unknownEnumValue: R4ResourceType.DocumentManifest)

    /// [resourceType] This is a DocumentManifest resource
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

    /// [masterIdentifier] A single identifier that uniquely identifies this
    ///  manifest. Principally used to refer to the manifest in non-FHIR contexts.
    Identifier? masterIdentifier,

    /// [identifier] Other identifiers associated with the document manifest,
    ///  including version independent  identifiers.
    List<Identifier>? identifier,

    /// [status] The status of this document manifest.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [type] The code specifying the type of clinical activity that resulted in
    ///  placing the associated content into the DocumentManifest.
    CodeableConcept? type,

    /// [subject] Who or what the set of documents is about. The documents can be
    /// about a person, (patient or healthcare practitioner), a device (i.e.
    /// machine) or even a group of subjects (such as a document about a herd of
    /// farm animals, or a set of patients that share a common exposure). If the
    /// documents cross more than one subject, then more than one subject is
    ///  allowed here (unusual use case).
    Reference? subject,

    /// [created] When the document manifest was created for submission to the
    /// server (not necessarily the same thing as the actual resource last
    ///  modified time, since it may be modified, replicated, etc.).
    FhirDateTime? created,

    /// [createdElement] Extensions for created
    @JsonKey(name: '_created') PrimitiveElement? createdElement,

    /// [author] Identifies who is the author of the manifest. Manifest author is
    ///  not necessarly the author of the references included.
    List<Reference>? author,

    /// [recipient] A patient, practitioner, or organization for which this set
    ///  of documents is intended.
    List<Reference>? recipient,

    /// [source] Identifies the source system, application, or software that
    ///  produced the document manifest.
    FhirUri? source,

    /// [sourceElement] Extensions for source
    @JsonKey(name: '_source') PrimitiveElement? sourceElement,

    /// [description] Human-readable description of the source document. This is
    ///  sometimes known as the "title".
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [content] The list of Resources that consist of the parts of this
    ///  manifest.
    required List<Reference> content,

    /// [related] Related identifiers or resources associated with the
    ///  DocumentManifest.
    List<DocumentManifestRelated>? related,
  }) = _DocumentManifest;

  @override
  String get fhirType => 'DocumentManifest';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DocumentManifest.fromYaml(dynamic yaml) => yaml is String
      ? DocumentManifest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DocumentManifest.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DocumentManifest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DocumentManifest.fromJson(Map<String, dynamic> json) =>
      _$DocumentManifestFromJson(json);

  /// Acts like a constructor, returns a [DocumentManifest], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DocumentManifest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DocumentManifestFromJson(json);
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

/// [DocumentManifestRelated] A collection of documents compiled for a
@freezed

/// [DocumentManifestRelated] A collection of documents compiled for a
@freezed
class DocumentManifestRelated extends BackboneElement
    with _$DocumentManifestRelated {
  /// [DocumentManifestRelated] A collection of documents compiled for a
  DocumentManifestRelated._();

  /// [DocumentManifestRelated] A collection of documents compiled for a
  ///  purpose together with metadata that applies to the collection.
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
  /// [identifier] Related identifier to this DocumentManifest.  For example,
  ///  Order numbers, accession numbers, XDW workflow numbers.
  ///
  /// [ref] Related Resource to this DocumentManifest. For example, Order,
  ///  ServiceRequest,  Procedure, EligibilityRequest, etc.
  factory DocumentManifestRelated({
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

    /// [identifier] Related identifier to this DocumentManifest.  For example,
    ///  Order numbers, accession numbers, XDW workflow numbers.
    Identifier? identifier,

    /// [ref] Related Resource to this DocumentManifest. For example, Order,
    ///  ServiceRequest,  Procedure, EligibilityRequest, etc.
    Reference? ref,
  }) = _DocumentManifestRelated;

  @override
  String get fhirType => 'DocumentManifestRelated';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DocumentManifestRelated.fromYaml(dynamic yaml) => yaml is String
      ? DocumentManifestRelated.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DocumentManifestRelated.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DocumentManifestRelated cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DocumentManifestRelated.fromJson(Map<String, dynamic> json) =>
      _$DocumentManifestRelatedFromJson(json);

  /// Acts like a constructor, returns a [DocumentManifestRelated], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DocumentManifestRelated.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DocumentManifestRelatedFromJson(json);
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
