// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'document_reference.freezed.dart';
part 'document_reference.g.dart';

/// [DocumentReference] A reference to a document of any kind for any
@freezed
class DocumentReference with _$DocumentReference implements DomainResource {
  /// [DocumentReference] A reference to a document of any kind for any
  const DocumentReference._();

  /// [DocumentReference] A reference to a document of any kind for any
  /// purpose. Provides metadata about the document so that the document can be
  /// discovered and managed. The scope of a document is any seralized object
  /// with a mime-type, so includes formal patient centric documents (CDA),
  /// cliical notes, scanned paper, and non-patient specific documents like
  ///  policy text.
  ///
  /// [resourceType] This is a DocumentReference resource
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
  /// [masterIdentifier] Document identifier as assigned by the source of the
  /// document. This identifier is specific to this version of the document.
  /// This unique identifier may be used elsewhere to identify this version of
  ///  the document.
  ///
  /// [identifier] Other identifiers associated with the document, including
  ///  version independent identifiers.
  ///
  /// [status] The status of this document reference.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [docStatus] The status of the underlying document.
  ///
  /// [docStatusElement] Extensions for docStatus
  ///
  /// [type] Specifies the particular kind of document referenced  (e.g.
  /// History and Physical, Discharge Summary, Progress Note). This usually
  ///  equates to the purpose of making the document referenced.
  ///
  /// [category] A categorization for the type of document referenced - helps
  /// for indexing and searching. This may be implied by or derived from the
  ///  code specified in the DocumentReference.type.
  ///
  /// [subject] Who or what the document is about. The document can be about a
  /// person, (patient or healthcare practitioner), a device (e.g. a machine) or
  /// even a group of subjects (such as a document about a herd of farm animals,
  ///  or a set of patients that share a common exposure).
  ///
  /// [date] When the document reference was created.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [author] Identifies who is responsible for adding the information to the
  ///  document.
  ///
  /// [authenticator] Which person or organization authenticates that this
  ///  document is valid.
  ///
  /// [custodian] Identifies the organization or group who is responsible for
  ///  ongoing maintenance of and access to the document.
  ///
  /// [relatesTo] Relationships that this document has with other document
  ///  references that already exist.
  ///
  /// [description] Human-readable description of the source document.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [securityLabel] A set of Security-Tag codes specifying the level of
  /// privacy/security of the Document. Note that
  /// DocumentReference.meta.security contains the security labels of the
  /// "reference" to the document, while DocumentReference.securityLabel
  /// contains a snapshot of the security labels on the document the reference
  ///  refers to.
  ///
  /// [content] The document and format referenced. There may be multiple
  ///  content element repetitions, each with a different format.
  ///
  /// [context] The clinical context in which the document was prepared.
  const factory DocumentReference({
    @Default(R4ResourceType.DocumentReference)
    @JsonKey(unknownEnumValue: R4ResourceType.DocumentReference)

    /// [resourceType] This is a DocumentReference resource
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

    /// [masterIdentifier] Document identifier as assigned by the source of the
    /// document. This identifier is specific to this version of the document.
    /// This unique identifier may be used elsewhere to identify this version of
    ///  the document.
    Identifier? masterIdentifier,

    /// [identifier] Other identifiers associated with the document, including
    ///  version independent identifiers.
    List<Identifier>? identifier,

    /// [status] The status of this document reference.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [docStatus] The status of the underlying document.
    FhirCode? docStatus,

    /// [docStatusElement] Extensions for docStatus
    @JsonKey(name: '_docStatus') PrimitiveElement? docStatusElement,

    /// [type] Specifies the particular kind of document referenced  (e.g.
    /// History and Physical, Discharge Summary, Progress Note). This usually
    ///  equates to the purpose of making the document referenced.
    CodeableConcept? type,

    /// [category] A categorization for the type of document referenced - helps
    /// for indexing and searching. This may be implied by or derived from the
    ///  code specified in the DocumentReference.type.
    List<CodeableConcept>? category,

    /// [subject] Who or what the document is about. The document can be about a
    /// person, (patient or healthcare practitioner), a device (e.g. a machine) or
    /// even a group of subjects (such as a document about a herd of farm animals,
    ///  or a set of patients that share a common exposure).
    Reference? subject,

    /// [date] When the document reference was created.
    FhirInstant? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [author] Identifies who is responsible for adding the information to the
    ///  document.
    List<Reference>? author,

    /// [authenticator] Which person or organization authenticates that this
    ///  document is valid.
    Reference? authenticator,

    /// [custodian] Identifies the organization or group who is responsible for
    ///  ongoing maintenance of and access to the document.
    Reference? custodian,

    /// [relatesTo] Relationships that this document has with other document
    ///  references that already exist.
    List<DocumentReferenceRelatesTo>? relatesTo,

    /// [description] Human-readable description of the source document.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [securityLabel] A set of Security-Tag codes specifying the level of
    /// privacy/security of the Document. Note that
    /// DocumentReference.meta.security contains the security labels of the
    /// "reference" to the document, while DocumentReference.securityLabel
    /// contains a snapshot of the security labels on the document the reference
    ///  refers to.
    List<CodeableConcept>? securityLabel,

    /// [content] The document and format referenced. There may be multiple
    ///  content element repetitions, each with a different format.
    required List<DocumentReferenceContent> content,

    /// [context] The clinical context in which the document was prepared.
    DocumentReferenceContext? context,
  }) = _DocumentReference;

  @override
  String get fhirType => 'DocumentReference';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DocumentReference.fromYaml(dynamic yaml) => yaml is String
      ? DocumentReference.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DocumentReference.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DocumentReference cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DocumentReference.fromJson(Map<String, dynamic> json) =>
      _$DocumentReferenceFromJson(json);

  /// Acts like a constructor, returns a [DocumentReference], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DocumentReference.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DocumentReferenceFromJson(json);
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

/// [DocumentReferenceRelatesTo] A reference to a document of any kind for
@freezed

/// [DocumentReferenceRelatesTo] A reference to a document of any kind for
@freezed
class DocumentReferenceRelatesTo
    with _$DocumentReferenceRelatesTo
    implements BackboneElement {
  /// [DocumentReferenceRelatesTo] A reference to a document of any kind for
  const DocumentReferenceRelatesTo._();

  /// [DocumentReferenceRelatesTo] A reference to a document of any kind for
  /// any purpose. Provides metadata about the document so that the document can
  /// be discovered and managed. The scope of a document is any seralized object
  /// with a mime-type, so includes formal patient centric documents (CDA),
  /// cliical notes, scanned paper, and non-patient specific documents like
  ///  policy text.
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
  /// [code] The type of relationship that this document has with anther
  ///  document.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [target] The target document of this relationship.
  const factory DocumentReferenceRelatesTo({
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

    /// [code] The type of relationship that this document has with anther
    ///  document.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [target] The target document of this relationship.
    required Reference target,
  }) = _DocumentReferenceRelatesTo;

  @override
  String get fhirType => 'DocumentReferenceRelatesTo';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DocumentReferenceRelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? DocumentReferenceRelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DocumentReferenceRelatesTo.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DocumentReferenceRelatesTo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceRelatesTo.fromJson(Map<String, dynamic> json) =>
      _$DocumentReferenceRelatesToFromJson(json);

  /// Acts like a constructor, returns a [DocumentReferenceRelatesTo], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DocumentReferenceRelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DocumentReferenceRelatesToFromJson(json);
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

/// [DocumentReferenceContent] A reference to a document of any kind for any
@freezed

/// [DocumentReferenceContent] A reference to a document of any kind for any
@freezed
class DocumentReferenceContent
    with _$DocumentReferenceContent
    implements BackboneElement {
  /// [DocumentReferenceContent] A reference to a document of any kind for any
  const DocumentReferenceContent._();

  /// [DocumentReferenceContent] A reference to a document of any kind for any
  /// purpose. Provides metadata about the document so that the document can be
  /// discovered and managed. The scope of a document is any seralized object
  /// with a mime-type, so includes formal patient centric documents (CDA),
  /// cliical notes, scanned paper, and non-patient specific documents like
  ///  policy text.
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
  /// [attachment] The document or URL of the document along with critical
  ///  metadata to prove content has integrity.
  ///
  /// [format] An identifier of the document encoding, structure, and template
  /// that the document conforms to beyond the base format indicated in the
  ///  mimeType.
  const factory DocumentReferenceContent({
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

    /// [attachment] The document or URL of the document along with critical
    ///  metadata to prove content has integrity.
    required Attachment attachment,

    /// [format] An identifier of the document encoding, structure, and template
    /// that the document conforms to beyond the base format indicated in the
    ///  mimeType.
    Coding? format,
  }) = _DocumentReferenceContent;

  @override
  String get fhirType => 'DocumentReferenceContent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DocumentReferenceContent.fromYaml(dynamic yaml) => yaml is String
      ? DocumentReferenceContent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DocumentReferenceContent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DocumentReferenceContent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceContent.fromJson(Map<String, dynamic> json) =>
      _$DocumentReferenceContentFromJson(json);

  /// Acts like a constructor, returns a [DocumentReferenceContent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DocumentReferenceContent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DocumentReferenceContentFromJson(json);
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

/// [DocumentReferenceContext] A reference to a document of any kind for any
@freezed

/// [DocumentReferenceContext] A reference to a document of any kind for any
@freezed
class DocumentReferenceContext
    with _$DocumentReferenceContext
    implements BackboneElement {
  /// [DocumentReferenceContext] A reference to a document of any kind for any
  const DocumentReferenceContext._();

  /// [DocumentReferenceContext] A reference to a document of any kind for any
  /// purpose. Provides metadata about the document so that the document can be
  /// discovered and managed. The scope of a document is any seralized object
  /// with a mime-type, so includes formal patient centric documents (CDA),
  /// cliical notes, scanned paper, and non-patient specific documents like
  ///  policy text.
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
  /// [encounter] Describes the clinical encounter or type of care that the
  ///  document content is associated with.
  ///
  /// [event] This list of codes represents the main clinical acts, such as a
  /// colonoscopy or an appendectomy, being documented. In some cases, the event
  /// is inherent in the type Code, such as a "History and Physical Report" in
  /// which the procedure being documented is necessarily a "History and
  ///  Physical" act.
  ///
  /// [period] The time period over which the service that is described by the
  ///  document was provided.
  ///
  /// [facilityType] The kind of facility where the patient was seen.
  ///
  /// [practiceSetting] This property may convey specifics about the practice
  /// setting where the content was created, often reflecting the clinical
  ///  specialty.
  ///
  /// [sourcePatientInfo] The Patient Information as known when the document
  ///  was published. May be a reference to a version specific, or contained.
  ///
  /// [related] Related identifiers or resources associated with the
  ///  DocumentReference.
  const factory DocumentReferenceContext({
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

    /// [encounter] Describes the clinical encounter or type of care that the
    ///  document content is associated with.
    List<Reference>? encounter,

    /// [event] This list of codes represents the main clinical acts, such as a
    /// colonoscopy or an appendectomy, being documented. In some cases, the event
    /// is inherent in the type Code, such as a "History and Physical Report" in
    /// which the procedure being documented is necessarily a "History and
    ///  Physical" act.
    List<CodeableConcept>? event,

    /// [period] The time period over which the service that is described by the
    ///  document was provided.
    Period? period,

    /// [facilityType] The kind of facility where the patient was seen.
    CodeableConcept? facilityType,

    /// [practiceSetting] This property may convey specifics about the practice
    /// setting where the content was created, often reflecting the clinical
    ///  specialty.
    CodeableConcept? practiceSetting,

    /// [sourcePatientInfo] The Patient Information as known when the document
    ///  was published. May be a reference to a version specific, or contained.
    Reference? sourcePatientInfo,

    /// [related] Related identifiers or resources associated with the
    ///  DocumentReference.
    List<Reference>? related,
  }) = _DocumentReferenceContext;

  @override
  String get fhirType => 'DocumentReferenceContext';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory DocumentReferenceContext.fromYaml(dynamic yaml) => yaml is String
      ? DocumentReferenceContext.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DocumentReferenceContext.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DocumentReferenceContext cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory DocumentReferenceContext.fromJson(Map<String, dynamic> json) =>
      _$DocumentReferenceContextFromJson(json);

  /// Acts like a constructor, returns a [DocumentReferenceContext], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory DocumentReferenceContext.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DocumentReferenceContextFromJson(json);
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
